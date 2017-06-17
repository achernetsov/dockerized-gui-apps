# build: docker build -t alsa .
# usage: ./playsound.sh <sound file name>
# example:  ./playsound.sh meow.wav (meow.wav should be present in ./resources folder)
docker run --rm --device /dev/snd -v $(pwd)/resources:/sounds alsa /sounds/$1