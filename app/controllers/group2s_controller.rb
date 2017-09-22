class Group2sController < ApplicationController
  before_action :set_group2, only: [:show, :edit, :update, :destroy]

  # GET /group2s
  # GET /group2s.json
  def index
    @group2s = Group2.all
  end

  # GET /group2s/1
  # GET /group2s/1.json
  def show
    group1_id = @group2.group1_id
    
    #for css .active class
    @group_active_id = params[:id]
    @groups_second = Group2.where group1_id: group1_id

    #return content accessor_read: .content
    @content = PagesContent.new(@group2).content

    #for level up by link on head page
    parent = Group1.find group1_id
    @content.parent.link = "/group1s/#{group1_id}"
    @content.parent.name = parent.title
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group2
      @group2 = Group2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group2_params
      params.require(:group2).permit(:title, :description, :slave, :image_uid, :image_name, :url, :sort)
    end
end
