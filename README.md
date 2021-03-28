# README

# Live App
To see a live version of this web app deployed on Heroku visit:
[gm-time-hub.herokuapp.com](https://gm-time-hub.herokuapp.com/)
# General
* **Build Enviornment**: macOS Big Sur
* **Database**: Postgres
* **Framework**: Ruby on Rails

# Dependencies
* Git (Recommended)
* Ruby 2.7.2
* PostgreSQL 13.2

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
RVM support for mingw is not implemented yet. Follow instructions for Ruby+Devkit 2.7.2 at: [https://rubyinstaller.org/downloads](https://rubyinstaller.org/downloads) 

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

## PostgreSQL 13.2
* You can download PostgresSQL 13.2 from [https://www.enterprisedb.com/downloads/postgres-postgresql-downloads](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads).
* Make sure the /bin directory is added to your PATH enviornment variable

# Running the time-hub app locally

1. Populate ```app/config/database.yml``` file with your postgres username and password.
```
default: &default
  adapter: postgresql
  encoding: unicode
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: [your_username]
  password: [your_password]
```

2. Navigate to the project directory
3. Install correct bundler version: ```gem install bundler:2.2.15```
4. Update the bundler: ```bundle update```
5. Install project dependencies: ```bundle install```
6. Create the postgres database: ```rake db:create```
7. Run migrations to create the tables: ```rake db:migrate```
8. Seed the tables with inital data: ```rake db:seed```
9. Start the rails server: ```rails s```
10. The app is now running! Navigate to [https://localhost:3000](https://localhost:3000) to see it!