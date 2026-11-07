# A small HTTP server for std/http's tests: binds 127.0.0.1 on a free port, writes the port to the file named by its
# argument, and answers the requests the tests make. It stops on GET /quit, or after 60 seconds whatever happens.
import http.server, sys, threading

class Handler(http.server.BaseHTTPRequestHandler):
    protocol_version = "HTTP/1.1"

    def log_message(self, *args):
        pass

    def reply(self, status, body, headers=()):
        body = body if isinstance(body, bytes) else body.encode()
        self.send_response(status)
        for name, value in headers:
            self.send_header(name, value)
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        if self.command != "HEAD":
            self.wfile.write(body)

    def answer(self):
        length = int(self.headers.get("Content-Length") or 0)
        body = self.rfile.read(length) if length else b""
        path = self.path
        if path == "/hello":
            self.reply(200, "hello", [("Content-Type", "text/plain"), ("X-Test", "a"), ("X-Test", "b")])
        elif path == "/echo":
            self.reply(200, body, [("X-Method", self.command), ("X-Seen", self.headers.get("X-Ask", "-")),
                                   ("X-Type", self.headers.get("Content-Type", "-"))])
        elif path.startswith("/status/"):
            self.reply(int(path[8:]), "status " + path[8:])
        elif path == "/redirect":
            self.reply(302, "", [("Location", "/hello")])
        elif path == "/json":
            self.reply(200, '{"a": [1, 2.5, "x"], "ok": true}', [("Content-Type", "application/json")])
        elif path == "/slow":
            import time
            time.sleep(3)
            self.reply(200, "late")
        elif path == "/quit":
            self.reply(200, "bye")
            threading.Thread(target=self.server.shutdown).start()
        else:
            self.reply(404, "no " + path)

    do_GET = do_POST = do_PUT = do_DELETE = do_HEAD = do_PATCH = answer

server = http.server.ThreadingHTTPServer(("127.0.0.1", 0), Handler)
timer = threading.Timer(60, server.shutdown)
timer.daemon = True
timer.start()
with open(sys.argv[1] + ".tmp", "w") as f:
    f.write(str(server.server_address[1]))
import os
os.rename(sys.argv[1] + ".tmp", sys.argv[1])
server.serve_forever()
