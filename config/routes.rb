Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  match '/memberships' => 'survey#index',:via => [:get]
  match '/memberships' => 'survey#create',:via => [:post]
  resources :questions
  resources :survey
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
