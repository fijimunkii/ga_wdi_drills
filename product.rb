class Product

  attr_accessor :price, :description

  def initialize(price, description)
    @price = price #float
    @description = description #string
  end

  def to_hash
    {:price => @price, :description => @description}
  end

end
