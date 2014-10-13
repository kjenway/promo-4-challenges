def french_phone_number?(phone_number)
  # TODO: true or false?
  if phone_number.gsub(/\s|-+/, "").match(/^0[1-9]\d+{8}/)
    return true
  elsif phone_number.gsub(/\s|-+/, "").match(/^\+33\d+{9}/)
    return true
  else
    return false
  end
end