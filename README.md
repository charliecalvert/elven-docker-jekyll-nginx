# Dockerized Jekyll And Nginx
 - A template to run a Jekyll site served on Nginx using Docker build. 

The original owner, hunyboy, is [Joel Capillo](https://github.com/hunyoboy).

### Creating A New Jekyll Blog

1. Ensure **Docker** is installed on your computer/server. 

   * https://docs.docker.com/docker-for-mac/install/
   * https://docs.docker.com/docker-for-windows/install/ 
   * https://docs.docker.com/install/linux/docker-ce/ubuntu/

2. Open a terminal and `cd` to the root of this folder.
3. Execute:

    docker-compose -f docker-compose-create.yml run jekyllcreate jekyll new web
    
The above is also in **elf-compose.sh** The command will initiate a new Jekyll site inside the folder named "web".

4. Build and run the new shiny Jekyll site. Execute `docker-compose -f docker-compose-dev.yml up --build; docker-compose -f docker-compose-dev.yml down`
   Once the build is complete, site is now accessible at `localhost` and served thru Nginx container. Any changes on your files are being watched.
   
### Running An Existing Jekyll Blog
1. Ensure **Docker** is installed on your computer/server. 
   * https://docs.docker.com/docker-for-mac/install/
   * https://docs.docker.com/docker-for-windows/install/ 
   * https://docs.docker.com/install/linux/docker-ce/ubuntu/
2. Inside the root of this folder, copy the folder ( including all existing files ) of your old Jekyll blog and rename it to `web`. ( Note: You can name the folder to your liking but you'll need to re-adjust the commands on **yaml** files ).
3. If you need some specific gems, you can take a look and modify the `Dockerfile`. Also, you might want to adjust the paths on your existing `_config.yml` file.
4. Open a terminal and `cd` to the root of this folder.
5. Execute `docker-compose -f docker-compose-dev.yml up --build; docker-compose -f docker-compose-dev.yml down`. The command will build your old Jekyll site and serve thru nginx container. It should be now available at `localhost` and all changes on your files are being watched.


### Deployment To Production
* `ssh` to your host server and follow one of the directions above ( depending on your needs ).
* Git clone this repo on your host server. 
* To test your installation, execute `docker-compose -f docker-compose-prod.yml up --build; docker-compose -f docker-compose-prod.yml down`
* Once everything is good and ready to go live - `docker-compose -f docker-compose-prod.yml up --build --detach`

## jekyll set up

```
#! /bin/bash
  
sudo apt-get install ruby-full build-essential zlib1g-dev
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
gem install jekyll bundler
mkdir Source && cd Source/
jekyll new myblog
cd myblog/
bundle add webrick
bundle exec jekyll build
cd _site
StartPythonWebServer
```

## Bonus History

``` bash
    1  curl https://s3.amazonaws.com/bucket01.elvenware.com/JsObjects/get-jsobjects
    2  sudo snap install curl  # version 8.0.1
    3  curl https://s3.amazonaws.com/bucket01.elvenware.com/JsObjects/get-jsobjects
    4  ll
    5  curl https://s3.amazonaws.com/bucket01.elvenware.com/JsObjects/get-jsobjects > getj
    6  ll
    7  chmod +x getj
    8  ./getj 
    9  sudo apt get git
   10  sudo apt i git
   11  man apt
   12  sudo apt install git
   13  ./getj 
   14  source ~/.bashrc
   15  gd
   16  curl https://s3.amazonaws.com/bucket01.elvenware.com/JsObjects/get-repos > get-repos
   17  chmod +x get-repos 
   18  ./get-repos 
   19  exit
   20  curl https://s3.amazonaws.com/bucket01.elvenware.com/JsObjects/ssh-setup > ssh-setup
   21  chmod +x ssh-setup
   22  ./ssh-setup
   23  ll
   24  cat ./ssh-setup 
   25  cd .ssh/
   26  unzip ~/Downloads/config.zip .
   27  unzip ~/Downloads/config.zip 
   28  unzip config.zip 
   29  unzip aws-config.zip 
   30  unzip Home-2019-10-27.zip 
   31  ll
   32  chmod 600 Home-2019-10-27
   33  unzip ~/Downloads/AwsKeys.zip 
   34  chmod 600 ElfWest.pem 
   35  ll
   36  rm *.zip
   37  rm Prog272_AtSchool.pem 
   38  rm aws-config.*
   39  ll
   40  cat ~/ssh-setup 
   41  cat ~/.ssh/Home-2019-10-27.pub >> ~/.ssh/authorized_keys
   42  cat authorized_keys 
   43  history
   44  curl https://drive.google.com/file/d/0B25UTAlOfPRGaTExcGRmajc0S0k/view?usp=share_link&resourcekey=0-7ntcjR8P506iZ60XJ7Ko-g > foo
   45  ll
   46  rm foo 
   47  ll
   48  mkdir tmp
   49  cd tmp/
   50  unzip ~/Downloads/AwsConfigAll.zip 
   51  mv Home-2023-04-18* ../.
   52  cd1
   53  ll
   54  rm -r tmp/
   55  cp Home-2023-04-18.pub >> authorized_keys 
   56  cat ~/ssh-setup 
   57  cat Home-2023-04-18.pub >> authorized_keys 
   58  cat authorized_keys 
   59  exit
   60  ll
   61  gd
   62  ll
   63  cat get-repos 
   64  ./get-repos 
   65  ll
   66  cd elven-web/
   67  code .
   68  sudo snap install code
   69  sudo apt install ~/Downloads/code_1.77.3-1681292746_amd64.deb 
   70  df -h
   71  sudo chown -Rv _apt:root /var/cache/apt/archives/partial/
   72  sudo chmod -Rv 700 /var/cache/apt/archives/partial/
   73  sudo apt install ~/Downloads/code_1.77.3-1681292746_amd64.deb 
   74  sudo apt autoremove 
   75  exit
   76  df -h
   77  sudo cfdisk
   78  parted
   79  sudo parted
   80  ls /dev/ubuntu-vg/ubuntu-lv
   81  sudo ls /dev
   82  gparted
   83  sudo apt install gparted
   84  gparted
   85  exit
   86  df -h
   87  history
   88  git clone git@github.com:charliecalvert/charliecalvert.github.io.git
   89  gossh
   90  ssh-keygen -p -f Home-2019-10-27
   91  ll
   92  nano config 
   93  gossh
   94  ll
   95  nano config
   96  ll
   97  cat config.save 
   98  rm config.save 
   99  nano config
  100  git clone git@github.com:hunyoboy/dockerized-jekyll-nginx.git
  101  cd dockerized-jekyll-nginx/
  102  docker-compose -f docker-compose-create.yml
  103  sudo snap install docker
  104  sudo apt  install docker-compose
  105  history