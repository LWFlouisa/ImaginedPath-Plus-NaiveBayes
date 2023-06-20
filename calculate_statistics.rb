require "naive_bayes"

outcomes = NaiveBayes.new(:worst,
                      :nuetral,
                      :best,
)

## Train specific outcomes on Naive Bayes.
outcomes.train(:worst,    "[ Charlotte Dies ] [ Never Dates Player ]",   "worst")
outcomes.train(:nuetral,        "[ Charlotte Dies ] [ Dates Player ]", "nuetral")
outcomes.train(:nuetral, "[ Charlotte Lives ] [ Never Dates Player ]", "nuetral")
outcomes.train(:best,          "[ Charlotte Lives ] [ Dates Player ]",    "best")

outcome_file = File.readlines("_imaginedpath/outcomes/input.txt")
row      = 0

outcome_rotation = outcome_file.size.to_i

## This way you never have to worry about how long your input file ends up becoming.
outcome_rotation.times do
  sleep(1)

  chosen_outcome = outcome_file[row]

  result = outcomes.classify(*chosen_outcome)

  print result
  puts " "

  row = row + 1
end