Rails.application.routes.draw do
  get '/', to: 'site#home'  #homepage
                  # ||
            #controller/action
  get '/contact', to: 'site#contact' #contactpage
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/say_name/:name', to: 'site#say_name'

  get '/calculator', to: 'calculator#add_form'

  post '/calculate', to: 'calculator#process_addition'    #from the form

end
