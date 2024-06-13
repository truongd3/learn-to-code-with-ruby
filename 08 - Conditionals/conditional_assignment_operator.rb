value = nil
p value

value ||= 5 # value = value || 5 = nil || 5 = 5
p value # 5

value ||= 10 # value = value || 10 = 5 || 10 = 5 (ignore 10)
p value # 5