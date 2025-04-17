require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:phone_number) }
    it { is_expected.to validate_presence_of(:email) }
    it { should validate_length_of(:name).is_at_least(3).with_message(/Name is too short/) }
  end

  context 'name splitting' do
    it 'will split the input name for first and last name methods' do
      user = User.create!(
        name: 'Crazy Cat',
        email: 'crazycatlady5@gmail.com',
        phone_number: '555-283-7585',
        password: 'LamePassword',
      )

      expect(user.first_name).to eq('Crazy')
      expect(user.last_name).to eq('Cat')
    end
  end
end
