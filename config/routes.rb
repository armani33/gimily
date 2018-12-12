Rails.application.routes.draw do
  devise_scope :user do
    get "/log_in" => "devise/sessions#new" # custom path to login/sign_in
    get "/registration" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end
  devise_for :users

  root to: "pages#home"
end
