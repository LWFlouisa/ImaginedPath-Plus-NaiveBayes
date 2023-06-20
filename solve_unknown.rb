character_fates    = File.readlines("_narratives/outcomes/character_fates.txt")
character_outcomes = File.readlines("_narratives/outcomes/character_outcomes.txt")

open("_imaginedpath/outcomes/input.txt", "w") { |f|

  ## These values will eventually be switched to an AI based system.
  chosen_fate    =    character_fates[1].strip
  chosen_outcome = character_outcomes[0].strip
  
  puts "#{chosen_fate} #{chosen_outcome}\n"
  
  ## Write hidden outcome path as an input string.
  f.print "#{chosen_fate} #{chosen_outcome}\n"
}