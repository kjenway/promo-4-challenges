def coach_answer(your_message)
  if your_message.include?("?")
    return "Silly question, get dressed and go to work!"
  elsif your_message == "I am going to work right now!"
    return ''
  else
    return "I don't care, get dressed and go to work!"
  end
end


def coach_answer_enhanced(your_message)
  prefix = ''
  if your_message == "I am going to work right now!".upcase
    return ''
  elsif your_message == your_message.upcase
    prefix = "I can feel your motivation! "
  end

  return prefix + coach_answer(your_message)
end