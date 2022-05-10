require 'rails_helper'

RSpec.describe Product, type: :model do

  describe 'Validations' do

    it 'should create a new product when data for all four fields are present' do
      @category = Category.new(name: 'weed')
      @product = Product.new(
        name: 'wild_flower',
        price: 24.99,
        quantity: 35,
        category: @category
      )
      expect(@product).to be_valid
    end    
  
    it 'should not create a new product when data for name field is undefined' do
      @category = Category.new(name: 'weed')
      @product = Product.new(
        name: nil,
        price: 24.99,
        quantity: 35,
        category: @category        
      )
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include "Name can't be blank"
    end

    it 'should not create a new product when data for price field is undefined' do
      @category = Category.new(name: 'weed')
      @product = Product.new(
        name: 'wild_flower',
        price_cents: nil,
        quantity: 35,
        category: @category        
      )
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include "Price can't be blank"
    end

    it 'should not create a new product when data for quantity field is undefined' do
      @category = Category.new(name: 'weed')
      @product = Product.new(
        name: 'wild_flower',
        price: 24.99,
        quantity: nil,
        category: @category        
      )
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include "Quantity can't be blank"
    end

    it 'should not create a new product when data for category field is undefined' do
      @category = Category.new(name: 'weed')
      @product = Product.new(
        name: 'wild_flower',
        price: 24.99,
        quantity: 35,
        category: nil        
      )
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include "Category can't be blank"
    end
  end
end
