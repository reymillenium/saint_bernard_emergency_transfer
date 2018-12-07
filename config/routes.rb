Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :images

  # I create my first ROR route, to see how it works
  get 'greetings_page', to: 'greeting#show_greetings'


end
