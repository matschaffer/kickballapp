class Ticket < ActiveRecord::Base
  belongs_to :game
  belongs_to :user

  attr_accessible :user

  def cents
    500
  end

  def price
    sprintf("$%.2f", cents.to_f / 100)
  end

  def charge_card(card)
    Stripe::Charge.create(
        amount: cents,
        currency: "usd",
        card: card,
        description: description
    )
  end

  def description
    game.title + " (" + price + ")"
  end
end
