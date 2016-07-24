def pet_shop_name(petshop)
  petshop[:name]
end


def total_cash(petshop)
  petshop[:admin][:total_cash]
end


def add_or_remove_cash(petshop,amount)
 petshop[:admin][:total_cash] += amount
end

  

def pets_sold(petshop)
  petshop[:admin][:pets_sold] 
end


def increase_pets_sold(petshop,amount)
  petshop[:admin][:pets_sold] += amount
end


def stock_count(petshop)
  petshop[:pets].length
end


def pets_by_breed(petshop, breed)
  pets_of_type = []
  for value in petshop[:pets]
    if value [:breed] == breed
      pets_of_type << value
    end
  end
      return pets_of_type
end


def find_pet_by_name(petshop, name)
  for value in petshop[:pets]
    if value[:name] == name
      return value
    end
  end
  return nil
end
    

def remove_pet_by_name(petshop, name)
  for value in petshop[:pets]
      if value[:name] == name
        petshop[:pets].delete (value)
      end
  end
    return nil
end


def add_pet_to_stock(petshop, newpet)
  result = petshop[:pets].push (newpet)
  return result.length
end


def customer_pet_count(customers)
  customers[:pets].length
end


def add_pet_to_customer(customer, newpet)
  result = customer[:pets].push (newpet)
  return result.length
end


def customer_can_afford_pet(customer, newpet)
  if customer[:cash] > newpet[:price]
    return true
  else
    return false
  end
end



def sell_pet_to_customer(petshop, pet, customer)
  if pet == nil 
    return false
  else
    while customer[:cash] > pet[:price] do
    customer[:cash] -= pet[:price]
    customer[:pets].push(pet)
    petshop[:admin][:pets_sold] += 1
    petshop[:admin][:total_cash] += pet[:price]
    end
  end
end








