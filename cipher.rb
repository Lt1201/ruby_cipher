require "colorize"
require_relative "Output"
require_relative "Input"
require_relative "Caesar"

out_obj = Output.new
initialized_out_obj = Output.new("internal_data initialized")

out_obj.printer("This is some data\n")
out_obj.putter(out_obj.instance_variable_get(:@internal_data))

initialized_out_obj.printer("This is some other data\n")
initialized_out_obj.putter(initialized_out_obj.instance_variable_get(:@internal_data))


out_obj.printer("\n\nEnter the string you want to encrypt: ")
original_string = Input.getInput()

out_obj.printer("Enter the shift you want: ")
shift = Input.getInput().to_i

out_obj.putter(Caesar.encrypt(original_string, shift))
