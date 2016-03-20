# Retrospect

Retrospect is a command line application to quickly save your thoughts for your next retrospective meeting.

It appends your thoughts to ~/retropect.txt

It's a work in progress. It's missing tests and is buggy. It was created to quickly solve a problem.

One day it might be able to send thoughts to a trello board.

## Installation

```bash
$ gem install retrospect
```

## Usage

To use it run either:

```bash
$ retrospect positive
```

```bash
$ retrospect negative
```

```bash
$ retrospect question
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/elliotthilaire/retrospect.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

