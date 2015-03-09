class IdeasController < ApplicationController
  before_action :set_idea, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @ideas = Idea.where(user_id: current_user.id)
    respond_with(@ideas)
  end

  def show
    respond_with(@idea)
  end

  def forum
    @Ideas = Idea.Take(10)
    respond_with(@Ideas)
  end

  def search
    if params[:search]
      @Ideas = Idea.search(params[:search]).order("created_at DESC")
    else
      @Ideas = Idea.all.order('created_at DESC')
    end
  end

  def new
    @idea = Idea.new
    respond_with(@idea)
  end

  def forum
    @ideas = Idea.take(20)
    respond_with(@ideas)
  end

  def edit
  end

  def create
    @idea = Idea.new(idea_params)
    @idea.user = current_user
    @idea.save

    flash[:notice] = "Your idea has been posted successfully."

    respond_with(@idea)
  end

  def update
    @idea.update(idea_params)
    respond_with(@idea)
  end

  def destroy
    @idea.destroy
    respond_with(@idea)
  end

  private
    def set_idea
      @idea = Idea.find(params[:id])
    end

    def idea_params
      params.require(:idea).permit(:title, :category, :content, :user_id, :createdAt, :updatedAt)
    end

end
