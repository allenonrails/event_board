class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  
  def index?
    true
  end

  def edit?
    update?
  end

  def update?
    @record == @user
  end

  def destroy?
    update?
  end
end
