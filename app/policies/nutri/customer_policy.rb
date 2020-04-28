class Nutri::CustomerPolicy < ApplicationPolicy
  # [...]
  class Scope < Scope
    def resolve
      scope.where(nutri: user)
    end
  end

  def new?
    return true
  end

  def show?
    return true
  end

  def create?
    return true
  end

  def edit
    user_is_nutri?
  end

  def update
    user_is_nutri?
  end

  def destroy
    user_is_nutri?
  end


  private

  def user_is_nutri?
    record.user == nutri
  end
end
