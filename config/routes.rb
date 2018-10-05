Rails.application.routes.draw do
  # get 'topics/index'
  resources :user_topics, only: [ :index, :new, :create ]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "topics#index"
end
