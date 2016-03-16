
class User
  require 'faker'
  require 'json'

  def initialize # 0 arguments
    @name = Faker::Name.name # faker is a library designed to fake shit
    @address = Faker::Address.street_address
    @email = Faker::Internet.email
  end

  def to_hash
    return {
      :name => @name,
      :address => @address,
      :email => @email
    }
  end

  def to_json
    self.to_hash.to_json
  end
  def to_s
    puts "Name: #{@name} \n Address: #{@address} \n Email: #{@email}"
  end
end
