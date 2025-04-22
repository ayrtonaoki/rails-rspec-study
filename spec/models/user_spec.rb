require 'rails_helper'

RSpec.describe User, type: :model do
  fixtures :users

  context '#fixtures' do
    it 'creates data examples to use on tests' do
      user = users(:john)

      expect(user.name).to eq('John Johnson')
    end
  end

  context '#factory_bot' do
    it 'same as fixtures but more idiomatic' do
        user = create(:user)
        expect(user.email).to eq('jack@example.com')
    end
  end
end
