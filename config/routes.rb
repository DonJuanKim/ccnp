Rails.application.routes.draw do
  get 'dashboard/view'
  devise_for :users
  root to: "pages#home"

  resources :capsules, only: %i[index show new create] do
    resources :bookings, only: %i[create update] do
      get :accept, on: :member
      get :decline, on: :member
    end
  end

  get 'dashboard', to: 'dashboards#dashboard', as: 'dashboard'
  # patch 'dashboard/:bookings_id/accept', to: 'dashboards#accept', as: 'accept_dashboard'

  # devise_scope :user do
  #    to: "pages#home"
  # end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
