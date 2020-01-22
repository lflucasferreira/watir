# frozen_string_literal: true

require 'watir'

Watir.default_timeout = 10
BROWSER = Watir::Browser.new(:chrome)
