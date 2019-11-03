#It's a guessing game that will iterative guess what number a user is thinking of, between some maximum value and some minimum value, and efficiently narrow in on an answer as the user responds with "too low" and "too high" feedback.

defmodule GuessingGame do
  #strategy to guess number
  # Guess number between range of higher and lower number -> Guess middle number
  # tell user our guess
  # "Yes" -> Correct
  # "Bigger number" -> Call Bigger(high,low) function
  # "Smaller number" -> Call Smaller(high,low) function
  # Anything else -> Throw valid exception message to input valid response


  def guess(low,high) when low > high, do: guess(high,low)

  def guess(low,high) do
    answer = IO.gets("May be you are thinking of #{mid(low,high)}\n")

    case String.trim(answer) do
      "bigger" ->
        bigger(low,high)
      "smaller" ->
        smaller(low,high)
      "yes" ->
        IO.puts("I guessed correct number")
      _ ->
        IO.puts(~s(Please enter "bigger", "smaller" or "yes" ))
        guess(low,high)
    end
  end

  #Function to get middle number
  def mid(low, high) do
    div(low + high, 2)
  end

  def bigger(low,high) do
    new_low = min(high,mid(low,high) + 1)
    guess(new_low,high)
  end

  def smaller(low,high) do
    new_high = max(low,mid(low,high) - 1)
    guess(low,new_high)
  end

end
