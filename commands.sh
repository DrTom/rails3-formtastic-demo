rails new formtastic-demo
cd formtastic-demo/
rvm gemset create formtastic-demo
rvm gemset use formtastic-demo
echo 'rvm use 1.9.2@formtastic-demo' > .rvmrc
gem install rails
bundle install