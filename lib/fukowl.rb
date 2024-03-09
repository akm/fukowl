# frozen_string_literal: true

require_relative "fukowl/version"

module Fukowl
  class Error < StandardError; end

  class << self
    def replace(target_path)
      content = File.read(target_path)
      yield(content)
      open(target_path, 'w'){|f| f.puts(content) }
    end
  end
end
