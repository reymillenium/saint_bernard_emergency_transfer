Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Changing the default main page (root)
  get '/', to: 'patients#index'

  resources :patients, only: [:index] do
    get 'transfer'
  end

  # Other functionalities
  get 'about', to: 'about#show'

end
