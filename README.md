# Brikkit Docker

Run Brikkit as a Docker image. This works both on Windows and Linux. You need to have virtualization enabled in your BIOS.

## Windows Instructions

Install Docker: if you have Windows 10 Pro, you can install Docker Desktop, otherwise, if you have Windows 10 Home, you will need to use Docker Toolbox. Ensure Docker is running properly by running `docker info` in a command line window. You should get output similar to the following:

```
Client:
 Debug Mode: false

Server:
 Containers: 12
  Running: 1
  Paused: 0
  Stopped: 11
 Images: 15
 Server Version: 19.03.1
 Storage Driver: overlay2
  Backing Filesystem: extfs
  Supports d_type: true
  Native Overlay Diff: true
 Logging Driver: json-file
 Cgroup Driver: cgroupfs
 Plugins:
  Volume: local
  Network: bridge host ipvlan macvlan null overlay
  Log: awslogs fluentd gcplogs gelf journald json-file local logentries splunk syslog
 Swarm: inactive
 Runtimes: runc
 Default Runtime: runc
 Init Binary: docker-init
 containerd version: 894b81a4b802e4eb2a91d1ce216b8817763c29fb
 runc version: 425e105d5a03fabd737a126ad93d62a9eeede87f
 init version: fec3683
 Security Options:
  seccomp
   Profile: default
 Kernel Version: 4.9.184-linuxkit
 Operating System: Docker Desktop
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 1.952GiB
 Name: docker-desktop
 ID: XK3O:ZJKX:KXG2:ANOA:IC4O:MYMX:PXYS:C5ZK:YPPL:ZK2K:7UVA:GM7Z
 Docker Root Dir: /var/lib/docker
 Debug Mode: true
  File Descriptors: 36
  Goroutines: 53
  System Time: 2019-09-13T02:07:23.0369049Z
  EventsListeners: 1
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false
 Product License: Community Engine
```

If you are running Docker Toolbox, open VirtualBox, open the Settings of the default VM, go to Networking, then Advanced, then Port Forward, add the entry below, reboot your computer and make sure Docker is running as explained above.

* Name: brickadia
* Protocol: UDP
* Host IP: 0.0.0.0
* Host Port: 7777
* Guest IP:
* Guest Port: 7777

After this, download this repository and extract it somewhere. Edit brikkit.conf with your username and password. Finally, double-click build.bat and run.bat if you are using Docker Desktop, or the _toolbox versions if you are running Docker Toolbox. Your server should now be up and running and showing in the server list. Assuming you forwarded your ports, you should be able to connect (if you are on Docker Toolbox you will need to forward your ports both in VirtualBox, as explained above, and your router).

## Linux Instructions

Install Docker and confirm Docker is working properly.

Clone this repository. Then run `./build.sh` to build the docker image, and then `./run.sh` to run it.
