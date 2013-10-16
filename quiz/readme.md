# This is a quiz on ruby and writing tests!

```
$ gem install rspec
```

RSpec is testing tool for the Ruby programming language.

The basic structure of an rspec expectation is:

```
expect(actual).to matcher(expected)
expect(actual).not_to matcher(expected)
```

Please see `quiz_spec.rb` and `quiz.rb`.

The first tests for the first question are already written in `quiz_spec.rb`

Write the corresponding code in `quiz.rb`.

Run `$ rspec spec/` to see if your tests pass.

For the remaining questions write __both__ the tests and functions.

Resources
[rspec](http://rspec.info/)
[rspec matchers](https://relishapp.com/rspec/rspec-expectations/v/2-14/docs/built-in-matchers)
