class Output
  def initialize(*args)
    case args.size
      when 0
        @internal_data = "No argument passed"
      when 1
        @internal_data = "#{args[0]}"
    end
  end


  def printer(data)
    print data.green
  end


  def putter(data)
    puts data.red
  end

end
