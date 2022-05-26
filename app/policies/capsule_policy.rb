class CapsulePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def resolve
      scope.all # if CapsulesController.index # If users can see all restaurants
      # raise
      # scope.where(user: user) # If users can only see their restaurants
      # scope.where("name LIKE 't%'") # If users can only see restaurants starting with `t`
      # ...
    end
  end

  def new?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def destroy?
    true
  end
end
