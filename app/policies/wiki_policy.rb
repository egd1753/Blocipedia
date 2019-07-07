class WikiPolicy
  class Scope
    attr_reader :user, :wiki

    def initialize(user, wiki)
      @user = user
      @wiki = wiki
    end

    def index?
      true
    end

    def resolve
      if @user.admin? || @user.premium?
        wiki.all
      else
        wiki.where(private: false)
      end
    end


  end

end
