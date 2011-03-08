#!/bin/bash

rails new formtastic-demo
cd formtastic-demo/
rvm gemset create formtastic-demo
rvm gemset use formtastic-demo
echo 'rvm use 1.9.2@formtastic-demo' > .rvmrc
gem install rails
bundle install

bundle install
rails g scaffold category name:string description:text
rake db:migrate

rails generate migration AddDataToCategories
rake db:migrate

rails generate formtastic:install

rails generate scaffold animal name:string category_id:integer born_on:date female:boolean
rake db:migrate

