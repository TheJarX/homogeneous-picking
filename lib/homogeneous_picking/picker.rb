# frozen_string_literal: true

require_relative 'version'

module HomogeneousPicking
  class Error < StandardError; end

  # HomogeneousPicking::Picker picks a homogeneous list from an NxN matrix based on a Round-Robin approach
  class Picker
    def initialize(data_matrix)
      @data_matrix = data_matrix.reject(&:empty?)
      @data_size = @data_matrix.length
    end

    def pick(sample_size)
      return @data_matrix.flatten if [0, 1].include? @data_size

      sample = []
      column = 0
      row = 0

      while sample.length < sample_size
        if column + 1 > @data_size
          row += 1
          column = 0
        end

        value = @data_matrix[column][row]
        sample << value unless value.nil?
        column += 1
      end
      sample
    end
  end
end
