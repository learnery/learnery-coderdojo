 source 'https://rubygems.org'

# dependency to learnery
# uses local learnery if LEARNERY_LOCAL is set, e.g. with
# export LEARNERY_LOCAL=../learnery-engine
# please make sure to commit/push Gemfile.lock with reference
# to github rather than local file!
if ENV['LEARNERY_LOCAL']
  gem 'learnery', :path => ENV['LEARNERY_LOCAL']
else
  gem 'learnery', :git => 'git://github.com/learnery/learnery.git', ref: '09a1c7dbb76759d50c8255d54cbe75c6b41b6cab'
end

# for travis deployment to heroku
# added here because .gemspec does not support depending on git versions
#http://stackoverflow.com/questions/6499410/ruby-gemspec-dependency-is-possible-have-a-git-branch-dependency
  # forked for now because we need this:
  # https://github.com/learnery/heroku-headless/commit/b5179227c710ac84e871b91699fd0fc355d43b28

group :development, :test do
  gem 'heroku-headless', '>= 0.2.1'
  gem 'learnerydeploy', :git => 'git://github.com/learnery/deployment.git', ref: '270fcb95ddcab0902a7b68972f637a4944cb527e'
end
group :production do #heroku
  # to enable static asset serving for rails4 on heroku
  # https://devcenter.heroku.com/articles/rails4
  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
  # postgres for heroku
  gem 'pg'
  gem 'therubyracer', platforms: :ruby
end


group :test do
  gem 'rake' # for travis, see http://about.travis-ci.org/docs/user/languages/ruby/
  gem 'minitest-spec-rails'
  gem 'capybara'
  gem 'capybara_minitest_spec'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'factory_girl_rails'
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record
group :development, :test do
  gem 'sqlite3'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
