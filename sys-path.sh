#!/bin/bash
python3 -m pip install --upgrade pip
if [ -f requirements.txt ]; then pip install -r requirements.txt; fi

SYSTEMPATH=`python3 sys-path.py`
NUITKASYSTEMPATH=`./sys-path.bin`
echo "system path:$SYSTEMPATH"
echo "nuitka system path:$NUITKASYSTEMPATH"
echo "::set-output name=systempath::$SYSTEMPATH"
echo "::set-output name=nuitkasystempath::$NUITKASYSTEMPATH"