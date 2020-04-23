class Nutri::DashboardPolicy < ApplicationPolicy
  def dashboard?
    return false unless user && user.role == "nutri"
    true
  end
end
