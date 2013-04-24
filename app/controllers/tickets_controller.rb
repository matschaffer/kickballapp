class TicketsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @game = Game.find(params[:game_id])
    @ticket = @game.tickets.build(user: current_user)
  end

  def create
    @game = Game.find(params[:game_id])
    @ticket = @game.tickets.build(user: current_user)
    if @ticket.save
      @ticket.charge_card(params[:stripeToken])
      redirect_to @game, notice: 'Thank you for your purchase, see you at the game!'
    else
      render 'new'
    end
  end
end