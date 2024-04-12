#Download and install latest version of node to resolve npm errors.
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -

sudo apt-get install nodejs -y

#install pm2
sudo npm install -g pm2
#stop instance
pm2 stop DevOpsTaba
#change directory
cd DevOpsTaba/
#install app
npm install
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt
#start app
pm2 start ./bin/www --name DevOpsTaba