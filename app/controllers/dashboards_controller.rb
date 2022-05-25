class DashboardsController < ApplicationController
  def dashboard
    @capsules = policy_scope(Capsule.where(user_id: current_user.id))
  end
end
