require 'rails_helper'

RSpec.describe User, type: :model do
  fixtures :users

  context '#fixtures' do
    it 'creates data examples to use on tests' do
      user = users(:john)

      expect(user.name).to eq('John Johnson')
    end

    it 'creates an instance of model' do
      expect { create(:user) }.to change { User.count }.by(1)
    end
  end

  context '#factory_bot' do
    it 'same as fixtures but more idiomatic' do
      user = create(:user)

      expect(user.email).to eq('admin@example.com')
    end

    it 'creates an instance of model' do
      expect { create(:user) }.to change { User.count }.by(1)
    end

    it 'randomize data with Faker gem' do
      user = create(:user)

      expect(user.name).to be_instance_of(String)
    end
  end

  context '#sequences' do
    it 'creates incremental and unique values automatically' do
      order = create(:order)

      expect(order.user).to be_instance_of(User)
    end
  end
end
