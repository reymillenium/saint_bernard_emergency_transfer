Rails.application.routes.draw do

  # Changing the default main page to the patient's index view
  get '/', to: 'patients#index'

  resources :patients, only: [:index] do
    get 'transfer'
  end

  # The about view (extra)
  get 'about', to: 'about#show'

end
