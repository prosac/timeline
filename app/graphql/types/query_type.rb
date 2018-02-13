Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'The query root of this schema'

  field :incident do
    type IncidentType
    argument :id, !types.ID
    description 'Find an incident by ID'
    resolve ->(_obj, args, _ctx) { Incident.find(args['id']) }
  end

  field :location do
    type LocationType
    argument :id, !types.ID
    description 'Find a location by ID'
    resolve ->(_obj, args, _ctx) { Location.find(args['id']) }
  end

  field :person do
    type PersonType
    argument :id, !types.ID
    description 'Find a person by ID'
    resolve ->(_obj, args, _ctx) { Person.find(args['id']) }
  end
end
