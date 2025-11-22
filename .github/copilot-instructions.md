# GitHub Copilot Instructions for Bowling Score Keeper

## Project Overview

This is a Ruby gem that implements a bowling game score keeper with a command-line interface. The gem tracks bowling scores according to standard bowling rules including strikes, spares, and the 10-frame game format.

## Key Components

- **Main Class**: `BowlingScoreKeeper` - handles user interaction and score calculation
- **Score Calculation**: Implements standard bowling scoring rules with strike and spare bonuses
- **CLI Interface**: Interactive command-line application for tracking games

## Development Setup

1. This project requires Ruby 2.2.4 (see `.ruby-version`)
2. Install dependencies: `bundle install`
3. Run tests: `rake spec` or `bundle exec rspec`
4. Install gem locally: `bundle exec rake install`
5. Interactive console: `bin/console`

## Testing Guidelines

- Tests are written using RSpec 3.x
- Test files are located in the `spec/` directory
- Run tests with: `rake spec` (default rake task)
- RSpec is configured in `.rspec` for documentation format with color output
- Follow existing test patterns in `spec/bowling_score_keeper_spec.rb`

## Code Style and Conventions

- Ruby 2.2.4 syntax and features
- Use 2-space indentation (standard Ruby convention)
- Private methods should be clearly marked with `private` keyword
- Keep methods focused and single-purpose
- Use descriptive variable and method names

## Bowling Scoring Rules

When working on scoring logic, remember:
- A strike (all 10 pins on first roll) scores 10 + next 2 rolls
- A spare (10 pins in 2 rolls) scores 10 + next 1 roll
- Regular frame scores the sum of both rolls
- Game consists of exactly 10 frames
- The 10th frame allows bonus rolls for strikes/spares

## CLI Behavior

- User enters knocked pins as numbers
- Special commands: `score` (shows current score), `exit` (ends game)
- Interactive prompts guide the user through the game
- Score displayed as "incomplete" until all frames are bowled

## Dependencies

- **Runtime**: None (pure Ruby)
- **Development**: 
  - bundler ~> 1.15
  - rake ~> 10.0
  - rspec ~> 3.0
  - pry ~> 0.10 (debugging)
  - pry-byebug ~> 3.4.2 (debugging)

## Making Changes

- Keep changes minimal and focused
- Ensure all tests pass before committing
- Update version in `lib/bowling_score_keeper/version.rb` for releases
- Follow the existing code structure and patterns
- Test interactively using `bin/bowling_score_keeper` or `bin/bsk`
