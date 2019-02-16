# frozen_string_literal: true

module ResultObject
  class Result
    attr_reader :value, :error

    def initialize(success: false, value: nil, error: nil)
      self.success = success
      self.value = value
      self.error = error
    end

    def success?
      success
    end

    def failure?
      !success
    end

    private

    attr_writer :success, :value, :error
    attr_reader :success
  end
end
