class VideoPolicy < ApplicationPolicy
  def create?
    user != nil
  end

end
