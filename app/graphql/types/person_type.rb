Types::PersonType = GraphQL::ObjectType.define do
  name 'Person'
  field :id, !types.ID
  field :first_name, !types.String
  field :last_name, !types.String
  field :bio, !types.String
end
