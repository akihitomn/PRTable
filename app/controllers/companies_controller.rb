class CompaniesController < ApplicationController
  before_action :set_company, only: [:index, :edit, :update]

  def index
    @stories = Story.all.page(params[:page]).per(15).order('created_at DESC')
  end

  def show
  end

  def new
    @company = Company.new
  end

  def edit
  end

  def update
    if @company.update(company_params)
    redirect_to company_stories_path(@company)
  end
end

def create
  @company = Company.new(company_params)
  @company.users << current_user
  if @company.save
    redirect_to company_stories_path(current_user)
  else
    render :new

    # respond_to do |format|
      # if @company.save
    #     format.html { redirect_to @company, notice: 'Company was successfully created.' }
    #     format.json { render :show, status: :created, location: @company }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @company.errors, status: :unprocessable_entity }
    #   end
    # end
  end
end

def destroy
    # @company.destroy
    # respond_to do |format|
    #   format.html { redirect_to companies_url, notice: 'Company was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find_by(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:name, user_ids: [])
      # .merge(user_id: current_user.id)
    end
  end
