Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope :api do
    scope :v1 do
      resources :users
    end
  end
  root 'users#index'
end
