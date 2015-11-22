
class GameLogic

  def initialize(player_hand)
    @player_hand = player_hand
    @computer_hand = nil
  end

  def computer_hand(computer_hand = rand(3))
    @computer_hand = computer_hand
    case
    when @computer_hand == 0
      @computer_hand = "Rock"
    when @computer_hand == 1
      @computer_hand = "Paper"
    when @computer_hand == 2
      @computer_hand = "Scissors"
    end
  end

#0 = tie
#1 = player
#2 = computer
  def choose_winner
    case
    when @computer_hand == "Rock" && @player_hand == "Rock"
      return 0
    when @computer_hand == "Rock" && @player_hand == "Paper"
      return 1
    when @computer_hand == "Rock" && @player_hand == "Scissors"
      return 2
    when @computer_hand == "Paper" && @player_hand == "Paper"
      return 0
    when @computer_hand == "Paper" && @player_hand == "Scissors"
      return 1
    when @computer_hand == "Paper" && @player_hand == "Rock"
      return 2
    when @computer_hand == "Scissors" && @player_hand == "Scissors"
      return 0
    when @computer_hand == "Scissors" && @player_hand == "Paper"
      return 2
    when @computer_hand == "Scissors" && @player_hand == "Rock"
      return 1
    else
    end
  end

  def choose_game_winner(computer_score, player_score)
    if player_score == 3
      return "player"
    elsif computer_score == 3
      return "computer"
    else
      return "continue"
    end
  end

end
