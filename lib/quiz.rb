class Quiz

  require_relative('question')

  def initialize
    @quiz_arr = []
    @result_arr = []
    @new_arr = []
  end

  def play_quiz
    puts "Would you like to play?(y/n)"
    play = gets.chomp
    if play == "y"
      if @quiz_arr.any?   # if array has values
        @quiz_arr.each do |question|
         puts question[1]
         puts "enter y or n"
         ans = gets.chomp   # answers question
         @new_arr = [question[1],ans]
          if ans == 'y'
            @quiz_arr.each do |animal|
              if (new_arr - animal).empty?
                @result_arr << animal
              end
            end
          elsif ans == 'n'
            @quiz_arr.each do |animal|
              if (@new_arr - animal).empty?
                @result_arr << animal
              end
            end
          end

        end
        if @result_arr.count == 1
          p @result_arr[0][0]
          @result_arr.pop
          play_quiz
          else
          puts "I don't know!!!"
          puts "What was your animals name?"
          name = gets.chomp
           # @quiz_arr.each do |x|        work in progress, updating animal questions depending on previous questions
           #   if  x[0] == name
           #   x << @new_arr
           #     p x
           #     end
           #   end
          a = Question.new(name)
          @quiz_arr << a.add_question
          play_quiz
        end

      else
        puts "No animals available!!!"
        puts "Name of animal to be added:"
        name = gets.chomp
        a = Question.new(name)
        @quiz_arr << a.add_question
        play_quiz
      end
    else
      puts "goodbye"
    end
  end
end



quiz = Quiz.new
quiz.play_quiz



