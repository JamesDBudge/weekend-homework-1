def pet_shop_name(petshop)
  return petshop[:name]
end

def total_cash(petshop)
  return petshop[:admin][:total_cash]
end

def add_or_remove_cash(petshop, amount)
  petshop[:admin][:total_cash] += amount
end

def pets_sold(petshop)
  return petshop[:admin][:pets_sold]
end

def increase_pets_sold(petshop, sold_pets)
  petshop[:admin][:pets_sold] += sold_pets
end

def stock_count(petshop)
  return petshop[:pets].length
end

def pets_by_breed(petshop, breed_being_searched_for)
  pets_of_this_breed = []
  for animal in petshop[:pets]
    if animal[:breed] == breed_being_searched_for
      pets_of_this_breed << animal
    end
  end
  return pets_of_this_breed
end

def find_pet_by_name(petshop, name_of_pet)
  pet_by_name = nil
  for animal in petshop[:pets]
    if animal[:name] == name_of_pet
      pet_by_name = animal
    end
  end
  return pet_by_name
end

def remove_pet_by_name(petshop, name_of_pet_to_be_removed)
  for animal in petshop[:pets]
    if animal[:name] == name_of_pet_to_be_removed
      petshop[:pets].delete(animal)
    end
  end
end

def add_pet_to_stock(petshop, new_pet)
  petshop[:pets] << new_pet
end

def customer_cash(customers)
  return customers[:cash]
end

def remove_customer_cash(customers, amount_of_cash_to_remove)
  customers[:cash] -= amount_of_cash_to_remove
end

def customer_pet_count(customers)
  return customers[:pets].length
end

def add_pet_to_customer(customers, new_pet)
  customers[:pets] << new_pet
end


#OPTIONAL TESTS START HERE!!!!!


def customer_can_afford_pet(customers, new_pet)
  if customers[:cash] > new_pet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(petshop, pet_to_be_sold, customer_name)
  if pet_to_be_sold == nil

  else
    if customer_can_afford_pet(customer_name, pet_to_be_sold) == true
      remove_customer_cash(customer_name, pet_to_be_sold[:price])
      add_or_remove_cash(petshop, pet_to_be_sold[:price])
      add_pet_to_customer(customer_name, pet_to_be_sold)
      increase_pets_sold(petshop, 1)
    end
  end
end
