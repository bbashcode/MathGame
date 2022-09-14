class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lost_life
    @lives -=1
  end

  def no_lives
    @lives == 0
  end

  def new_question
    new_question = Question.new
    new_question.ask_question(name)
    print '> '
    if new_question.check_answer?($stdin.gets.chomp.to_i)
      puts "YES! You are correct."
    else 
      puts "Seriously? No!"
      lost_life
    end
  end
end