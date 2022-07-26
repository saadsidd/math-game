class Question
  def initialize
    firstNum = rand(1..20)
    secondNum = rand(1..20)
    @prompt = "#{firstNum} plus #{secondNum}"
    @answer = firstNum + secondNum
  end

  attr_reader :prompt, :answer
end