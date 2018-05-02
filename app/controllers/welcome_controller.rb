class WelcomeController < ApplicationController
  def index
    skip_policy_scope
  end

  def about
    skip_authorization
  end
end
