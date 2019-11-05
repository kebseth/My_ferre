class ProduitsController < ApplicationController
  def new
    @produit = Produit.new
  end

  def create
    @produit = Produit.new(rent_params)
    @produit.user = current_user
    save_produit
  end

  def destroy
  end

  private

  def rent_params
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
