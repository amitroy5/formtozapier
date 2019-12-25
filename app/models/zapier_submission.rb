class ZapierSubmission < ApplicationRecord
  include Submittable
  belongs_to :zapier_form
  after_create :submit_to_zapier
  def submit_to_zapier
    HTTParty.post(zapier_form.zapierapi, {query: submission_query}) 
  end
  def submission_query
    form_values.inject({}) do |return_hash, form_value|
      return_hash.merge(form_value.form_field.label => form_value.value)
    end
  end
end
