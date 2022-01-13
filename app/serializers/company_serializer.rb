class CompanySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :count
end
