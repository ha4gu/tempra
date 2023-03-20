Rails.application.routes.draw do
  devise_for :users
  devise_for :administrators

  root to: "top#index"

  mount RailsAdmin::Engine, at: "/kanri", as: "rails_admin"
end
