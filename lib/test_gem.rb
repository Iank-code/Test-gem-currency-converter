# frozen_string_literal: true

require_relative "test_gem/version"
require "json"
require "open-uri"

module TestGem
  class Error < StandardError; end
  class UnsupportedCurrencyError < Error; end
  class ConversionError < Error; end

  # Your code goes here...
  # Simple hardcoded rates (base: USD)
  Rates = {
    "USD" => 129.0,
    "EUR" => 140.0,
    "GBP" => 160.0,
    "JPY" => 1.085,
    "INR" => 1.7500
}.freeze

  class << self
    def convert(amount, from:, to:)
      validate_currency!(from)
      validate_currency!(to)

      usd_amount = amount.to_f / Rates[from.upcase]
      (usd_amount * Rates[to.upcase]).round(2)
    end

    def available_currencies
      Rates.keys.sort
    end

    private

    def validate_currency!(currency)
      currency = currency.upcase

      unless Rates.key?(currency)
        raise UnsupportedCurrencyError, "Invalid currency name: #{currency}"
      end
    end
  end
end
