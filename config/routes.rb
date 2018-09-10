Rails.application.routes.draw do

  devise_for :users #users/sign_in users/sign_up users/sign_out
  resources :arquivos
  resources :minha_paginas

  resources :desaparecidos
  resources :apresentacoes do
    collection do
      get 'colaboradores'
      get 'patrocinadores'
      get 'sobre'
    end
  end

  authenticated :users do
    root to: 'minha_paginas#index', as: :authenticated_usuario
  end


  root :to => "apresentacoes#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
