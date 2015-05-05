def create_character(first_name:, last_name:, klass:, hitpoints:, weapon:)
  hash = {first_name:first_name, last_name:last_name, klass:klass, hitpoints:hitpoints, weapon:weapon}
  return hash
end

def describe_character(character:)
  if character[:hitpoints] >= 100
    phrase = "quite healthy"
  elsif character[:hitpoints] >= 75
    phrase = "lightly wounded"
  elsif character[:hitpoints] >=50
    phrase = "moderately wounded"
  elsif character[:hitpoints] >=25
    phrase = "badly wounded"
  elsif character[:hitpoints] >0
    phrase = "close to death"
  else
    phrase = "dead"
    return "#{character[:first_name]} #{character[:last_name]} the #{character[:klass]} is #{phrase}.\n Beside the corpse lies a #{character[:weapon]}"
  end
  return "#{character[:first_name]} #{character[:last_name]} the #{character[:klass]} wields a #{character[:weapon]}\n #{character[:first_name]} appears #{phrase}"
end

def hit_character(character:, damage:)
  character[:hitpoints] -= damage
  return character
end



