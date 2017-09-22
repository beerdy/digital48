class Group4sController < ApplicationController
  before_action :set_group4, only: [:show, :edit, :update, :destroy]

  # GET /group4s
  # GET /group4s.json
  def index
    @group4s = Group4.all
  end

  # GET /group4s/1
  # GET /group4s/1.json
  def show
  end

  # GET /group4s/new
  def new
    @group4 = Group4.new
  end

  # GET /group4s/1/edit
  def edit
  end

  # POST /group4s
  # POST /group4s.json
  def create
    @group4 = Group4.new(group4_params)

    respond_to do |format|
      if @group4.save
        format.html { redirect_to @group4, notice: 'Group4 was successfully created.' }
        format.json { render :show, status: :created, location: @group4 }
      else
        format.html { render :new }
        format.json { render json: @group4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group4s/1
  # PATCH/PUT /group4s/1.json
  def update
    respond_to do |format|
      if @group4.update(group4_params)
        format.html { redirect_to @group4, notice: 'Group4 was successfully updated.' }
        format.json { render :show, status: :ok, location: @group4 }
      else
        format.html { render :edit }
        format.json { render json: @group4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group4s/1
  # DELETE /group4s/1.json
  def destroy
    @group4.destroy
    respond_to do |format|
      format.html { redirect_to group4s_url, notice: 'Group4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group4
      @group4 = Group4.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group4_params
      params.require(:group4).permit(:title, :description, :slave, :image_uid, :image_name, :url, :sort)
    end
end
