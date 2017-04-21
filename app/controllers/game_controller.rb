class GameController < ApplicationController
  def play_rock
    moves=["Rock","Scissors","Paper"]
    @computer_move=moves.sample
    if @computer_move=="Rock"
      then @outcome="tied"
    elsif @computer_move=="Paper"
      then @outcome="lost"
    else @outcome="won"
      end
  end
    render("game/play_rock.html.erb")

  def play_paper
  moves=["Scissors","Rock","Paper"]
  @computer_move=moves.sample
  if @computer_move=="Rock"
    then @outcome="lost"
  elsif @computer_move=="Paper"
    then @outcome="tied"
  else @outcome="won"
    end
  end
render("game/play_paper.html.erb")

    def play_scissors
    moves=["Scissors","Rock","Paper"]
    @computer_move=moves.sample
    if @computer_move=="Rock"
      then @outcome="lost"
    elsif @computer_move=="Paper"
      then @outcome="won"
    else @outcome="tied"
      end
end
render("game/play_scissors.html.erb")
end
