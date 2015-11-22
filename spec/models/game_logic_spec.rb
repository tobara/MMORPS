require "spec_helper"

describe GameLogic do

  describe '.choose_winner' do
    it '#assigns a point if the player wins' do
      game = GameLogic.new("Paper")
      game.computer_hand(0)
      expect(game.choose_winner).to eq(1)
    end

    it '#assigns a point of the computer wins' do
      game = GameLogic.new("Paper")
      game.computer_hand(2)
      expect(game.choose_winner).to eq(2)
    end

    it '#assigns a point if there is a tie' do
      game = GameLogic.new("Paper")
      game.computer_hand(1)
      expect(game.choose_winner).to eq(0)
    end
  end

  describe '.choose_game_winner' do
      it '#chooses a winner after three points' do



      end
  end

end