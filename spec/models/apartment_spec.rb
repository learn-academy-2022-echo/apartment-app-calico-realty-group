require 'rails_helper'

RSpec.describe Apartment, type: :model do
  let(:user) { User.create email: 'sarah@test.com', password: '123456', password_confirmation: '123456' }

  it 'should have a valid street' do
    apartment = user.apartments.create(
      city: 'London',
      state: 'England',
      manager: 'Ms. Hudson',
      email: 'mzhud@email.com',
      price: '1000',
      bedrooms: 2,
      bathrooms: 2,
      pets: 'no',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      user_id: 1
    )
    expect(apartment.errors[:street]).to include "can't be blank"
  end

  it 'should have a valid city' do
    apartment = user.apartments.create(
      street: '5268 Hudson St',
      state: 'England',
      manager: 'Ms. Hudson',
      email: 'mzhud@email.com',
      price: '1000',
      bedrooms: 2,
      bathrooms: 2,
      pets: 'no',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      user_id: 1
    )
    expect(apartment.errors[:city]).to include "can't be blank"
  end

  it 'should have a valid state' do
    apartment = user.apartments.create(
      city: 'London',
      street: '5268 Hudson St',
      manager: 'Ms. Hudson',
      email: 'mzhud@email.com',
      price: '1000',
      bedrooms: 2,
      bathrooms: 2,
      pets: 'no',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      user_id: 1
    )
    expect(apartment.errors[:state]).to include "can't be blank"
  end

  it 'should have a valid manager' do
    apartment = user.apartments.create(
      city: 'London',
      state: 'England',
      street: '5268 Hudson St',
      email: 'mzhud@email.com',
      price: '1000',
      bedrooms: 2,
      bathrooms: 2,
      pets: 'no',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      user_id: 1
    )
    expect(apartment.errors[:manager]).to include "can't be blank"
  end

  it 'should have a valid email' do
    apartment = user.apartments.create(
      city: 'London',
      state: 'England',
      manager: 'Ms. Hudson',
      street: '5268 Hudson St',
      price: '1000',
      bedrooms: 2,
      bathrooms: 2,
      pets: 'no',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      user_id: 1
    )
    expect(apartment.errors[:email]).to include "can't be blank"
  end

  it 'should have a valid price' do
    apartment = user.apartments.create(
      city: 'London',
      state: 'England',
      manager: 'Ms. Hudson',
      email: 'mzhud@email.com',
      street: '5268 Hudson St',
      bedrooms: 2,
      bathrooms: 2,
      pets: 'no',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      user_id: 1
    )
    expect(apartment.errors[:price]).to include "can't be blank"
  end

  it 'should have a valid bedrooms' do
    apartment = user.apartments.create(
      city: 'London',
      state: 'England',
      manager: 'Ms. Hudson',
      email: 'mzhud@email.com',
      price: '1000',
      street: '5268 Hudson St',
      bathrooms: 2,
      pets: 'no',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      user_id: 1
    )
    expect(apartment.errors[:bedrooms]).to include "can't be blank"
  end

  it 'should have a valid bathrooms' do
    apartment = user.apartments.create(
      city: 'London',
      state: 'England',
      manager: 'Ms. Hudson',
      email: 'mzhud@email.com',
      price: '1000',
      bedrooms: 2,
      street: '5268 Hudson St',
      pets: 'no',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      user_id: 1
    )
    expect(apartment.errors[:bathrooms]).to include "can't be blank"
  end

  it 'should have a valid pets' do
    apartment = user.apartments.create(
      city: 'London',
      state: 'England',
      manager: 'Ms. Hudson',
      email: 'mzhud@email.com',
      price: '1000',
      bedrooms: 2,
      bathrooms: 2,
      street: '5268 Hudson St',
      image: 'https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg',
      user_id: 1
    )
    expect(apartment.errors[:pets]).to include "can't be blank"
  end

  it 'should have a valid image' do
    apartment = user.apartments.create(
      city: 'London',
      state: 'England',
      manager: 'Ms. Hudson',
      email: 'mzhud@email.com',
      price: '1000',
      bedrooms: 2,
      bathrooms: 2,
      pets: 'no',
      street: '5268 Hudson St',
      user_id: 1
    )
    expect(apartment.errors[:image]).to include "can't be blank"
  end
end
