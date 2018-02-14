Types::IncidentInputType = GraphQL::InputObjectType.define do
  name 'IncidentInputType'
  description 'Properties for creating an incident'

  argument :title, !types.String do
    description 'Title of the incident.'
  end

  argument :description, types.String do
    description 'Description of the incident.'
  end

  argument :location, Types::LocationInputType do
    description 'Location of the incident.'
  end
end
