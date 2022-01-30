# frozen_string_literal: true

require 'database_cleaner/active_record'

RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner[:active_record].strategy = :truncation
  end

  config.before do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.start
  end

  config.after do
    DatabaseCleaner.clean
  end
end
