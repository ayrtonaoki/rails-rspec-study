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

  context '#httpparty' do
    it 'facilitatee sending HTTP request and receiving responses' do
      # Commented because of Docker does not have internet access
      # response = HTTParty.get('https://jsonplaceholder.typicode.com/users/1')

      # expect(response.code).to eq(200)

      # parsed = response.parsed_response

      # expect(parsed["id"]).to eq(1)
      # expect(parsed["name"]).to be_a(String)
    end
  end

  context '#webmock' do
    it 'stub HTTP requests' do
      stub_request(:get, "https://jsonplaceholder.typicode.com/users/1").
      to_return(
        status: 200,
        body: { id: 1, name: "Leanne Graham", username: "Bret" }.to_json,
        headers: { 'Content-Type' => 'application/json' }
      )

      response = HTTParty.get("https://jsonplaceholder.typicode.com/users/1")

      expect(response.code).to eq(200)

      parsed_response = response.parsed_response
      expect(parsed_response["id"]).to eq(1)
      expect(parsed_response["name"]).to eq("Leanne Graham")
      expect(parsed_response["username"]).to eq("Bret")
    end
  end

  context '#vcr' do
    it 'records and replays the HTTP request', :vcr do
      # Commented because of Docker does not have internet access
      # response = HTTParty.get("https://jsonplaceholder.typicode.com/users/1")

      # expect(response.code).to eq(200)

      # parsed_response = response.parsed_response
      # expect(parsed_response["id"]).to eq(1)
      # expect(parsed_response["name"]).to eq("Leanne Graham")
      # expect(parsed_response["username"]).to eq("Bret")
    end
  end
end
