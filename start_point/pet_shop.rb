# CodeClan Homework - week 1 weekend

# Return Pet Shop Name
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

# Return Pet Shop Total Cash
def total_cash(pet_shop_total_cash)
  return pet_shop_total_cash[:admin][:total_cash]
end
#
# Add Remove Pet Shop Cash
def add_or_remove_cash(pet_shop, cash)
  return total_cash = pet_shop[:admin][:total_cash] += cash
end
#
# Return Pets Shop Pets Sold
def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end
#
# Increase Pets Sold
def increase_pets_sold(pet_shop, pets_sold)
  return pet_shop[:admin][:pets_sold] += pets_sold
end
#
# Number of Pet in Stock
def stock_count(pet_shop)
  return pet_shop[:pets].count()
end

# Number of Pets by Breed
def pets_by_breed(pet_shop, breed_type)
  breed = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed_type
      breed.push(pet) #add pet to breed array
    end
  end
  return breed #do not return count as this called in the test
end
#
# Return Pets by Name
def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

# Remove Pets by Name (delete)
def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_shop[:pets].delete(pet)
    end
  end
end

# Add (Push) Pet to Stock
def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

# How much Cash a Customer has
def customer_cash(customer)
  return customer[:cash]
end

# Remove Customer's Cash
def remove_customer_cash(customer, cash)
  customer[:cash] -= cash
end

# Count Customer's Pets
def customer_pet_count(customer)
  return customer[:pets].size()
end

# Add (Push) New Pet
def add_pet_to_customer(customer, new_pet)
customer[:pets].push(new_pet)
end


# EXTENSIONS GO HERE

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  else
    return false
  end
end


# It was a beaver

#
