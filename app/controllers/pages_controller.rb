class PagesController < ApplicationController
  before_action :authenticate_user

  def admin
    # Código para ação admin
  end

  private

  def authenticate_user
    unless current_user
      redirect_to login_path, alert: "Você precisa fazer login para acessar esta página."
    end
  end
end