class InterestsController < ApplicationController
  before_action :set_idea

  def create

    @interest = Interest.create(params[:interest])
    @interest.save

    @ideas = Idea.take(10)

    flash[:notice] = "A message has been sent to the poster."
    render "ideas/forum"
  end

  def set_idea
    @idea = Idea.find(params[:id])
  end

end