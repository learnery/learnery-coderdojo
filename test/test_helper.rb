ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails'
require 'capybara/poltergeist'
require 'learnery'

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!
end

class ActionDispatch::IntegrationTest
  delegate :t, :to => I18n
  include Rails.application.routes.url_helpers
  include Capybara::DSL
end
