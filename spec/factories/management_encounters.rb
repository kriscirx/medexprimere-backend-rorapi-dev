FactoryBot.define do
  factory :management_encounter, class: 'Management::Encounter' do
    identifier { "MyString" }
    encounter_code { "MyString" }
    encounter_type { "MyString" }
  end
end
