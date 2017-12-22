source 'https://rubygems.org'
ruby '2.4.2'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.5'
  gem 'shoulda-matchers'
  gem 'factory_bot_rails'
  gem 'database_cleaner'
  gem 'ffaker'
  gem 'rubocop', require: false
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors'
  gem 'meta_request'
  gem 'letter_opener_web'
end


gem 'figaro'
gem 'friendly_id'
gem 'babosa'
gem 'mini_magick'
gem 'rails-i18n'
gem 'administrate', github: 'thoughtbot/administrate'
gem "administrate-field-ckeditor", "~> 0.0.7"
gem 'administrate-field-carrierwave', '~> 0.2.0'
gem 'ckeditor', github: 'galetahub/ckeditor'
gem 'pundit'
gem 'devise'
gem 'carrierwave', '~> 1.0'
gem 'high_voltage', '~> 3.0.0'
gem 'webpacker', github: 'rails/webpacker'
gem 'kaminari'
gem 'rails-timeago', '~> 2.0'
gem 'gretel'
gem 'mail_form'
gem 'social-share-button'
gem 'draper'
