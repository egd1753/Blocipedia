class CollaboratorsController < ApplicationController

# POST
  def create
    @collaborator = Collaborator.new
    @collaborator.wiki_id = params[:wiki][:id]
    collaborator = User.find(params[:email])
    @collaborator.user_id = collaborator.id
    @collaborator.save!
  end

end
