class Game
  
  def initialize
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
    @current_player = 1
    turn(@current_player)
  end
  
  def turn(current_player)
    player = current_player.even? ? @player_2 : @player_1

    puts '----NEW TURN----'

    q = Question.new
    q.ask_question(player.name)

    answer = gets.chomp.to_i

    if q.correct?(answer)
      puts "Great job! You're correct."

    else
      puts "So sorry, that is incorrect."
      player.take_life
    end
    
    check_score
    
    next_turn

  end

  def check_score
    puts "P1: #{@player_1.score} vs P2: #{@player_2.score}"

    if (@player_1.dead?)
      end_game(@player_2)
    elsif (@player_2.dead?)
      end_game(@player_1)
    end
  end

  def end_game(winner)
    puts "----GAME OVER----"
    puts "#{winner.name} wins with a score of #{winner.score}"
    puts "Good bye!"
    exit(0)
  end

  def next_turn
    @current_player += 1
    turn(@current_player)
  end

end
