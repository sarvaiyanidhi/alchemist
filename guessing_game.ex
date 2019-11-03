#It's a guessing game that will iterative guess what number a user is thinking of, between some maximum value and some minimum value, and efficiently narrow in on an answer as the user responds with "too low" and "too high" feedback.

defmodule GuessingGame do
  #strategy to guess number
  # Guess number between range of higher and lower number -> Guess middle number
  # tell user our guess
  # "Yes" -> Correct
  # "Bigger number" -> Call Bigger(high,low) function
  # "Smaller number" -> Call Smaller(high,low) function
  # Anything else -> Throw valid exception message to input valid response
end
