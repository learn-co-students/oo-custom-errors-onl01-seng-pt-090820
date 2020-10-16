


class Person
    attr_accessor :partner, :name

    def initialize(name)
      @name = name
    end

   
  def get_married(person)
    self.partner = person
    if person.class != Person
      # If the object passed into the method as an argument 
      # *is not* an instance of the'Person` class,
      # we will `begin` our error handling. 
      begin
        raise PartnerError  # First, we `raise` our `PartnerError`,        
      rescue PartnerError => error # then we `rescue` our `PartnerError`
      # rescue method creates an instance of the `PartnerError` class    
      #  and`puts` out the result of calling result of calling
      # `message` on that instance  
        puts error.message
      end  
    else
      person.partner = self
    end
  end

    class PartnerError < StandardError

      def message
        "you must give the get_married method and
         argument of and instance of the person class!"
      end
    end
end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name



