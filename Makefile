UNAME := $(shell uname)

default: clean main

main:
	 python3 -m nuitka --full-compat  sys-path.py -o sys-path.bin  | tee nuitka-build.out

docker:
	docker build -t sys-path:latest .

clean:
	rm -rf *.o *.c *.html *.so *.pyc __pycache__ *.bin
	rm -rf temp/
	rm -rf *.build
	rm -f *.out

run:
	docker run --rm -it sys-path:latest
