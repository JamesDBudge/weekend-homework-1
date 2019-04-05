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
