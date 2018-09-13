class ApresentacoesController < ApplicationController
  before_action :autenticacao


  layout 'home'

<<<<<<< HEAD
  def index;end

  def colaboradores;end

=======

  end
  def colaboradores

  end
  def autenticacao
    if !current_user.nil?
      redirect_to minha_paginas_path
    end
  end
>>>>>>> c01966191d7a1da99fafc70aeebf2dba5652ba15
end
