cd /tmp

#try to remove the repo if it already exists

rm -rf Mashettiwar; true

git clone https://github.com/mashettiwar/Mashettiwar.git

cd Mashettiwar

npm install

node app