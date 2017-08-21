
	$ docker build -f Dockerfile.alpine -t cmmc-simplewebserver .
	$ docker run --rm -it -p80:80  -v $(pwd):/home/www cmmc-simplewebserver
