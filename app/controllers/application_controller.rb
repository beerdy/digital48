class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def initialize
    super
    content
  end

  def content
    Content.all.each do |c|
      @mini_info = c if c.url == 'mini_info'
      @service_1 = c if c.url == 'service_1'
      @service_2 = c if c.url == 'service_2'
      @super_info = c if c.url == 'super_info'
      @logo = c if c.url == 'logo'
    end
  end
end
