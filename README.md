# README

# Live App
To see a live version of this web app deployed on Heroku visit:
[gm-time-hub.herokuapp.com](https://gm-time-hub.herokuapp.com/)

# Dependencies
* Git (Recommended)
* Ruby 2.7.2
* Rails Gem

## Git (Recommended)
Having git will make downloading the project much easier.

Download git here: [https://git-scm.com/downloads](https://git-scm.com/downloads)

Downloading the project with git installed:
1. Navigate to the directory you want to download to
2. Run: ```git clone https://github.com/Jcole429/time-hub.git```

Downloading the project without git installed:
1. Click on code -> download ZIP
2. Extract the project files to the desired directory


## Ruby 2.7.2
You will need to have Ruby 2.7.2 running on your machine.

It is recommended to use RVM (Ruby Version Manager) to manage multiple versions of Ruby on your machine and simplify the installation process.

### Note for windows users:
RVM support for mingw is not implemented yet. Follow instructions for Ruby+Devkit 2.7 at: [https://rubyinstaller.org/downloads](https://rubyinstaller.org/downloads) 

### Installing RVM (Recommended):
Full instructions here: [https://rvm.io/rvm/install](https://rvm.io/rvm/install)

As a first step install GPG keys used to verify installation package:
```
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
```
To install RVM run:
```
\curl -sSL https://get.rvm.io | bash -s stable
```
Close the bash window and open a new one then run the following to verify RVM has been installed:
```
rvm --version
rvm 1.29.12 (latest) by Michal Papis, Piotr Kuczynski, Wayne E. Seguin [https://rvm.io]
```

### Installing Ruby 2.7.2:
With RVM installed run:
```
rvm install 2.7.2
```
Without RVM installed follow directions at: [https://www.ruby-lang.org/en/downloads/](https://www.ruby-lang.org/en/downloads/)

### Verify Ruby 2.7.2 is installed:
```
ruby --version
ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-darwin20]
```

## Installing Rails Gem
To install the rails gem run:
```
gem update
gem install rails
```
Verify the rails gem was installed:
```
rails -v
Rails 6.1.3.1
```

# Running the time-hub app

1. Navigate to the project directory
2. Update the bundler: ```bundle update```
2. Install project dependencies: ```bundle install```
3. Create the postgres database: ```rake db:create```
4. Run migrations to create the tables: ```rake db:migrate```
5. Seed the tables with inital data: ```rake db:seed```
3. Start the rails server: ```rails s```
4. 



postgres -D /usr/local/var/postgres
bundle update
bundle install
rails db:create
rails db:migrate
rails db:seed
