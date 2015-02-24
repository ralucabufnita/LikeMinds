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
    #@idea.user = User.new
    @idea = Idea.new(idea_params)
    @idea.user = current_user
    #@idea = current_user.ideas.build(params[:ideas])
    @idea.save
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
