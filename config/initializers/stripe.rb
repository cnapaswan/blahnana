Rails.configuration.stripe = {
  :publishable_key => ENV['PUBLISHABLE_STRIPEKEY'],
  :secret_key      => ENV['SECRET_STRIPEKEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]