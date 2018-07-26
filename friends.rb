def get_name(person)
  return person[:name]
end

def fav_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  # person refers to the @person2
  # food refers to "bread"
return person[:favourites][:snacks].include?(food)
  # # loop through the persons snacks
  #   for snack in person[:favourites][:snacks]
  #     # return true if the food is there
  #     return true if food == snack
  #   end
end

def add_friend(person, friend)
  person[:friends] << friend
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_money(people)
  total = 0

  for person in people
    total += person[:monies]
  end

  return total
end

def lend_money(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end

def get_all_snacks(people)
  result = []
  for person in people
    result.concat(person[:favourites][:snacks])
    # for snack in person[:favourites][:snacks]
    #   result << snack
    # end
  end
  return result
end

def nae_mates(people)
  no_friends = []
  for person in people
    if person[:friends].empty?()
      no_friends.push(person)
      end
  end
  return no_friends
end
