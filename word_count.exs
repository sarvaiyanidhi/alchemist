filename = IO.gets("File to count word from: ") |> String.trim
body = File.read!(filename) |> String.split(~r{[^\w]})
IO.inspect body
