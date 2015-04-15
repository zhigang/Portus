Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'application#index'

  namespace :v2, module: 'api/v2', defaults: { format: :json } do
    resource :token, only: [ :show ]
  end

end