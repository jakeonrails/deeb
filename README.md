# Deeb

Deeb is a gem that provides a cool method called `deeb`.

`deeb` will let you easily print debug values to your console and also show the
names of those values:

```ruby
# Output local variables:
x = 1
deeb :x
#=> { :x => 1 }

# Output local methods:
def hello
  puts "Howdy"
end
deeb :x, :hello
#=> { :x => 1, :hello => "Howdy" }

# Output expressions:
deeb "x.to_s"
#=> { "x.to_s" => "1" }
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'deeb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install deeb

## Usage

The `deeb` takes an arbitrary number of arguments, and will do the following in
order to create the `Hash` that it passes to `awesome_print`'s `ap` method:

1. Check if the local scope (where `deeb` is called from) has a variable named
after the given symbol, and if so, evaluate it and add it to the hash.
2. Check if the local scope has a method named after the given symbol, call it,
and add it to the hash.
3. Evaluate the given argument, which at this point should be a string.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/deeb/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
