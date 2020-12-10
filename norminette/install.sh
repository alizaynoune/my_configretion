#!/bin/sh
#install ruby & ruby-irb rybygems
#pacman -S ruby ruby-irb rubygems
gem install bundler
gem install parseconfig
bundle init
bundle install --path .bundle
mkdir -p /usr/share/norminette
cp -r .bundle config.conf Gemfile Gemfile.lock norminette.rb /usr/share/norminette/
ln -s /usr/share/norminette/norminette.rb /usr/bin/norminette

