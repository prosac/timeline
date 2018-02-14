Types::MutationType = GraphQL::ObjectType.define do
  name 'MutationType'

  field :createIncident, Types::IncidentType do
    description 'Creates an incident'
    # argument :title, !types.String
    # argument :description, !types.String
    # argument :location, !Types::LocationType
    argument :incident, Types::IncidentInputType

    resolve ->(_o, args, _c) {
      CreateIncident.call(args).incident
    }
  end
end
