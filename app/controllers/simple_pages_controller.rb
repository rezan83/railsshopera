class SimplePagesController < ApplicationController
  def index
  end
  def about
  end
  def contact
  end
  def landing_page
    @featured_products = Product.limit(3)
  end
  def thank_you
    @name = params[:name]
    @email = params[:email]
    @subject = "A new contact form message from #{@name}"
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end
end
