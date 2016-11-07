#Ch.6, p.32: Table of Contents - Writing a program that displays a table of Contents with proper alignments

line_width = 50
base_page_length = 5
headline = "Table of Contents"

chapters_array = [
                  {name: "Chapter 1: Getting Started", page_start: "Page 1"},
                  {name: "Chapter 2: Numbers", page_start: "Page 9"},
                  {name: "Chapter 3: Letters", page_start: "Page 13"}
                  ]

chapters_array.each do |chapter|
  current_rjust = line_width - chapter[:name].length + chapter[:page_start].length - base_page_length
  puts chapter[:name] + chapter[:page_start].rjust(current_rjust)
end
