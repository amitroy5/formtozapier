class ZapierApi
  class << self
    def post_form (submission)
      HTTParty.post(submission.zapier_form.zapierapi, submission.to_json)
    end
  end
end