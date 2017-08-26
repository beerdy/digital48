class ClientsController < ApplicationController
  before_action :set_client, only: [:show]

  def index
    @clients = Client.all
    @page = Page.where( url: 'portfolios' ).first
  end
  def show
    @page = @client
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.require(:client).permit(:title, :description, :slave, :image_uid, :image_name, :url, :sort, :date, :finished, :disabled)
    end
end
