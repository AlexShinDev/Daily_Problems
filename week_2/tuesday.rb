movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
]

p movies_1 = movies.select{ |movie| movie[:title].downcase.include?("b") }

p movies_1.map!{ |movie| movie[:id] }