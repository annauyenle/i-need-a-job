class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :count
end
