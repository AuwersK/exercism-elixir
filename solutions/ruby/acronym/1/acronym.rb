=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end
module Acronym
  module_function
  def abbreviate(text)
    text.split(/[\s-]+/).map{|word| word.gsub(/[^a-zA-Z]/, "")[0] }.join.upcase
  end
end