class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    user = User.from_oauth(request.env["omniauth.auth"])
    sign_in_and_redirect(user)
  end
end
