class CollaboratorsController < ApplicationController

  def create
    wiki = Wiki.find(params[:wiki_id])
    user = User.find(params[:user_])
  end

end
