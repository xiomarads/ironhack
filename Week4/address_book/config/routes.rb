Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'contacts#index'
  get '/contacts', to: 'contacts#index'
end
