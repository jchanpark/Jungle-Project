require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do

    it 'should create a new user when all fields are filled out' do
      @user = User.new(
        first_name: 'First',
        last_name: 'Last',
        email: 'lighthout@lab.com',
        password: 'password',
        password_confirmation: 'password'
      )
      expect(@user).to be_valid
    end

    it 'should not be valid without a first name' do
      @user = User.new(
        first_name: nil,
        last_name: 'Last',
        email: 'lighthout@lab.com',
        password: 'password',
        password_confirmation: 'password'
      )
      expect(@user).to_not be_valid
    end

    it 'should not be valid without a last name' do
      @user = User.new(
        first_name: 'First',
        last_name: nil,
        email: 'lighthout@lab.com',
        password: 'password',
        password_confirmation: 'password'
      )
      expect(@user).to_not be_valid
    end

    it 'should not be valid without an email' do
      @user = User.new(
        first_name: 'First',
        last_name: 'Last',
        email: nil,
        password: 'password',
        password_confirmation: 'password'
      )
      expect(@user).to_not be_valid
    end

    it 'should not be valid without a password' do
      @user = User.new(
        first_name: 'First',
        last_name: 'Last',
        email: 'lighthout@lab.com',
        password: nil,
        password_confirmation: 'password'
      )
      expect(@user).to_not be_valid
    end

    it 'should not be valid without a password confirmation' do
      @user = User.new(
        first_name: 'First',
        last_name: 'Last',
        email: 'lighthout@lab.com',
        password: 'password',
        password_confirmation: nil
      )
      expect(@user).to_not be_valid
    end

    it 'should not be valid if a password conirmation is different from the password' do
      @user = User.new(
        first_name: 'First',
        last_name: 'Last',
        email: 'lighthout@lab.com',
        password: 'password',
        password_confirmation: 'different'
      )
      expect(@user).to_not be_valid
    end
  end
end
