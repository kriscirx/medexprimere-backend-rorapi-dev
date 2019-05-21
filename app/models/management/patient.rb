class Management::Patient
  include Mongoid::Document
  field :title, type: String
  field :name, type: String
  field :mrn, type: String
  field :person_id, type: String
end
