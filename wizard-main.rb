require_relative 'wizard'

harry = Wizard.new("Harry Potter")

harry.learn("Lumos")

harry.learn("Accio")

harry.learn("Expecto Patronum")

p harry.to_s