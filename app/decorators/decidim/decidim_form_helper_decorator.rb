# frozen_string_literal: true

#
# This decorator override Decidim::DecidimFormHelper methods:
# - areas_for_select with assigned areas to user.
#
Decidim::DecidimFormHelper.class_eval do
  alias_method :original_areas_for_select, :areas_for_select

  def areas_for_select(organization)
    author = current_user

    return author.areas if author&.department_admin? && controller_path.split("/").include?("admin")

    original_areas_for_select(organization)
  end
end
