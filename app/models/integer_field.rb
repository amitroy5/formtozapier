class IntegerField < FormField
  def add_validation_errors(form_value)
    value = form_value.value
    form_value.errors.add :value, 'must be an integer' unless value.blank? || value.match(/\A[+-]?\d+\Z/)
    form_value.errors.add :value, "can't be greater than #{max}" if max.present? && value.to_i > max.to_i

    return unless min.present? && value.to_i < min.to_i

    form_value.errors.add :value, "can't be less than #{min}"
  end
end
