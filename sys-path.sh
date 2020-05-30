#!/bin/bash
SYSTEMPATH=`python3 sys-path.py`
NUITKASYSTEMPATH=`./sys-path.bin`
python3 -m nuitka --version
echo "native system path: $SYSTEMPATH"
echo "nuitka system path: $NUITKASYSTEMPATH"
echo "standalone path:" `./syspath.dist/sys-path`
echo "::set-output name=systempath::$SYSTEMPATH"
echo "::set-output name=nuitkasystempath::$NUITKASYSTEMPATH"