FactoryBot.define do
  factory :management_patient, class: 'Management::Patient' do
    title { "MyString" }
    name { "MyString" }
    mrn { "MyString" }
    person_id { "MyString" }
  end
end
