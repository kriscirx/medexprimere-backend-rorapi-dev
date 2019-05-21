class Management::Encounter
  include Mongoid::Document
  field :identifier, type: String
  field :encounter_code, type: String
  field :encounter_type, type: String
end
