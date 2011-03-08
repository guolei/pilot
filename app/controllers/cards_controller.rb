class CardsController < ApplicationController
  def show
    @card = Card.find_or_create_by_sn(params[:id])
    if @card.user.present?
      redirect_to user_path(@card.user)
    end
  end
end
