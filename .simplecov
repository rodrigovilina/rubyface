# frozen_string_literal: true

SimpleCov.start do
  add_filter '/spec/'

  enable_coverage :branch
  primary_coverage :branch

  minimum_coverage line: 100, branch: 100
  minimum_coverage_by_file 100
end
