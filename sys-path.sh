#!/bin/bash
SYSTEMPATH=`python3 sys-path.py`
NUITKASYSTEMPATH=`./sys-path.bin`
echo "native system path: $SYSTEMPATH"
echo "nuitka system path: $NUITKASYSTEMPATH"
echo "::set-output name=systempath::$SYSTEMPATH"
echo "::set-output name=nuitkasystempath::$NUITKASYSTEMPATH"