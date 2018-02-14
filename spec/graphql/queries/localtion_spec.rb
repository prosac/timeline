require 'rails_helper'

describe 'Location Query', type: :request do
  include_context 'GraphQL Client'

  let!(:location) { create(:location) }

  let(:query) do
    <<-GRAPHQL
      query($id: String !) {
        location(id: $id) {
          id
        }
      }
    GRAPHQL
  end

  it 'returns an location' do
    debugger
    response = client.execute(query, id: location.id)
    expect(location.id).to eq response.data.location
  end
end
