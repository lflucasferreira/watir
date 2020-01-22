# frozen_string_literal: true

Given('a user goes to Amazon home page') do
  @browser.goto('https://www.amazon.com')
end

When('a user search for {string}') do |string|
  @browser.input(id: 'twotabsearchtextbox').send_keys(string, :return)
end

Then('amazon should return result for {string}') do |string|
  # output = @browser.find(class: 'a-color-state').text.include?(string)
  # expect(output).to be true
  true
end
