class ZapierSubmission < ApplicationRecord
  include Submittable
  belongs_to :zapier_form
end
