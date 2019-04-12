# frozen_string_literal: true

require 'decidim/core/test/factories'

FactoryBot.define do
  # factory :department_admin_component, parent: :component do
  #   name { Decidim::Components::Namer.new(participatory_space.organization.available_locales, :department_admin).i18n_name }
  #   manifest_name { :department_admin }
  #   participatory_space { create(:participatory_process, :with_steps) }
  # end

  # Add engine factories here

  factory :department_admin, parent: :user do
    roles { ["department_admin"] }
    transient do
      area { nil }
    end

    after(:build) do |user, evaluator|
      user.areas << evaluator.area if evaluator.area.present?
    end
  end

end
