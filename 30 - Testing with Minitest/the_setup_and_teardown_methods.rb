require "minitest/autorun"

class Pokemon
  attr_reader :name, :type

  def initialize(name, type)
    @name = name # variable of class Pokemon
    @type = type # symbol
  end

end

class TestPokemon < Minitest::Test
  def setup
    # Run this before each test --> Prepare
    @pikachu = Pokemon.new("Pikachu", :electric) # variable of class TestPokemon
  end

  def teardown
    # Run this after each test --> Clean up
    puts "Test is done.\n"
  end

  def test_name
    assert_equal("Pikachu", @pikachu.name)
  end

  def test_type
    assert_equal(:electric, @pikachu.type)
  end
end
