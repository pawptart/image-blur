class Image
  attr_accessor :data

  def initialize(data)
    @data = data
  end

  def blur
    blur_coords = []

    @data.each_with_index do |row, y_index|      # find all the 1s in the aray
      row.each_with_index do |cell, x_index|     # push all the coordinates to a new array (blur_coords)
        if cell == 1
          blur_coords << [y_index, x_index]
        end
      end
    end

    blur_coords.each do |coord|                  # for each coordinate
      y_index = coord[0]
      x_index = coord[1]

      if y_index - 1 >= 0                        # check if the coordinate exists in the array
        @data[y_index - 1][x_index] = 1          # and if it does, blur it!
      end
      if y_index + 1 < @data.length
        @data[y_index + 1][x_index] = 1
      end
      if x_index - 1 >= 0 
        @data[y_index][x_index - 1] = 1
      end
      if x_index + 1 < @data[1].length 
        @data[y_index][x_index + 1] = 1
      end

    end

    return Image.new(@data)

  end
end