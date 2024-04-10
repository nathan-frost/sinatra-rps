require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/rock") do

  moves = ["rock","paper","scissors"]

  @cpu_move = moves.sample

  if @cpu_move == "rock"
    @outcome = "tied"
  elsif @cpu_move == "paper"
    @outcome = "lost"
  elsif @cpu_move == "scissors"
    @outcome = "won"
  end
  erb(:rock)
end

get("/paper") do

  moves = ["rock","paper","scissors"]

  @cpu_move = moves.sample

  if @cpu_move == "rock"
    @outcome = "won"
  elsif @cpu_move == "paper"
    @outcome = "tie"
  elsif @cpu_move == "scissors"
    @outcome = "lost"
  end
  erb(:rock)
end

get("/scissors") do

  moves = ["rock","paper","scissors"]

  @cpu_move = moves.sample

  if @cpu_move == "rock"
    @outcome = "lost"
  elsif @cpu_move == "paper"
    @outcome = "won"
  elsif @cpu_move == "scissors"
    @outcome = "tie"
  end
  erb(:rock)
end
