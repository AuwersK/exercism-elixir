=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end
module Isogram
  module_function
  def isogram?(input)
    clean_input = input.downcase.gsub(/[^a-z]/, "")
    clean_input.chars.uniq.size == clean_input.size
  end
end