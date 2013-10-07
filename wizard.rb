class Wizard

	def initialize(name)
		@name = name
		@spells = Array.new
	end

	def name=(name)
		@name = name
	end

	def name
		@name
	end

	def learn(spell)
		@spells << spell
	end

	def forget(spell)
		@spells.delete(spell)
	end

	def to_s
		"#{@name} is a wizard who knows how to cast #{@spells.join(", ")}"
	end

end