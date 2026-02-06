class Order < ApplicationRecord
  def index
    @order = Order.all
  end
  def new 
  end
  has_many :products,foreign_key: product_id
end
