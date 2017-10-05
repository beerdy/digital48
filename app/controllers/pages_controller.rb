class PagesController < ApplicationController
  before_action :set_page, only: [:show]

  # GET /pages
  # GET /pages.json
  def index
    render layout: false
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      if params[:id].is_a? Integer
        @page = Page.find(params[:id])
      else
        @page = Page.where( url: params[:id] ).first
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:title, :description, :slave, :image_uid, :image_name, :url, :sort)
    end
    def is_mobile_request?
      request.host == "mobile.app.com"
    end
end
