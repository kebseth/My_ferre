class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @produits = Produit.all
    @user = current_user
  end
end
