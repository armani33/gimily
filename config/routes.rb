Rails.application.routes.draw do
  devise_for :users, skip: [ :registrations]
  as :user do
    get "/registration" => "devise/registrations#new", as: :new_user_registration # custom path to sign_up/registration
  end
  root to: "pages#home"
end
