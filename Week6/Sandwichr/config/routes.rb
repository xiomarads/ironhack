Rails.application.routes.draw do
  resources :ingredients
  resources :sandwiches, except: [:new, :edit]
  resources :ingredients, except: [:new, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
