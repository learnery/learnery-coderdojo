ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails'
require 'capybara/poltergeist'
require 'learnery'
require 'login_helper'


class ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods
  ActiveRecord::Migration.check_pending!
end

class ActionDispatch::IntegrationTest
  delegate :t, :to => I18n
  include Rails.application.routes.url_helpers
  include LoginHelper
  include Capybara::DSL

  # create the text on the standard buttons (new, create)
  def create_button_for(klass)
    return "#{klass.model_name.human} #{t(:create).downcase}" if I18n.locale == :de
    return "#{t(:create)} #{klass.model_name.human}"
  end
  def new_button_for(klass)
    return "#{klass.model_name.human} #{t(:new).downcase}" if I18n.locale == :de
    return "#{t(:new)} #{klass.model_name.human}"
  end
  def update_button_for(klass)
    return "#{klass.model_name.human} #{t(:update).downcase}" if I18n.locale == :de
    return "#{t(:update)} #{klass.model_name.human}"
  end
end
