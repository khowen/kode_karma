class ContributorsController < ApplicationController
  #before_action :authenticate_user!
  #before_action :set_contributor, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:new, :create]

  # GET /contributors
  # GET /contributors.json
  def index
    redirect_to home_path
    @contributors = Contributor.all
  end

  # GET /contributors/1
  # GET /contributors/1.json
  def show
    @contributor = Contributor.find(params[:id])
    @user = current_user
    @user_id = @user[:email]
  end

  # GET /contributors/new
  def new
    @contributor = Contributor.new
  end

  # GET /contributors/1/edit
  def edit
    @contributor = Contributor.find(params[:id])
  end

  # POST /contributors
  # POST /contributors.json
  def create
    @contributor = Contributor.new(contributor_params)

    respond_to do |format|
      if @contributor.save
        format.html { redirect_to @contributor, notice: 'Contributor was successfully created.' }
        format.json { render :show, status: :created, location: @contributor }
      else
        format.html { render :new }
        format.json { render json: @contributor.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /contributors/1
  # PATCH/PUT /contributors/1.json
  def update
    @contributor = Contributor.find(params[:id])
    respond_to do |format|
      if @contributor.update(contributor_params)
        format.html { redirect_to @contributor, notice: 'Contributor was successfully updated.' }
        format.json { render :show, status: :ok, location: @contributor }
      else
        format.html { render :edit }
        format.json { render json: @contributor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contributors/1
  # DELETE /contributors/1.json
  def destroy
    @contributor.destroy
    respond_to do |format|
      format.html { redirect_to contributors_url, notice: 'Contributor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contributor
      @contributor = Contributor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contributor_params
      #params.require(:contributor).permit(:skill, :website, :company)
      #params.require(:contributor).permit(:skill, :website, :company, user_attributes: [ :id, :email, :password ])
      params.require(:contributor).permit(:name, :skill, :website, :company, user_attributes: [:email, :password ])
    end
end
