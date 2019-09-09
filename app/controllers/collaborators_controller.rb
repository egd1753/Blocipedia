class CollaboratorsController < ApplicationController


  def new
    @wiki = Wiki.find(params[:wiki_id])
    @collaborator = Collaborator.new
  end

# POST
  def create
    @collaborator = Collaborator.new
    @collaborator.user_id = User.find_by(email: params[:add_collaborator])
    @wiki = Wiki.find(params[:wiki_id])
    @collaborator.wiki = @wiki
    if (@collaborator.save)
      flash[:notice] = "You have successfully added #{params[:add_collaborator]} as a collaborator."
      redirect_to @wiki
    else
      flash[:alert] = "There was an error. Please try again."
      redirect_to @wiki
    end
  end


  def destroy
    @wiki = Wiki.find(params[:wiki_id])
    @collaborator = Collaborator.find(params[:id])
    if @collaborator.destroy
      flash[:notice] = "You have successfully removed a collaborator from this wiki."
      redirect_to @wiki
    else
      flash[:notice] = "Error deleting collaborator. Some kind of error happened. Dilate the reverse flux drive and try again. "
      redirect_to @wiki
    end

#    @collab_user = User.find_by(email: params[:remove_collaborator])
#    @wiki = Wiki.find(params[:wiki_id])
#    @collaborator = Collaborator.where( (user_id: @collab_user.id) && (wiki_id: @wiki.id) )
#    if @collaborator
#      @collaborator.destroy
#      flash[:notice] = "You have successfully removed #{params[:remove_collaborator]} from this wiki."
#      redirect_to @wiki
#    else
#      flash[:notice] = "Error, either: #{params[:remove_collaborator]} was spelled wrong, or #{params[:remove_collaborator]} is not a collaborator on this wiki."
#      redirect_to @wiki
#    end
  end

end
