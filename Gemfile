source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.4.1"

gem "rails", "~> 5.2.0"
gem "rack-cors", require: "rack/cors"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 3.11"
gem "bootsnap", ">= 1.1.0", require: false
gem "devise_token_auth"
gem "fast_jsonapi"
gem "stripe-rails"
gem "paperclip"
gem "aws-sdk", "< 3.0"
gem "administrate", github: "mattgillooly/administrate", branch: "support-rails-5.2"
gem "administrate-field-paperclip"
gem "administrate-field-ckeditor", "~> 0.0.9"

group :development, :test do
  gem "awesome_print"
  gem "factory_bot_rails"
  gem "faker"
  gem "pry-byebug"
  gem "rspec-rails"
  gem "dotenv-rails"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end
