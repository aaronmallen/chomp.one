# frozen_string_literal: true

require 'simplecov'
require 'simplecov-lcov'

module Chomp
  module Spec
    class CoverageReporter
      FORMATTERS = [
        SimpleCov::Formatter::HTMLFormatter,
        SimpleCov::Formatter::LcovFormatter
      ].freeze

      class << self
        def start
          setup_lcov_formatter
          start_simplecov
        end

        private

        def simplecov_formatter
          @simplecov_formatter ||= SimpleCov::Formatter::MultiFormatter.new(FORMATTERS)
        end

        def setup_lcov_formatter
          SimpleCov::Formatter::LcovFormatter.config do |config|
            config.report_with_single_file = true
            config.single_report_path = "coverage/#{test_number}_lcov.info"
          end
        end

        def start_simplecov
          SimpleCov.start 'rails' do
            enable_coverage :branch
            command_name(test_number ? "RSpec(#{test_number})" : 'RSpec')
            formatter simplecov_formatter
          end
        end

        def test_number
          return unless ENV['TEST_ENV_NUMBER']

          ENV['TEST_ENV_NUMBER'].length < 1 ? '1' : ENV['TEST_ENV_NUMBER'] # rubocop:disable Style/ZeroLengthPredicate
        end
      end
    end
  end
end
