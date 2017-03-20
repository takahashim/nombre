require "nombre/version"
require "prawn"

class Nombre

  def self.generate(filename,
                    width:516 , height:729,  ## pts, 182mm x 257mm
                    margin: [0, 0, 0, 0],
                    max_page: 100)
    Prawn::Document.generate(filename, page_size: [width, height], margin: margin) do
      # skip cover page and back page
      start_new_page
      (1..max_page-1).each do |page_num|
        start_new_page
        if page_num.even?
          draw_text sprintf("%3d", page_num), at: [40, 40]
        else
          draw_text sprintf("%3d", page_num), at: [width-40-20, 40]
        end
      end
    end
  end

end
