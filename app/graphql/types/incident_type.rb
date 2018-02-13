Types::IncidentType = GraphQL::ObjectType.define do
  name 'Incident'
  field :id, !types.ID
  field :title, !types.String
  field :description, !types.String
  field :location, !Types::LocationType
end
