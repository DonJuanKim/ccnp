class DashboardsController < ApplicationController
  def dashboard
    # TODO
    # authorize current_user
    # authorize @capsule
    @capsules = policy_scope(Capsule.where(user_id: current_user.id))
    # @capsules = Capsule.where(user_id: current_user.id)
    # authorize @capsuless
    # @capsules = policy_scope(Capsule).where(user == user)
    # raise
  end
end
