Rails.application.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    resources :foos
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static#index'

end
