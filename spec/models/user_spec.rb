require 'rails_helper'

RSpec.describe User, type: :model do
  fixtures :users

  context '#fixtures' do
    it 'creates data examples to use on tests' do
      user = users(:john)

      expect(user.name).to eq('John Johnson')
    end
  end
end
