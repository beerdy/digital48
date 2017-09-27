
class PagesContent
  attr_reader :content

  module MakeTitle
    def make_title data

      title = data.title 
      context = title.split ' '
      first_word = "#{context[0]} #{context[1]}"
      context[0] = ''; context[1] = ''
      second_word = context.join ' '

      return title, first_word, second_word
    end
  end

  class Parent
    attr_accessor :link, :name
  end
  

  # INIT only for nested: ContentPage AND ContentGroup
  class ContentInit
    include MakeTitle
    
    attr_accessor :parent
    
    attr_reader :title, :group, :name, :first_word, :second_word, :html

    def initialize
      @parent = Parent.new
    end
  end



  # When has link to content in page (first priority)
  class ContentPage < ContentInit
    def make_content_from data
      page = Page.where( url: data.url).first
   
      @title, @first_word, @second_word = make_title page
      @html = page.description
    end
  end



  # When has content in group (last priority)
  class ContentGroup < ContentInit
    def make_content_from data
      set_content data

      @html = data.description
    end

    private
      def set_content data
        case slave_or_title_field?(data)
        when 'title'
          @title, @first_word, @second_word = make_title data
        when 'slave'
          @title,@group,@name = data.slave.split '>'
          @first_word,@second_word = @group.split ' '
        end
      end

      def slave_or_title_field? data
        (data.slave == '' or data.slave == nil) ? 'title' : 'slave'
      end
  end



  def initialize data

    @content = case has_content_by_url?(data)
    when true
      ContentPage.new()
    when false
      ContentGroup.new()
    end
    @content.make_content_from data
    
  end

  private
    def has_content_by_url? data
      !(data.url == '' or data.url == nil)
    end
end




########################
# ApplicationDigital48 #
########################
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
    @master_group = Group1.all
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
      @worktime = c if c.url == 'worktime'
      @cert = c if c.url == 'cert'
      @phoneheader = c if c.url == 'phoneheader'
      @background_body = c if c.url == 'background_body'
      @mobile_background = c if c.url == 'mobile_background'
      @logo_baner = c if c.url == 'logo_baner'
    end
  end
end
