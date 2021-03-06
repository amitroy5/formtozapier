module FormBehaviors
  extend ActiveSupport::Concern

  def form_fields_attributes
    [form_fields_attributes: [:id, :label, :max, :min, :required, :formable_type, :type]]
  end
end