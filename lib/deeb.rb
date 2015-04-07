require 'deeb/version'
require 'awesome_print'
require 'binding_of_caller'

def deeb(*args)
  boc = binding.of_caller(1)
  h = args.inject({}) do |hash, arg|
    hash[arg] = if boc.local_variables.include?(arg)
      boc.local_variable_get(arg)
    elsif boc.respond_to?(arg)
      boc.send(arg)
    else
      boc.eval(arg.to_s)
    end
    hash
  end
  ap h
end
