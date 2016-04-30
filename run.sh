sudo apt-get install -y
sudo dpkg --add-architecture i386 -y
sudo apt-get update -y
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 -y
./instrumentation-test.sh