module ApplicationHelper
  def purchase_ticket(game)
    form_tag do
      javascript_include_tag 'https://checkout.stripe.com/v2/checkout.js',
                             class: 'stripe-button',
                             data: { key: Rails.configuration.stripe_public }

    end
  end
end
