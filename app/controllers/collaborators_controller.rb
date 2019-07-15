class CollaboratorsController < ApplicationController

  def new
    @collaborator = Collaborator.new
  end

# POST
  def create
    @collaborator = Collaborator.new
    @collaborator.wiki_id = :wiki_id
    collab_email = User.find_by(email: :add_collaborator)
    @collaborator.user_id = collab_email
    @collaborator.save!
  end

end
