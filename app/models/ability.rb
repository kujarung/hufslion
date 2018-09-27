class Ability
  include CanCan::Ability
  
  def initialize(user)
      can [:read, :create], :all
        can [:update, :destroy], Inclass, user_id: user.id
        can [:update, :destroy], Qna, user_id: user.id
        can [:update, :destroy], Tip, user_id: user.id
        can [:update, :destroy], Notice, user_id: user.id
    # Define abilities for the passed in user here. For example:
    #
    # user ||= User.new # guest user (not logged in)
      if user.nil?
        can :read, :all
      elsif user.has_role? 'newbie'
        can [:read, :create], :all
        can [:update, :destroy], Inclass, user_id: user.id
        can [:update, :destroy], Qna, user_id: user.id
        can [:update, :destroy], Tip, user_id: user.id
        can [:update, :destroy], Notice, user_id: user.id
      elsif user.has_role? 'manager'
        can [:read, :create, :update], :all
        can :destroy, Inclass, user_id: user.id
        can :destroy, Qna, user_id: user.id 
        can :destroy, Tip, user_id: user.id 
        can :destroy, Notice, user_id: user.id 
      elsif user.has_role? 'admin'  
        can [:read, :create, :update, :destroy], :all
      end 
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
