# frozen_string_literal: true

Before do
  @browser = DRIVER
  @browser.window.maximize
end

After do
  @browser.close
end
