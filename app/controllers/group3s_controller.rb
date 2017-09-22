class Group3sController < ApplicationController
  before_action :set_group3, only: [:show, :edit, :update, :destroy]

  # GET /group3s
  # GET /group3s.json
  def index
    @group3s = Group3.all
  end

  # GET /group3s/1
  # GET /group3s/1.json
  def show
    #for css .active class
    @group_active_id = @group3.group2_id.to_s
    
    #for css .subactive class
    @subgroup_active_id = params[:id]

    @groups_second = @group3.group2.group1.group2

    #return content accessor_read: .content
    @content = PagesContent.new(@group3).content

    #for level up by link on head page
    @content.parent.link = "/group2s/#{@group_active_id}"
    @content.parent.name = @group3.group2.title
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group3
      @group3 = Group3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group3_params
      params.require(:group3).permit(:title, :description, :slave, :image_uid, :image_name, :url, :sort)
    end
end
