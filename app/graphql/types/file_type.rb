Types::FileType = GraphQL::ObjectType.define do
  name 'File'
  field :id, !types.ID
  field :name, types.String
  field :description, types.String
end
