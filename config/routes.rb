Rails.application.routes.draw do
  devise_for :users, path: "user", path_names: { sign_in: "login", sign_out: "logout" }
  devise_for :administrators, path: "kanri", path_names: { sign_in: "login", sign_out: "logout" }

  get "devise", to: "fixed#devise", as: "fixed_devise"

  root to: "top#index"

  mount RailsAdmin::Engine, at: "/kanri", as: "rails_admin"
end
