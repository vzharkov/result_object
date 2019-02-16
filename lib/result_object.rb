# frozen_string_literal: true

require "result_object/version"
require "result_object/result"

module ResultObject
  def Success(value)
    ResultObject::Result.new(success: true, value: value)
  end

  def Failure(error)
    ResultObject::Result.new(success: false, error: error)
  end
end
