#Run this code in RPi or server
#Reference: http://petrkout.com/low-latency-0-4-s-video-streaming-from-raspberry-pi-mjpeg-streamer-opencv/
#
#Log into your RPi and go to /usr/src/ and create a directory mjpeg-streamer there:
#cd /usr/src
#sudo mkdir mjpg-streamer
#sudo chown `whoami`:users mjpg-streamer
#cd mjpg-streamer
#
#Now clone the mjpeg-streamer from the github repository there:
#git clone https://github.com/jacksonliam/mjpg-streamer.git .
#
#install some library dependencies: apt-get install libv4l-dev libjpeg8-dev imagemagick build-essential cmake subversion 
#cd mjpg-streamer-experimental
#make
#
#
#Launchin the mjpg-streamer directory
#export LD_LIBRARY_PATH=.
#./mjpg_streamer -o "output_http.so -w ./www" -i "input_raspicam.so -x 640 -y 480 -fps 20 -ex night"
#


export LD_LIBRARY_PATH=.
./mjpg_streamer -o "output_http.so -w ./www" -i "input_raspicam.so -x 640 -y 480 -fps 20 -ex night"
