if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_5ppmubMaqf6b1YePafnZJPma',
    secret_key: 'sk_test_4YJlBH4peqj3uZ2eXTQvu23o'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]