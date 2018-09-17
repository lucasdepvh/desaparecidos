Rails.application.routes.draw do

  resources :relations
  resources :relatives
  resources :historics
  resources :disappeareds
  resources :streets
  resources :districts
  resources :cities
  resources :states
  resources :countries
  resources :statuses
  devise_for :users #users/sign_in users/sign_up users/sign_out

  resources :apresentacoes do
    collection do
      get 'colaboradores'
      get 'patrocinadores'
      get 'sobre'
    end
  end


  root :to => "apresentacoes#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
