def get_name(person)
  return person[:name]
end

def get_tv(person)
  return person[:favourites][:tv_show]
end

def get_food(person, food)
  for snack in person[:favourites][:snacks]
  if food == snack
    return true
  end
  end
  return false
end

def add_friend(person, friend)
  person[:friends] << friend
  return person[:friends].length
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
  return person[:friends].length
end

def total_monies(people)
  total_monies = 0
  for person in people
    total_monies += person[:monies]
  end
  return total_monies
end

def money_lending_recieving(lender, lendee, amount)
    amount = lender[:monies]
    lendee[:monies] += amount
    return lendee[:monies]
end

def money_lending_giving(lender, lendee, amount)
    amount = lender[:monies]
    lendee[:monies] += amount
    lender[:monies] -= amount
    return lender[:monies]
end

def everyone_favourite_food(people)
  fav_foods = []
  for person in people
    fav_foods.push(person[:favourites][:snacks])
  end
  return fav_foods.join(", ")
end
