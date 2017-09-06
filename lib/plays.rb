class Game
  def initialize()
    @p1_score = 0
    @p2_score = 0
  end
  def p1_score
    @p1_score
  end
  def p2_score
    @p2_score
  end
  def p1_score=(score)
    @p1_score = score
  end
  def p2_score=(score)
    @p2_score = score
  end

  def gameLoop
    continue = true
    while continue
      puts "Pick a move P1: 'ruby', 'paper', 'scissors'"
      player1 = gets.chomp
      puts "Pick a move P2: 'ruby', 'paper', 'scissors'"
      player2 = gets.chomp
      result = wins?(player1,player2)
      if result === "tie"
        puts "It was a tie, shoot again"
      elsif result === "invalid"
        # Play again
      else
        winner(result)
        puts "Player 1 Score = #{self.p1_score}"
        puts "Player 2 Score = #{self.p2_score}"
        puts "Want to play again? y/n"
        decision = gets.chomp
        if decision === "n"
          continue = false
        end
      end
    end
  end

  def wins?(play1, play2)
    if {"scissors" => "test", "paper" => "test", "ruby" => "test"}.has_key?(play2)
      if play1 === "ruby"
        {"scissors" => true, "paper" => false, "ruby" => "tie"}.fetch(play2)
      elsif play1 === "paper"
        {"scissors" => false, "paper" => "tie", "ruby" => true}.fetch(play2)
      elsif play1 === "scissors"
        {"scissors" => "tie", "paper" => true, "ruby" => false, }.fetch(play2)
      else
        puts "Some invalid move"
        "invalid"
      end
    else
      puts "Some invalid move"
      "invalid"
    end
  end

  def winner(res)
    if res
      puts "Player 1 wins!! :D"
      self.p1_score = self.p1_score + 1
    else
      puts "Player 2 wins!! :D"
      self.p2_score = self.p2_score + 1
    end
  end
end
