class SimplePagesController < ApplicationController
  def index
  end
  def about
  end
  def contact
    redirect_to '/simple_pages/about'
  end
  def landing_page
    @featured_products = Product.limit(3)
  end
end
