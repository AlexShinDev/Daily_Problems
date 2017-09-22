sentences = ["hello", "old friend", "today", "mac and cheese"]

p sentences.map { |word| word.split(" ").count > 1 ? word.capitalize : word}

