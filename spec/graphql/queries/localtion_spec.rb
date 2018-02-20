require 'rails_helper'

describe 'Location Query', type: :request do
  include_context 'GraphQL Client'

  let!(:location) { create(:location) }

  let(:query) do
    <<-GRAPHQL
      query($id: String!) {
        location(id: $id) {
          id
          name
          longitude
          latitude
          description
        }
      }
    GRAPHQL
  end

  it 'returns an location' do
    response = client.execute(query, id: location.id.to_s)
    data = response.data.location
    expect(data.name).to eq location.name
    expect(data.description).to eq location.description
    expect(data.latitude).to eq location.latitude
    expect(data.longitude).to eq location.longitude
  end
end
