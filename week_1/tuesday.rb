fruits = [
  {"name" => "apple", "color" => "red"},
  {"name" => "banana", "color" => "yellow"},
  {"name" => "grape", "color" => "purple"}
]

fruits.map!{ |x| [x["name"], x["color"]] }
p fruits

fruits_1 = [fruits[0], fruits[1], fruits[2]].to_h

p fruits_1