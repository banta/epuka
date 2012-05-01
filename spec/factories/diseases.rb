# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :disease do
    name "Malaria"
    location "Nairobi, Kenya"
    reported_cases "13"
    transmission_mode "Mosquito bites"
    signs "Weak joins"
    more_info "Malaria is a disease..."
  end
end
