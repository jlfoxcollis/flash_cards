require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'

class TurnTest < MiniTest::Test

  def test_it_exists
    card = Card.new("What is a name that associates with a particular object?", "Variable", :Vocabulary)

    assert_instance_of Card, card
  end

  def test_it_takes_a_turn
    # skip
    card = Card.new("What is a name that associates with a particular object?", "Variable", :Vocabulary)
    turn = Turn.new("Variable", card)

    assert_equal "Variable", turn.guess
  end

  def test_its_correct
    # skip
    card = Card.new("What is a name that associates with a particular object?", "Variable", :Vocabulary)
    turn = Turn.new("Variable", card)

    assert turn.correct?
  end

  def test_feedback
    # skip
    card = Card.new("What is a name that associates with a particular object?", "Variable", :Vocabulary)
    turn = Turn.new("Variable", card)

    assert_equal "Correct!", turn.feedback
  end

end