class CapsulePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def resolve
      scope.all # If users can see all restaurants
      # scope.where(user: user) # If users can only see their restaurants
      # scope.where("name LIKE 't%'") # If users can only see restaurants starting with `t`
      # ...
    end
  end

<<<<<<< HEAD
  def new?
    true
  end

  def show?
    true
  end

  def create?
=======
  def show?
>>>>>>> master
    true
  end
end
