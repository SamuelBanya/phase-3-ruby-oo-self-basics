class Dog
  attr_accessor :name, :owner

  def initialize(name)
    @name = name
  end

  def bark()
    "Woof!"
  end

  def get_adopted(owner_name)
    self.owner = owner_name
  end

end
# NOTE: This function was later incorporated into the 'Dog' class itself to utilize 'self'
# def adopted(dog, owner_name)
  # dog.owner = owner_name
# end

class NewDog
  def showing_self
    puts self
  end
end

fido = Dog.new("Fido")

# NOTE: Commented out in order to instead utilize the 'get_adopted' method:
# fido.owner = "Sam"
fido.get_adopted("Sam")

puts "fido.name: ", fido.name
puts "fido.bark: ", fido.bark
puts "fido.owner: ", fido.owner

# adopted(fido, "Sophie")
# puts "\nfido.owner (after adopted() function): ", fido.owner

puts "\nNow showcasing the 'NewDog' class:"
snoopy = NewDog.new
snoopy.showing_self
