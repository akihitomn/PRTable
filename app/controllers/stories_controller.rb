class StoriesController < ApplicationController
  before_action :set_company, only: [:new, :create, :update, :edit, :show]

  def index
    # @stories = Story.all.page(params[:page]).per(15).order('created_at DESC')
    if @story != nil
      @story = Story.find(params[:id])
    else
      redirect_to :root
    end
  end

  def show
    @story = Story.find(params[:id])
    @likes = Like.where(story_id: params[:id])
    @message = @story.messages.new
    @messages = Message.where(story_id: params[:id])
    @tag = ActsAsTaggableOn::Tag.find_by(name: params[:name])
    @tags = @story.tags
  end

  def new
    @story = Story.new
  end

  def edit
  end

  def create
    @story = @company.stories.new(story_params)
    if @story.save
      redirect_to :root, notice: 'ストーリーを作成しました'
    else
      flash.now[:alert] = '入力項目を確認してください'
      render :new
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

  # def search
  #   @stories = Story.where('body LIKE(?)', "%#{params[:keyword]}%").limit(20)
  #   # respond_to do |format|
  #   #   format.json
  #   # end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:company_id])
    end

    def story_params
      params.require(:story).permit(:title, :body, :image, :tag_list).merge(user_id: current_user.id)
    end

    def message_params
      params.require(:message).permit(:body, :image)
      # .merge(user_id: current_user.id)
    end

  end
