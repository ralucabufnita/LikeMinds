class IdeaMailer < ApplicationMailer

  def interest_notice
    @user = User
    mail(to: @user.email, subject: User.name + "is Interested in your Idea!")
  end

end
