#!/bin/bash
python3 -c "import resource,subprocess,sys; r=subprocess.run(sys.argv[1:]); print('peak', resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss, 'KB', file=sys.stderr); sys.exit(r.returncode)" "$@"
