class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @capsules = Capsule.all.last(3)
  end
end
