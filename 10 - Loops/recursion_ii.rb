def reversE(text)
  return text if text.length == 1
  remainder = text[0, text.length - 1]
  return text[-1] + reversE(remainder)
end


puts reversE("True")