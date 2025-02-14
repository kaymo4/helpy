source 'https://rubygems.org'

gem 'rails', '4.2.11.1'

# Use postgresql as the database for Active Record
gem 'pg', '~> 0.20.0'
gem 'pg_search'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.7'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Explicitly include Nokogiri to control version
gem 'nokogiri', '>= 1.10.4'

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'

# Inline js validations
gem 'client_side_validations'
gem 'client_side_validations-simple_form'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 2.5.3'
gem 'jquery-turbolinks', '~> 2.1.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.8'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 1.0.0', group: :doc

# Summernote is the wysiwyg editor
gem 'jquery-minicolors-rails'
gem 'summernote-rails'
gem 'codemirror-rails'

# Ranked model gives the ability to rank articles and categories
gem 'ranked-model'

# Google Analytics Measurement Protocol
gem 'staccato'

gem "rails-settings-cached", '~> 0.5.0'
gem 'sucker_punch', '~> 2.0'

# Charting
gem "groupdate"
gem "chartkick"

# Auth Gems
gem 'devise', '<= 5.0.0'
gem 'devise-i18n'
gem 'devise-bootstrap-views'
gem 'devise_invitable'
gem 'omniauth'
gem "omniauth-rails_csrf_protection" # TODO: remove once https://github.com/omniauth/omniauth/pull/809 is resolved
gem 'omniauth-github'
gem 'omniauth-twitter'
gem 'omniauth-google-oauth2'
gem 'omniauth-facebook'

# i18n gems
gem 'rails-i18n', '~> 4.0.9'
gem 'i18n-country-translations'
gem 'route_translator'
gem 'http_accept_language'

# API gems
gem 'grape'
gem 'grape-swagger'
gem 'grape-entity'
gem 'grape-swagger-rails'
gem 'grape-swagger-entity'
# gem 'grape-attack' #uncomment for rate limiting
gem 'grape-kaminari'
gem 'kaminari-grape'
gem 'rack-cors', :require => 'rack/cors'

gem 'paper_trail'
gem 'acts-as-taggable-on', '~>3.5'

gem 'kaminari'
gem 'kaminari-i18n'

gem 'globalize', '= 5.0.1'
gem 'globalize-versioning'
gem 'globalize-accessors'

gem 'gravtastic'

# File handling
gem 'cloudinary', '1.1.7'
gem 'attachinary'

gem 'carrierwave', '~> 1.3.1'
gem 'fog-aws'
gem "jquery-fileupload-rails"
gem 'mini_magick'

# Bootstrap/UI Gems
gem 'font-awesome-sass'
gem 'bootstrap-sass'
gem 'bootstrap_form'
gem 'simple_form'
gem 'twitter-bootstrap-rails'
gem 'twitter-bootstrap-rails-confirm'
gem 'rdiscount'
gem 'selectize-rails'
gem "bootstrap-switch-rails", '3.3.3' # NOTE: IOS style switches broke with 3.3.4
gem 'bootstrap-datepicker-rails'
gem 'bootstrap-select-rails'
gem 'gemoji'

#create slugs and breadcrumps for better SEO - KM
gem 'friendly_id', '~> 5.4.0'
gem "breadcrumbs_on_rails"
gem 'meta-tags'

#provide tools for SL views
gem 'scenic'

gem 'config', '~> 1.1.0'

# Email/Mail Handling
gem 'daemons'
gem 'mailman'#, require: false
gem 'mail_extract'
gem 'email_reply_trimmer'

gem 'griddler'
gem 'griddler-mandrill'
gem 'griddler-sendgrid'
gem 'griddler-mailgun'
gem 'griddler-postmark'
gem 'griddler-sparkpost'

# html Email
gem 'inky-rb', require: 'inky'
gem 'premailer-rails'

gem 'rails-timeago'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Faker is used for the populate script to create demo data
gem 'faker'

gem 'timecop' #used to populate
gem "hashid-rails", "~> 1.0"
gem 'themes_on_rails'
gem "recaptcha", '< 3', require: "recaptcha/rails" # TODO: Update

gem 'best_in_place', '~> 3.1'

# Add onboarding component
gem 'helpy_onboarding', git: 'https://github.com/helpyio/helpy_onboarding', branch: 'master'
gem 'helpy_imap', git: 'https://github.com/helpyio/helpy_imap', branch: 'master'

group :development, :test do
  # Audit Gemfile for security vulnerabilities
  gem 'puma'
  gem 'bundler-audit', require: false
  gem 'byebug'
  gem 'pry'
  gem 'pry-byebug'
  gem 'spring', '~> 2.0.2'
  gem 'annotate'
  gem 'brakeman', require: false
  gem 'rubocop'
  gem 'scss-lint'
  gem 'awesome_print'
  gem 'rb-readline'
  gem 'capybara'

end

gem 'bulk_insert'
gem 'roo'
gem 'ancestry'

group :development do
  gem "better_errors"

  # Check Eager Loading / N+1 query problems
  # gem 'bullet'
  gem 'scout_apm'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 3.3'
end

group :test do
  gem 'minitest'
  gem 'minitest-reporters'
  gem 'minitest-retry'
  gem 'shoulda', '3.5' # Required for minitest
  gem 'shoulda-matchers', '~> 2.0'  # Required for minitest
  gem 'factory_bot_rails'
  gem 'webdrivers'
  gem 'capybara-email'
  gem 'selenium-webdriver', '3.141.0'
  # gem 'chromedriver-helper'
  gem 'launchy'
  gem "codeclimate-test-reporter",require: nil
  gem 'simplecov', :require => false

  # remove this for Rails 5 because the function is already included
  gem 'test_after_commit'
end

group :production do
  # Uncomment this gem for Heroku:
  # gem 'rails_12factor'
  gem 'unicorn'
end

ruby '2.5.1'
