class Group1sController < ApplicationController
  before_action :set_group1, only: [:show, :edit, :update, :destroy]

  # GET /group1s
  # GET /group1s.json
  def index
    @group1s = Group1.all
  end

  # GET /group1s/1
  # GET /group1s/1.json
  def show
    @groups_second = Group2.where group1_id: params[:id]

    #return content accessor_read: .content
    @content = PagesContent.new(@group1).content

    #for level up by link on head page
    @content.parent.link = "/"
    @content.parent.name = "На главную"
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group1
      @group1 = Group1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group1_params
      params.require(:group1).permit(:title, :description, :slave, :image_uid, :image_name, :url, :sort)
    end
end
