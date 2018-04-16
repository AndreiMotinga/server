source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.4.1"

gem "rails", "~> 5.2.0"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 3.11"
gem "bootsnap", ">= 1.1.0", require: false

group :development, :test do
  gem "awesome_print"
  gem "factory_bot"
  gem "faker"
  gem "pry-byebug"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end
