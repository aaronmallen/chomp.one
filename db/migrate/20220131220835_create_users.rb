# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :login, index: { unique: true }, null: false
      t.string :password_digest, null: false

      t.timestamps
    end
  end
end
