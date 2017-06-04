require "bowling_game/version"
require "pry"

class BowlingGame
  def initialize
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
		@rolls << 0 if strike?(pins)
		@rolls
  end

  def score
    score = 0
    current_roll = 0
    first_in_frame = 0

    for frame in 0...10
      score += @rolls[first_in_frame] + @rolls[first_in_frame + 1]
    end

    score
  end

	private

	def spare?(first_roll, second_roll)
		(first_roll + second_roll) == 10
	end

	def strike?(first_roll)
		first_roll == 10
	end
end
