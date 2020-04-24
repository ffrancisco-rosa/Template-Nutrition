class Nutri::PagePolicy < ApplicationPolicy

  def home?
    return false unless user && user.role == "nutri"
    true
  end
end
