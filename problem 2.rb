

def picker (id,col1=0,col2=0,col3=0,col4=0)


  case id
  when "picker_1"
     col1_current =  query("PickerView index:'#{0}'" ,:text)

     count = 0
     dir = (col1 < col1_current)  ? "down" : "up"
     until (col1 == col1_current )  do
       col1_current = query("PickerView index:'#{0}'" ,:text)
       numericscroll((dir, 0, col1)
       count += 1
      end


  when "picker_2"

    col1_current =  query("PickerView index:'#{0}'" ,:text)
    col2_current =  query("PickerView index:'#{1}'" ,:text)

     count = 0
     dir = (col1 < col1_current)  ? "down" : "up"
     until (col1 == col1_current ) do
       col1_current = query("PickerView index:'#{0}'" ,:text)
       numericscroll((dir, 0, col1)
       count += 1
      end

      count = 0
      dir = (col2 < col2_current)  ? "down" : "up"
      until (col2 == col2_current ) do
        col2_current = query("PickerView index:'#{1}'" ,:text)
        numericscroll((dir, 1, col2)
        count += 1
       end

  when "picker_3"

    col1_current =  query("PickerView index:'#{0}'" ,:text)
    col2_current =  query("PickerView index:'#{1}'" ,:text)
    col3_current =  query("PickerView index:'#{2}'" ,:text)


    count = 0
    dir = (col1 < col1_current)  ? "down" : "up"
    until (col1 == col1_current ) do
      col1_current = query("PickerView index:'#{0}'" ,:text)
      numericscroll((dir, 0, col1)
      count += 1
     end

     count = 0
     dir = (col2 < col2_current)  ? "down" : "up"
     until (col2 == col2_current )  do
       col2_current = query("PickerView index:'#{1}'" ,:text)
       numericscroll((dir, 1, col2)
       count += 1
      end

      count = 0
      dir = (col3 < col3_current)  ? "down" : "up"
      until (col3 == col3_current ) do
        col2_current = query("PickerView index:'#{2}'" ,:text)
        numericscroll((dir, 2, col3)
        count += 1
       end


  when "picker_4"
    col1_current =  query("PickerView index:'#{0}'" ,:text)
    col2_current =  query("PickerView index:'#{1}'" ,:text)
    col3_current =  query("PickerView index:'#{2}'" ,:text)
    col4_current =  query("PickerView index:'#{2}'" ,:text)


    count = 0
    dir = (col1 < col1_current)  ? "down" : "up"
    until (col1 == col1_current ) do
      col1_current = query("PickerView index:'#{0}'" ,:text)
      Month_dayscroll(dir, 0, col1)
      count += 1
     end


    count = 0
    dir = (col2 < col2_current)  ? "down" : "up"
    until (col2 == col2_current )  do
      col2_current =  query("PickerView index:'#{1}'" ,:text)
      numericscroll((dir, 1, col2)
      count += 1
     end

     count = 0
     dir = (col3 < col3_current)  ? "down" : "up"
     until (col3 == col3_current ) do
       col2_current = query("PickerView index:'#{2}'" ,:text)
       numericscroll(dir, 2, col3)
       count += 1
      end

      count = 0
      dir = (col4 < col4_current)  ? "down" : "up"
      until (col3 == col3_current ) do
        col4_current = query("PickerView index:'#{3}'" ,:text)
        AM_PMscroll(3,col4)
        count += 1
       end


  end



end




#####numeric scroll Method
def numericscroll(direction,column,component)
  if (direction.eql? "up")
    touch("pickerView scrollView index:#{column} label text:'#{component+1}'")
  elsif (direction.eql? "down")
    touch("pickerView scrollView index:#{column} label text:'#{component-1}'")
  end
end


#####AM+PM scroll Method
def AM_PMscroll(column,component)
  if (component.eql? "AM")
    touch("pickerView scrollView index:#{column} label text:'#{'PM'}'")
  elsif (direction.eql? "PM")
    touch("pickerView scrollView index:#{column} label text:'#{'AM'}'")
  end
end


#####Month_Day scroll Method
def Month_dayscroll(direction,column,component)
  if (direction.eql? "up")
   month_str = Date::MONTHNAMES[component+1]
   month_str_short = month_str[0,3]
   touch("pickerView scrollView index:#{column} label text:'#{month_str}'")
 elsif (direction.eql? "down")
   month_str = Date::MONTHNAMES[component-1]
   month_str_short = month_str[0,3]
   touch("pickerView scrollView index:#{column} label text:'#{month_str}'")
 end
end
