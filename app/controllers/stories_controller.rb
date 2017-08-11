class StoriesController < ApplicationController
  before_action :set_company, only: [:new, :create, :update, :edit, :show]
  # before_action :set_story, only: [:show]

  def index
    if @story != nil
      @story = Story.find(params[:id])
    else
      redirect_to :root
    end
  end

  def show
    @story = Story.find(params[:id])
  end

  def new
    @story = Story.new
  end

  def edit
  end

  def create
    @story = @company.stories.new(story_params)
    if @story.save
      redirect_to :root
    else
      reder :new
    end
  end

  def update
  end

  def destroy
    # @story.destroy
    # respond_to do |format|
    #   format.html { redirect_to stories_url, notice: 'Story was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:company_id])
    end

    # def set_story
    #   @story = Story.find(id: story.id)
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_params
      params.require(:story).permit(:title, :body, :image).merge(user_id: current_user.id)
    end
  end
