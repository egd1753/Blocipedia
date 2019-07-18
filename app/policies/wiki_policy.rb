class WikiPolicy < ApplicationPolicy
   class Scope
     attr_reader :user, :scope

     def initialize(user, scope)
       @user = user
       @scope = scope
     end

     def index?
       true
     end


    def resolve
      if @user.admin? || @user.premium?
        scope.all
      else
        scope.where(private: false)
      end
    end

    def resolve
      wikis = []
      if @user.admin?
        wikis = scope.all # if the user is an admin, show them all the wikis
      elsif @user.premium?
        all_wikis = scope.all
        all_wikis.each do |wiki|
          if !wiki.private? || wiki.user_id == @user.id || wiki.users.include?(@user)
            wikis << wiki # if the user is premium, only show them public wikis, or that private wikis they created, or private wikis they are a collaborator on
          end
        end
      elsif @user.standard? # this is the lowly standard user
        all_wikis = scope.all
        wikis = []
        all_wikis.each do |wiki|
          if !wiki.private? || wiki.users.include?(@user)
            wikis << wiki # only show standard users public wikis and private wikis they are a collaborator on
          end
        end
      else
        return "error"
      end
      wikis # return the wikis array we've built up
    end

  end

end
