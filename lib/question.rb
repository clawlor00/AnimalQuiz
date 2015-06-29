 class Question

  def initialize(name)
   @name = name
  end

  def add_question

    puts "Question to define animal:"
    animal_question = gets.chomp
    puts "Answer(y/n):"
    animal_answer = gets.chomp
    animal = [@name, animal_question, animal_answer]
  end

   # def update_animal_question
   #
   # end

end