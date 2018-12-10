Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Changing the default main page (root)
  get '/', to: 'patients#index'

  resources :images

  # I create my first ROR route, to see how it works
  get 'greetings_page', to: 'greeting#show_greetings'

  resources :patients

    # A temporal theory. Didn't worked!
    # get 'emergency_transfer_summary', to: 'patient#emergency_transfer_summary'


end
