Automated test harness to compare builds of nuitka binaries are portable across platforms.

#### TL;DR:
nuitka drops the site-packages element from a barebones python installation.

Below are the native and nuitka sys.path values running on a python:3.6.10-slim container.

* native system path:

['/sys-path-docker', '/usr/local/lib/python36.zip', '/usr/local/lib/python3.6', '/usr/local/lib/python3.6/lib-dynload', '/usr/local/lib/python3.6/site-packages']

* nuitka system path:

['/sys-path-docker', '/usr/local/lib/python36.zip', '/usr/local/lib/python3.6', '/usr/local/lib/python3.6/lib-dynload']

look for "REPRODUCE ERROR HERE" within the github action

#### Method
1. using github actions
2. build binary sys-path.bin 
3. create container with copied binary
4. compare native and nuitka sys.path on container
5. capture all output and archive within github actions

I am using the same 3.6.10 version of Python on both the build machine and the container.
