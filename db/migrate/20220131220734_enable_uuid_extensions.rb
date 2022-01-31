# frozen_string_literal: true

class EnableUuidExtensions < ActiveRecord::Migration[7.0]
  UUID_EXTENSIONS = %w[uuid-ossp pgcrypto].freeze

  def up
    UUID_EXTENSIONS.each do |extension|
      enable_extension(extension) unless extension_enabled?(extension)
    end
  end

  def down
    UUID_EXTENSIONS.each do |extension|
      disable_extension(extension) if extension_enabled?(extension)
    end
  end
end
