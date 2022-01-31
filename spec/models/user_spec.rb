# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'callbacks' do
    it 'downcases :login before save' do
      user = build(:user, login: 'TEST@TEST.COM')
      user.save

      expect(user.login).to eq 'test@test.com'
    end
  end

  describe 'validations' do
    subject(:user) { build(:user) }

    it { is_expected.to allow_value('test@test.com').for(:login) }
    it { is_expected.not_to allow_value('test@@test.com').for(:login) }
    it { is_expected.to validate_presence_of :login }
    it { is_expected.to validate_uniqueness_of(:login).case_insensitive }
    it { is_expected.to have_secure_password }
    it { is_expected.to validate_length_of(:password).is_at_least(8).is_at_most(72) }
  end
end
