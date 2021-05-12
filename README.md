# HomogeneousPicking

Gem to generate a homogeneous list form an NxN data matrix based on a Round-Robin approach.

    ⚠️ This gem interprets a matrix like this:
    A = [
              row row row
      column [ a,  b,  c ] 0
      column [ x,  y,  z ] 1
      column [ j,  a,  r ] 2
               0   1   2
    ]

    To get 'a' whe must access to the first element of the first column and the first row (A[0, 0])

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'homogeneous-picking'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install homogeneous-picking

## Runing tests

To check if everything is ok, run the tests.

But before install the dependencies

    $ bundle install

Ok, now you're ready

    $ bundle exec rspec

> You can play with datasets included in `spec/datasets`

## Usage
```ruby
square_matrix = [
    ['a0', 'a1', 'a2'],
    ['b0', 'b1', 'b2'],
    ['c0', 'c1', 'c2'],
    ['d0', 'd1', 'd2'],
]

picker = Picker.new(square_matrix)

sample = picker.pick(4)
puts sample # ['a0', 'b0', 'c0', 'd0']

```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
