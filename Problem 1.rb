##########PROBLEM ONE SOLUTION #############################
Then /^verify the right number of values appear on the screen$/ do
  expected_value_count = 6
  actual_text = query("textField").count
  ##output 6
  unless expected_text == actual_text
    fail "number of values apperaing"
  end
end





Then /^verify values greater than 0/ do
  value_array = query("textField",:text)  ##output ["$122,365.24","$599.00","$850,139.99","$23,329.50","$566.27","$1,000,000.00"]

  value_greater_zero = greaterZero(value_array)

  unless value_greater_zero == true
    fail "not all values greater than Zero"
  end
  ########HELPER METHODS TO HELP CHECK ZERO
  def greaterZero(c) ###Stripdollar from array and check if all greater than Zero
    temp = stripdollar(c)
    temp.all?{|x| x > 0}
  end

 def stripdollar(n)
   temp = n.map { |value| value.delete(',')}
   tempw = temp.map { |value| value.to_s.tr('$', '').to_f}
   return tempw
 end

end



Then /^ verify the total balance listed is corect/ do

  temp = query("textField",:text)
  values = stripdollar(temp)
  b = values[0, values.count-1]
  expected_sum = b.inject(:+)
  actual_sum = values[-1]

  unless expected_sum == actual_sum
    fail "SUM showing is not correct"
  end

  puts "correct output is #{expected_sum} "

end
