docker-mosquitto
================

Docker image for mosquitto - superseded by [eclipse-mosquitto](https://hub.docker.com/_/eclipse-mosquitto)


## Project Status

The puprose of this Container was to provide a configurable and decent mosquitto broker container. The Eclipse Mosquitto Project now provides
a very similar Container - See [Other Containers](#other-containers) below.
This container still uses Debian/Jessie as a base container which is kinda old.




## Build

	docker build . --build-arg USER=iii -t --build-arg PASSWORD=yourpassword "iii/mosquitto"

## Run 
	docker run -p 1887:1887/tcp -p 8087:8087/tcp --name yourname -v C:\\mosquitto\\data:/mosquitto/data -v C:\\mosquitto\\log:/mosquitto/log -d iii/mosquitto
## Contact

Contact: Thomas Kerpe [toke@toke.de](mailto:toke@toke.de)

OpenPGP fingerprint: `B5AD 7FCB 270D A762 46D2  A8F2 B0E6 5607 ABE5 7238`
