# It's a program that asks your name and then greets you by name... and has a special response for its programmer.


defmodule Greeter do

  def greeting do
    answer = IO.gets("Hi there.. what is your name?\n")

    case String.trim(answer) do
    "nidhi" ->
      IO.puts "Wow that is very nice name"
    _ ->
      IO.puts "Hello #{String.trim(answer)} it is pleasure to meet you"
    end

  end

end
