Rails.application.routes.draw do
  get 'fitbit/new'

  get 'pulse/new'

  get 'ihealth/new'

  get '/patient/temp_patient' => 'api#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
