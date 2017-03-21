class LinkStatesAndCapitals

  attr_reader :name, :states, :capitals

  def initialize(name)
    @name = name
    @states = {"Oregon" => "OR",
          "Alabama" => "AL",
          "New Jersey" => "NJ",
          "Colorado" => "CO"}
    @capitals = {"OR" => "Salem",
            "AL" => "Montgomery",
            "NJ" => "Trenton",
            "CO" => "Denver"}

  end

  def find_capital
    if states.has_key?(name)
      print capitals[states[name]]
    else
      print "Unknown"
    end
  end
  
end

query = LinkStatesAndCapitals.new("Oregon")

puts query.find_capital