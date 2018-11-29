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
