class SimplePagesController < ApplicationController
  def index
  end
  def about
  end
  def contact
  end
  def landing_page
    @featured = Product.first
  end
end
