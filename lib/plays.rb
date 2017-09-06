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

  def wins?(play1, play2)
    key_check = {"scissors" => "test", "paper" => "test", "ruby" => "test"}
    if key_check.has_key?(play2) & key_check.has_key?(play1)
      if play1 === "ruby"
        {"scissors" => true, "paper" => false, "ruby" => "tie"}.fetch(play2)
      elsif play1 === "paper"
        {"scissors" => false, "paper" => "tie", "ruby" => true}.fetch(play2)
      elsif play1 === "scissors"
        {"scissors" => "tie", "paper" => true, "ruby" => false}.fetch(play2)
      end
    else
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
