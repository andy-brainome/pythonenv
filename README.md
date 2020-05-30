Automated test harness to compare builds of nuitka binaries are portable across platforms.

TL;DR:
nuitka drops the site-packages element from a barebones python installation.

Below are the native and nuitka sys.path values running on a python:3.6.10-slim container.

* native system path:

['/sys-path', '/usr/local/lib/python36.zip', '/usr/local/lib/python3.6', '/usr/local/lib/python3.6/lib-dynload', '/usr/local/lib/python3.6/site-packages']

* nuitka system path:

['/sys-path', '/usr/local/lib/python36.zip', '/usr/local/lib/python3.6', '/usr/local/lib/python3.6/lib-dynload']

# 