class Video2tagsController < ApplicationController
  before_action :set_video2tag, only: [:show, :edit, :update, :destroy]

  # GET /video2tags
  # GET /video2tags.json
  def index
    @video2tags = Video2tag.all
  end

  # GET /video2tags/1
  # GET /video2tags/1.json
  def show
  end

  # GET /video2tags/new
  def new
    @video2tag = Video2tag.new
  end

  # GET /video2tags/1/edit
  def edit
  end

  # POST /video2tags
  # POST /video2tags.json
  def create
    @video2tag = Video2tag.new(video2tag_params)

    respond_to do |format|
      if @video2tag.save
        format.html { redirect_to @video2tag, notice: 'Video2tag was successfully created.' }
        format.json { render :show, status: :created, location: @video2tag }
      else
        format.html { render :new }
        format.json { render json: @video2tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video2tags/1
  # PATCH/PUT /video2tags/1.json
  def update
    respond_to do |format|
      if @video2tag.update(video2tag_params)
        format.html { redirect_to @video2tag, notice: 'Video2tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @video2tag }
      else
        format.html { render :edit }
        format.json { render json: @video2tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video2tags/1
  # DELETE /video2tags/1.json
  def destroy
    @video2tag.destroy
    respond_to do |format|
      format.html { redirect_to video2tags_url, notice: 'Video2tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video2tag
      @video2tag = Video2tag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video2tag_params
      params.require(:video2tag).permit(:string, :string)
    end
end
