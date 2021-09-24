docker-mosquitto
================

A docker image extended from Eclipse-mosquitto which can add username and password as build args and create a pwd file for authentication.




## Build

	docker build . --build-arg USER=username -t --build-arg PASSWORD=yourpassword "edward/mosquitto"

## Run 
	docker run -p 1887:1887/tcp -p 8087:8087/tcp --name yourname -v C:\\mosquitto\\data:/mosquitto/data -v C:\\mosquitto\\log:/mosquitto/log -d edward/mosquitto
## Thanks for

[eclipse](https://github.com/eclipse/mosquitto)
