# usage: ./playsound.sh <sound file name>
# example:  ./playsound.sh meow.wav (meow.wav should be present in ./resousoundrces folder)
docker run --rm --device /dev/snd -v $(pwd)/sound:/sound achernetzov/nvidia aplay ./sound/$1