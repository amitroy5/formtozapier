module SubmissionBehaviors
  extend ActiveSupport::Concern

  def form_values_attributes
    [form_values_attributes: %i[submittable_id form_field_id value]]
  end
end