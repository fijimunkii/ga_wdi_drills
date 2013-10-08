require_relative 'product'

p1 = Product.new(10.82, "Mmm, yummy")
p p1

p1.price = 9001.00
p p1

p1.description = "Mm, not so yummy"
p p1

p p1.price
p p1.description
