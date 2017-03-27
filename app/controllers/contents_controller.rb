class ContentsController < ApplicationController
  layout "application"

  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @contents = Content.all
    @photos = Photo.all
    # render status: 200, json: contents
  end

  # def new
  #   @content = Content.new
  # end
  #
  # def create
  #   if @content.save(content_params)
  #     render 'index'
  #   end
  # end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    @content = Content.find(params[:id])
    if @content.update(content_params)
     redirect_to information_path
   else render notice: "Update unsuccessful"
    end
  end

  # def destroy
  #   @content = Content.find(params[:id])
  #   content.destroy
  #
  #   # render status: 200, json: {
  #   #   message: "Content deleted"
  #   # }.to_json
  # end

  private

  def content_params
    params.require(:content).permit(:paragraph)
  end

  def authenticate_admin!
    # check if current user is admin
    unless current_user.admin
      # if current_user is not admin redirect to some route
      redirect_to new_user_session_path
    end
    # if current_user is admin he will proceed to edit action
  end

end
