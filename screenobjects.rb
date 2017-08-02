class selectvaluescreen < utiliy

  def initialize(driver)
    @driver = driver
  end



  def await
  @driver.wait_for_element_exists("PickerView")
  end

 def Select_Value_on_picker(value)
   id = query("PickerView id" ,:text)

   if(id = "picker_1")
   @utiliy.picker ("picker_1",col1=0,col2=0,col3=0,col4=0)
    elsif(id == "picker_2")
     @utiliy.picker ("picker_2",col1=0,col2=0,col3=0,col4=0)
   end

 end

 def select
    touch("view marked:'select'")
 end


  def cancel
    touch("view marked:'cancel'")
  end

   def clear
     touch("view marked:'clear'")
   end




def validate(value)
  @.utiliy.valuecheck(value)

end




end
