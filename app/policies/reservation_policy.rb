class ReservationPolicy < ApplicationPolicy
  def show?
    record.user == user
  end

  def create?
    true
  end

  def destroy?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end

