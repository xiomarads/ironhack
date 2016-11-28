Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to:"main#home"
  #using root gives you the path
  scope :api do
    resources(:tracks, {only: [:index], controller: "tracks_api"})
    # customizing resources via this hash, to avoid name conflicts later on.
    # all api routes go inside of scope.
  end
end
