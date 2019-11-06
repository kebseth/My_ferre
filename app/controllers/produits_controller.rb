class ProduitsController < ApplicationController
  def new
    @produit = Produit.new
  end

  def create
    @produit = Produit.new(produit_params)
    @produit.user = current_user
    save_produit
  end

  def destroy
    @produit = Produit.find(params[:format])
    if @produit.destroy
      redirect_to root_path
    else
      render :home
    end
  end

  private

  def produit_params
    params.require(:produit).permit(:nom, :description, :photo)
  end

  def save_produit
    if @produit.save
      redirect_to root_path
    else
      render :new
    end
  end
end
