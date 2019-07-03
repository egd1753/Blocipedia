class WikiPolicy
  attr_reader :user, :wiki


  def initialize(user, post)
    @user = user
    @post = post
  end


  def show?
    user.premium? or user.admin?
  end


end
