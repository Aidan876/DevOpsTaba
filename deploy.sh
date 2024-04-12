sudo apt update && sudo apt install nodejs npm

#install pm2
sudo npm install -g pm2
#stop instance
pm2 stop DevOpsTaba
#change directory
cd DevOpsTaba/
#install app
npm install
#start app
pm2 start ./bin/www --name DevOpsTaba