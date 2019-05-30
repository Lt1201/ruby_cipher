$upper_a_const = 65
$lower_a_const = 97
$upper_z_const = 90
$lower_z_const = 122

module Caesar
  def Caesar.encrypt(original_string, shift)
    new_string=""
    shift_o = shift%25
    original_string.each_byte { |i|
      shift=shift_o
      if (i >= $upper_a_const and i <= $upper_z_const)
        if (i + shift) > $upper_z_const
          distance = $upper_z_const - i + 1
          shift = shift - distance
          i = ($upper_a_const+shift).chr
        else
          i = (i + shift).chr
        end
      elsif (i >= $lower_a_const and i <= $lower_z_const)
        if (i +shift) > $lower_z_const
          distance = $lower_z_const - i + 1
          shift = shift - distance
          i = ($lower_a_const+shift).chr
        else
          i = (i + shift).chr
        end
      end

      new_string = new_string+i

    }
    return new_string
  end
end
