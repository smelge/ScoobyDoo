def get_name(person)
  return person[:name]
end

def get_show(person)
  return person[:favourites][:tv_show]
end

def check_food(person,food)
  snack_array = person[:favourites][:snacks]
  for snack in snack_array
    if food == snack
      return true
    end
  end
  return false
end

def new_friend(person, new_guy)
  return person[:friends].push(new_guy).length
end

def doomed(person, victim)
  victim_index = person[:friends].index(victim)
  person[:friends].delete_at(victim_index)
  return person[:friends].length
end

def money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def lending(lender,recipient,amount)
  lender[:monies] = lender[:monies] - amount
  recipient[:monies] = recipient[:monies] + amount
  money_array = lender[:monies],recipient[:monies]
  return money_array
end

def foods(people)
  snack_string = ""
  for person in people
    for snack in person[:favourites][:snacks]
      snack_string << snack + " "
    end
  end
  return snack_string
end

def so_sad(people)
  sadsacks =[]
  for person in people
    if person[:friends].length == 0
      sadsacks << person[:name]
    end
  end
  return sadsacks
end
