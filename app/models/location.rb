class Location
  include Mongoid::Document
  include Geocoder::Model::Mongoid

  geocoded_by :address
  reverse_geocoded_by :coordinates

  after_validation :reverse_geocode
  after_validation :geocode

  field :name, type: String
  field :address
  field :coordinates, type: Array
  field :description, type: String

  def to_address
    'Kollaukamp 10 22453 Hamburg'
  end
end
