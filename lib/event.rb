class Event
  attr_reader :name,
              :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    food_trucks.map do |food_truck|
      food_truck.name
    end
  end

  def food_trucks_that_sell(item)

    acc = []
    food_trucks.each do |food_truck|
      food_truck.inventory.each do |inventory|
        if inventory[0].name == item.name
          acc << food_truck
        end
      end
    end
    acc
  end

  def total_inventory
    acc = {}
    food_trucks.each do |food_truck|
      food_truck.inventory.each do |inventory|
      require "pry"; binding.pry
      end 
    end
  end
end
