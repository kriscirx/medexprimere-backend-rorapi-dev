class Patient
  include Mongoid::Document
  field :name, type: String
  field :mrn, type: String
  field :patient_id, type: String
end
