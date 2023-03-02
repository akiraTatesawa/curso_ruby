# frozen_string_literal: true

lambda_capitalizer = ->(name) { puts name.capitalize }

def capitalize_name(lambda_cap)
  lambda_cap.call('arthur')
  lambda_cap.call('haila')
end

capitalize_name(lambda_capitalizer)
