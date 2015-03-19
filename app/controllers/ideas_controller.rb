class IdeasController < ApplicationController
  before_action :set_idea, only: [:show, :edit, :update, :destroy, :interest]

  respond_to :html

  def index
    @ideas = Idea.where(user_id: current_user.id)
    respond_with(@ideas)
  end

  def show

    now = Date.today
    before = Date.today + 2.days

    @interest = Interest.new

    @difference_in_days = (before - now).to_i

    respond_with(@idea)
  end

  def forum
    @ideas = Idea.new
    @ideas = Idea.take(10)
    respond_with(@ideas)
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

  #def interest
    #@interest = Interest.new
    # @interest.user_id = current_user.id
    # @interest.idea_id = @idea.id

   # render "interest/show"
  #end

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
