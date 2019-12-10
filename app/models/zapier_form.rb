class ZapierForm < ApplicationRecord
  include Formable
  has_many :zapier_submissions, dependent: :destroy
end
