module ApplicationsHelper

  def question6(question, number)
    if question
      lines = question.lines(',')
      return lines[number - 1]
    else
      return ''
    end
  end

end
