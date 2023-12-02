module Trebuchet
  class RowController
    DICTIONNARY = {
      'one' => '1',
      'two' => '2',
      'three' => '3',
      'four' => '4',
      'five' => '5',
      'six' => '6',
      'seven' => '7',
      'eight' => '8',
      'nine' => '9'
    }.freeze

    class << self
      def number(...)
        new(...).number
      end

      def number_and_letter(...)
        new(...).number_and_letter
      end
    end

    attr_accessor :line

    def initialize(line)
      @line = line
    end

    def number
      return 0 if scan_number.count.zero?

      scan_number.first * 10 + scan_number.last
    end

    def number_and_letter
      return 0 if scan_number_and_letter.count.zero?

      scan_number_and_letter.first * 10 + scan_number_and_letter.last
    end

    private

    def scan_number
      line.scan(/\d/).map(&:to_i)
    end

    def scan_number_and_letter
      line
        .scan(regex_number_and_letter)
        .flatten
        .map { |number| DICTIONNARY.fetch(number, number) }
        .map(&:to_i)
    end

    def regex_number_and_letter
      Regexp.new(build_regex_with_dictionnary)
    end

    def build_regex_with_dictionnary
      '('
        .concat(DICTIONNARY.keys.join('|'))
        .concat('|')
        .concat(DICTIONNARY.values.join('|'))
        .concat(')')
    end
  end
end
