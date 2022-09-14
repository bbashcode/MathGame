class Game

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
  end

  def start_game
    puts "New Game!"
    turn
  end

  def stats
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def winner(player)
    puts "#{player.name} wins with a score of #{player.lives}/3"
    puts "------- Game Over -------"
    puts "Good bye!"
    exit(0)
  end

  def check_lives
    if @player1.no_lives
      winner(@player2)
    elsif @player2.no_lives
      winner(@player1)
    end
  end

  def turn
    @player1.new_question
    check_lives
    stats
    @player2.new_question
    check_lives
    stats
    puts "------- NEW TURN -------"
    turn
  end
end