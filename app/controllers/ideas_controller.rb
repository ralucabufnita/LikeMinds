class IdeasController < ApplicationController
  before_action :set_idea, only: [:show, :edit, :update, :destroy, :interest]

  respond_to :html

  def index
    if not params[:title].nil?
      @ideas = Idea.search(params[:title]).order("created_at DESC")
    else
      @ideas = Idea.where(user_id: current_user.id)
    end if

    @ideas = Idea.paginate(:page => params[:page])

    respond_with(@ideas)
  end

  def show

    now = Date.today
    before = Date.today + 2.days

    @interest = Interest.new

    @difference_in_days = (before - now).to_i

    respond_with(@idea)
  end

  def search

    if not @ideas.empty?
      respond_with(@ideas)
    else
      flash[:alert] = "There are no search results for the given criteria"
    end
  end

  def forum
    @ideas = Idea.new
    @ideas = Idea.take(11)

    #render json: @ideasCollection
    respond_with(@ideas)

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

  def destroy
    @idea.destroy
    respond_with(@idea)
  end

  private

    def set_idea
      @idea = Idea.find(params[:id])
    end

    def idea_params
      params.require(:idea).permit(:title, :category, :content, :user_id, :createdAt, :updatedAt, :avatar)
    end



end
