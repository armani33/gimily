Rails.application.routes.draw do
  devise_for :users, skip: [:sessions, :registrations]
  as :user do
    get 'login', to: 'devise/sessions#new', as: :new_user_session
    post '/', to: 'devise/sessions#create', as: :user_session
    delete 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
    get "/registration" => "devise/registrations#new", as: :new_user_registration # custom path to sign_up/registration
  end
  root to: "pages#home"
end
