items = [
  {id: 1, body: 'foo'},
  {id: 2, body: 'bar'},
  {id: 3, body: 'foobar'}
]

items.map!{ |x| x[:id] }

p items

# tricky thing here was remembering how to put in symbols for methods.
#For hashes, :id => 1 is the same thing as id: 1.
# In methods, you have to put it in as items[:id] to access the value inside