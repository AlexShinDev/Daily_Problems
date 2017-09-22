haystack = {hay: [:hay, :hay, :hay, {hay: {hay: [:hay, {hay: [:hay, :hay, :needle]}, :hay, :hay, :hay]}}, :hay, :hay]}

# h1 = haystack[:hay]

# p h2 = h1[3]

# p h3 = h2[:hay]

# p h4 = h3[:hay]

# p h5 = h4[1]

# p h6 = h5[:hay][2]

p haystack[:hay][3][:hay][:hay][1][:hay][2]