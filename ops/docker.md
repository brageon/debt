<h1 align="center">Container</h1>
Docker Hub Tokens under Security Settings. File install.sh is shown after running binary file that will create Desktop launcher. However the launcher will not work inside the container. Command -vmargs -Xmx1024M is used instead. It could be of missing startup script. Compose is central management of configurations instead of redo everything in Docker CLI. Chromium is required by AnyLogic. X11 is required by Expect to automate licensing agreement. You cannot be interactive inside.

```
chmod +x *.bin
wget --continue "https://files.anylogic.com/libwebkit/lib*"

curl -fst htps://download.docker.com/linux/debian/gpg 1 apt-key add -
echo 'deb (arch=amd64) https://download.docker.com/inux/debian buster stable'>/etc/apt/sources:list.d/docker.list
apt-get update && apt-get upgrade
apt-get remove docker docker-engine docker io && apt-get install docker-ce
docker run hello-world
systemct start/status docker

echo '{"auths": {"https://index.docker.io/v1/": {"auth": "dckr_pat_Aj5gB1_6ue_tVimBPPO"}}, "http": null}' > ~/.docker/config.json
docker login
docker build -t anylogic-env .
docker volume create my-anylogic
docker run -it --rm --name my_anylogic_ecr -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v my-anylogic:/opt/data:rw anylogic-env

Without keyboard forwarding:
docker run -it --name my_anylogic_ecr anylogic-env
docker run docker.io/library/anylogic-env 

Troubleshoot:
docker start/attach 1c2ffb741be5 && docker ps
docker logs --details <ID_of_1c2ffb741be5>
docker stop/rm $(docker ps -a -q)

Optimize (optionally):
docker-compose up

xdotool getactivewindow && xdotool windowactivate <id>
xdotool search --name AnyLogic windowactivate --sync 
echo $XDG_SESSION_TYPE && xdotool type "yes" 

pip install https://github.com/robotframework/robotframework/archive/refs/tags/v6.0.2.zip
robotframework-excellib
```
Wayland C API: For low-level interaction with the Wayland compositor. gnome-tweaks or gsettings. 
Wayland Clients: High-level libraries that provide abstractions over the Wayland protocol (e.g., Weston, wlroots).
Input Method Frameworks: Libraries like libinput or libxkbcommon for handling input events.