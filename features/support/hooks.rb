# frozen_string_literal: true

Before do
  @browser = BROWSER
  @browser.window.maximize
end

After do
  @browser.close
end
