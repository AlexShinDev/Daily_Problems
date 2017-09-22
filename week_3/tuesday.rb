items = [
  {title: "NoDBA", words: 561, tags: ["nosql", "people", "orm"], type: :book},
  {title: "Infodeck", words: 1145, tags: ["nosql", "writing"], type: :book},
  {title: "OrmHate", words: 1718, tags: ["nosql", "orm"], type: :book},
  {title: "ruby", words: 1313, tags: ["ruby"], type: :article},
  {title: "DDD_Aggregate", words: 482, tags: ["nosql", "ddd"], type: :book}
]

p (items.select { |readable| readable[:type] == :book}.map! { |book| book[:words] }).reduce(:+)
#   #This code says to take the items variable(which has an array of hashes within) and only return the hashes that have a value of ":book" in the hash.
#   #Then, it takes the new array and creates another array that only includes the number of "words" in each ":book"
#   #Then it takes all the numbers and adds them together through the "reduce" method
