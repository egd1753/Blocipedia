class CollaboratorsController < ApplicationController

  def new
    @collaborator = Collaborator.new
  end

# POST
  def create
    @collab_user = User.find_by(email: params[:add_collaborator])
    @wiki = Wiki.find(params[:wiki_id])
    if @wiki.collaborators.exists?(user_id: params[:add_collaborator])
      flash.now[:alert] = "This user is already a collaborator for this wiki."
    else
      @collaborator = Collaborator.new(user_id: @collab_user.id, wiki_id: @wiki.id)
      @collaborator.save!
      flash[:notice] = "You have successfully added #{params[:add_collaborator]} as a collaborator."
    end
#    if @collaborator.save!

#    else
#      flash.now[:alert] = "An error has occured. Make sure you entered the correct email and you have an internet connection."
#    end
  end

end
