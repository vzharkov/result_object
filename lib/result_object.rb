# frozen_string_literal: true

require "result_object/version"
require "result_object/result"

module ResultObject
  class << self
    def success(value)
      ResultObject::Result.new(success: true, value: value)
    end

    def failure(error)
      ResultObject::Result.new(success: false, error: error)
    end
  end
end
