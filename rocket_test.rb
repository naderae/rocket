require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test



def test_no_name_generates_random_name
    rocket = Rocket.new
    result = rocket.name

    assert(result, true)

end
#
def test_name_given_generates_that_name
  rocket1 = Rocket.new(name: 'nader')
  result = rocket1.name
  assert_equal(result, 'nader')
end

def test_no_colour_generates_random_name
    rocket = Rocket.new
    result = rocket.colour

    assert(result, true)
end

def test_colour_given_generates_that_colour
  rocket1 = Rocket.new(colour: 'green')
  result = rocket1.colour
  assert_equal(result, 'green')
end

def test_no_flying_generates_false
    rocket = Rocket.new
    result = rocket.flying?

    assert_equal(result, false)
end

def test_flying_generates_true
    rocket = Rocket.new(flying: true)
    result = rocket.flying?

    assert_equal(result, true)
end

def test_in_liftoff_that_if_flying_true_return_false
  rocket1= Rocket.new(flying: true)


  result = rocket1.lift_off

  assert_equal(result, false)
end
#
def test_liftoff_return_true_if_flying_equals_false
    rocket1= Rocket.new
    result = rocket1.lift_off

    assert_equal(result, true)
end



def test_if_flying_status_returns_flying_through_sky
  rocket1 = Rocket.new(flying: true, name:'johnny')
  result = rocket1.status

  assert_equal(result, 'Rocket johnny is flying through the sky!')
end

def test_if_flying_status_returns_ready_for_liftoff
rocket1 = Rocket.new(name: 'johnny')
result = rocket1.status

assert_equal(result, 'Rocket johnny is ready for lift off!')

end

def land_returns_true_when_flying_is_true

rocket1 = Rocket.new(flying: true)

result = rocket1.land

assert_equal(result, true)

end

def land_returns_true_when_flying_is_true

rocket1 = Rocket.new
result = rocket1.land

assert_equal(result, false)

end






end
