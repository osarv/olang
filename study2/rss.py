import resource, subprocess, sys, time
t=time.time()
subprocess.run(sys.argv[1:], stdout=subprocess.DEVNULL)
print("wall %.3fs, peak RSS %.1f MB" % (time.time()-t, resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss/1024))
