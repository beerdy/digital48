class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def initialize
    super
    content

    @message = Message.new
  end

  def content
    Content.all.each do |c|
      @mini_info = c if c.url == 'mini_info'
      @service_1 = c if c.url == 'service_1'
      @service_2 = c if c.url == 'service_2'
      @utilize = c if c.url == 'utilize'
      @logo = c if c.url == 'logo'
      @footerprice = c if c.url == 'footerprice'
      @infoblock = c if c.url == 'infoblock'
      @rekviziti = c if c.url == 'rekviziti'
      @slogan = c if c.url == 'slogan'
      @footer = c if c.url == 'footer'
    end
  end
end
