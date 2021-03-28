# README

## Ruby Version
You will need to have Ruby 2.7.2 running on your machine.

To install RVM (Ruby Version Manager) run: ```\curl -sSL https://get.rvm.io | bash -s stable```

To install Ruby 2.7.2 run: ```rvm install 2.7.2```

postgres -D /usr/local/var/postgres
bundle update
bundle install
rails db:create
rails db:migrate
rails db:seed
