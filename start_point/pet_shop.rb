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
