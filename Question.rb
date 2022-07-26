class Question
  def initialize
    firstNum = rand(1..20)
    secondNum = rand(1..20)
    @question = "What does #{firstNum} plus #{secondNum} equal?"
    @answer = firstNum + secondNum
  end

  attr_reader :question, :answer
end