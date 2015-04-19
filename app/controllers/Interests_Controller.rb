class InterestsController < ApplicationController

  def create
    @idea = set_idea

    @interest = Interest.create(params[interest_params])
    @interest.idea_id = @idea.id
    @interest.user_id = current_user.id
    @interest.Comment = :Comment
    @interest.IsInterested = :IsInterested

      if @interest.save
            #IdeaMailer.create_interest_notice(current_user).deliver_later
        if :IsInterested
           flash[:notice] = "A message has been sent to the poster."
        else
          flash[:notice] = "Your comment has been posted successfully."
            @ideas = Idea.take(11)
            render "ideas/forum"
      end
      end
  end


  private

  def set_idea
    @idea = Idea.find(params[:idea_id])
  end

  def interest_params
    params.require(:interest).permit(:user_id, :idea_id, :Comment, :IsInterested)
  end

end