Rails.application.routes.draw do

  get 'home/index'
  get 'home/bp'

  get 'fitbit/new'

  get 'pulse/new'

  get 'ihealth/new'

  get '/patient/temp_patient' => 'api#new'

  root :to => "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
