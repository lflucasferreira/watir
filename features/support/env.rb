# frozen_string_literal: true

require 'watir'

Watir.default_timeout = 10
DRIVER = Watir::Browser.new(:chrome)
