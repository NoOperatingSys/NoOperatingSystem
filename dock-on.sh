if [ -z "$pwd" ]
then
    sudo docker run --rm -it -v "$PWD":/root/env noos-buildenv
else
    sudo docker run --rm -it -v "$pwd":/root/env noos-buildenv
fi