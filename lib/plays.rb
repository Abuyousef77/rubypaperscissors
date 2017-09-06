class Game
  def initialize()

  end
  # rock = {"scissors" => true, "paper" => false, "rock" => ""}
  def wins?(play1, play2)
    if play1 === "ruby"
      {"scissors" => true, "paper" => false, "ruby" => 1}.fetch(play2)
    elsif play1 === "paper"
      {"scissors" => false, "paper" => 1, "ruby" => true}.fetch(play2)
    elsif play1 === "scissors"
      {"scissors" => 1, "paper" => true, "ruby" => false}.fetch(play2)
    end
  end

  def tie(turn)

  end
end
