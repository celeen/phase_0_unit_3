sum = 0
for i in (1..10000)
  sum = sum + 0.0001
end
print sum


# require 'bigdecimal'

# sum = BigDecimal.new("0")
# for i in (1..10000)
#   sum = sum + BigDecimal.new("0.0001")
# end
# print sum