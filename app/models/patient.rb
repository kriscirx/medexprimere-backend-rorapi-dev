class Patient
  include Mongoid::Document
  field :name, type: String
  field :mrn, type: String
end
