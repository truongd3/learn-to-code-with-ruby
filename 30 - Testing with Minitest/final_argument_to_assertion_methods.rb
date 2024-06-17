require "minitest/autorun"

class InvalidAttackError < StandardError

end

class Pokemon
  attr_reader :name, :type, :attacks

  def initialize(name, type)
    @name = name # variable of class Pokemon
    @type = type # symbol
    @attacks = []
  end

  def add_attack(attack)
    # if !attack.is_a?(String)
    #   raise InvalidAttackError
    # end
    raise InvalidAttackError unless attack.is_a?(String)
    attacks << attack
  end
end

class TestPokemon < Minitest::Test
  def setup
    # Run this before each test --> Prepare
    @pikachu = Pokemon.new("Pikachu", :electric) # variable of class TestPokemon
  end

  def teardown
    # Run this after each test --> Clean up
    # puts "Test is done.\n"
  end

  def test_name1
    assert_equal("Pikachu", @pikachu.name, "The Pokemon object does not assign its name")
  end

  def test_name2
    assert_equal("Pikachuu", @pikachu.name, "The Pokemon object does not assign its name")
  end

  def test_type
    assert_equal(:electric, @pikachu.type)
  end

  def test_attack
    @pikachu.add_attack("Electric Shock")
    @pikachu.add_attack("Superman Punch")
    assert_includes(@pikachu.attacks, "Electric Shock")
  end

  def test_invalid_attack
    assert_raises(InvalidAttackError) do
      @pikachu.add_attack(10)
    end
  end
end
