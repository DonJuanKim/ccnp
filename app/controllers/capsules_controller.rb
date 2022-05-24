class CapsulesController < ApplicationController
  def index
    @capsules = Capsule.all
  end

  def show
    authorize @capsule
    @capsule = Capsule.find(params[:id])
  end

  def new
    @capsule = Capsule.new
    authorize @capsule
  end

  def create
    # TODO: method body, pundit
  end
end
