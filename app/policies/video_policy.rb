class VideoPolicy < ApplicationPolicy
  def create?
    user != nil
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

end
