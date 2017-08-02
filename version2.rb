Given(/^I am on the Select a Value$/) do
  @app = page(SelectAValue)
end

When(/^When I enter "(.*?) " on the picker$/) do |arg1|
  @app.SelectAValue.await
  @app.SelectAValue.Select_Value_on_picker(value)
end

Then(/^Then I should see "(.*?) " on Screen$/) do |arg1|
  @app.SelectAValue.validate(value)
end
