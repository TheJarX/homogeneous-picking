# HomogeneousPicking

Gem to generate a homogeneous list from an NxN data matrix based on a Round-Robin approach.

    ⚠️ This gem interprets a matrix like this:
    A = [
              row row row
      column [ a,  b,  c ] 0
      column [ x,  y,  z ] 1
      column [ j,  a,  r ] 2
               0   1   2
    ]

    To get 'a' whe must access to the first element of the first row and the first column (A[0, 0])

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'homogeneous-picking'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install homogeneous-picking

## Running tests

To check if everything is ok, run the tests.

But before install the dependencies

    $ bundle install

Ok, now you're ready

    $ bundle exec rspec

> You can play with datasets included in `spec/datasets`

## Usage
Example 1:
```ruby
square_matrix = [
    ['a0', 'a1', 'a2', 'a3'],
    ['b0', 'b1', 'b2', 'b3'],
    ['c0', 'c1', 'c2', 'c3'],
    ['d0', 'd1', 'd2', 'd3'],
]

picker = Picker.new(square_matrix)

sample = picker.pick(4)
puts sample # ['a0', 'b0', 'c0', 'd0']

```
Example 2:
```ruby
matrix_a = [
    ['a0'],
    ['b0', 'b1'],
    ['c0', 'c1', 'c2'],
]

picker = Picker.new(matrix_a)

sample = picker.pick(4)
puts sample # ['a0', 'b0', 'c0', 'b1']
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
