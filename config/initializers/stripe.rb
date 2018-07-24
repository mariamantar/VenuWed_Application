Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_QKP3QOPG1JA2xgHPIrX1lX4C'],
  :secret_key      => ENV['sk_test_TYLTVQ4mbcsshTeckqUm2j4V']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
