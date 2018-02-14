Types::LocationInputType = GraphQL::InputObjectType.define do
  name 'LocationInputType'
  description 'Properties for creating a Location'

  argument :name, !types.String do
    description 'Name of the location.'
  end

  argument :description, types.String do
    description 'Description of the location.'
  end

  argument :address, types.String do
    description 'Post address of the location. Used to find out coordinates.'
  end
end
