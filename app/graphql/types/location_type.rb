Types::LocationType = GraphQL::ObjectType.define do
  name 'Location'
  field :id, !types.ID
  field :name, !types.String
  field :latitude, !types.Float
  field :longitude, !types.Float
  field :description, types.String
end
