# frozen_string_literal: true

#
# This decorator adds required associations between Decidim::ParticipatoryProcess and Departaments.
#
#
require_dependency 'decidim/participatory_process'
Decidim::ParticipatoryProcess.class_eval do
  belongs_to  :areas,
              class_name: 'Areas',
              foreign_key: 'decidim_department_id'

  belongs_to  :participatory_process_group,
              class_name: 'ParticipatoryProcessGroup',
              foreign_key: 'decidim_participatory_process_group_id'
  
  has_and_belongs_to_many :users,
    join_table: :decidim_participatory_process_user_roles,
    foreign_key: :decidim_participatory_process_id,
    association_foreign_key: :decidim_user_id,
    validate: false

end