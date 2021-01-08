xhost +
docker build -t thunderbird .
docker run \
    -d \
    --name thunderbird_"$(date +%s)" \
    -v /home/$USER/.thunderbird:/root/.thunderbird \
    -v /etc/localtime:/etc/localtime:ro \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix"$DISPLAY" \
    thunderbird
