class ApresentacoesController < ApplicationController
  before_action :autenticacao


  layout 'home'
  def index


  end
  def colaboradores

  end
  def autenticacao
    if !current_user.nil?
      redirect_to minha_paginas_path
    end
  end
end
