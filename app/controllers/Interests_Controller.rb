class InterestsController < ApplicationController

  def create
    @idea = set_idea

    @interest = Interest.create(params[interest_params])
    @interest.idea_id = @idea.id
    @interest.user_id = current_user.id

      if @interest.save
            #IdeaMailer.create_interest_notice(current_user).deliver_later
           flash[:notice] = "A message has been sent to the poster."
            @ideas = Idea.take(10)
            render "ideas/forum"
      end
  end

  private

  def set_idea
    @idea = Idea.find(params[:idea_id])
  end

  def interest_params
    params.require(:interest).permit(:user_id, :idea_id)
  end

end