require 'contracts'

class Location
  include Mongoid::Document
  include Geocoder::Model::Mongoid
  include Contracts::Core
  include Contracts::Builtin

  geocoded_by :address
  reverse_geocoded_by :coordinates

  after_validation :reverse_geocode
  after_validation :geocode

  field :name, type: String
  field :address
  field :coordinates, type: Array
  field :description, type: String

  Contract NilClass => Float
  def latitude
    coordinates[0]
  end

  Contract NilClass => Float
  def longitude
    coordinates[1]
  end
end
