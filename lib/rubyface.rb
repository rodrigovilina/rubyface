# frozen_string_literal: true

require 'sorbet-runtime'
require 'zeitwerk'

loader = Zeitwerk::Loader.new
loader.push_dir 'lib'
loader.setup

module Rubyface
end

loader.eager_load
