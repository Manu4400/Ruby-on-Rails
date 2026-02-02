class Order < ApplicationRecord
  def index
    @order = Order.all
  end
  def new 
  end

end
