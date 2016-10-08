Rails.application.routes.draw do
  resources :video2tags
  resources :tags
  resources :videos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
