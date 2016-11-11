Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/', to: 'landing_pages#home', as: 'home'
get 'users/:id', to: 'users#show', as: 'user'
end
