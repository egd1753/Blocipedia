class CollaboratorsController < ApplicationController

  def new
    @collaborator = Collaborator.new
  end

# POST
  def create
    @collaborator = Collaborator.new
    @collaborator.wiki_id = params[:wiki_id]
    collab_email = User.find_by(email: params[:add_collaborator])
    @collaborator.user_id = collab_email
    @collaborator.save!
  end

end
