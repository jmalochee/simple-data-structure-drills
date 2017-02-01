require "./commas.rb"

puts "***dr dre's dollar bills***\n"

transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

# Write Ruby code to find out the answers to the following questions:

puts "\nWhat is the value of the first transaction?"
puts comma(transactions[0], "$", "%.2f")

puts "\nWhat is the value of the second transaction?"
puts comma(transactions[1], "$", "%.2f")

puts "\nWhat is the value of the fourth transaction?"
puts comma(transactions[3], "$", "%.2f")

puts "\nWhat is the value of the last transaction?"
puts comma(transactions[-1], "$", "%.2f")

puts "\nWhat is the value of the second from last transaction?"
puts comma(transactions[-2], "$", "%.2f")

puts "\nWhat is the value of the 5th from last transaction?"
puts comma(transactions[-5], "$", "%.2f")

puts "\nWhat is the value of the transaction with index 5?"
puts comma(transactions[5], "$", "%.2f")

puts "\nHow many transactions are there in total?"
puts transactions.size

puts "\nHow many positive transactions are there in total?"
puts (transactions.select { |amt| amt > 0 }).size

puts "\nHow many negative transactions are there in total?"
puts (transactions.reject { |amt| amt > 0 }).size

puts "\nWhat is the largest withdrawal?"
puts comma(transactions.sort[0], "$", "%.2f")

puts "\nWhat is the largest deposit?"
puts comma(transactions.sort[-1], "$", "%.2f")

puts "\nWhat is the smallest withdrawal?"
puts comma((transactions.select { |amt| amt < 0 }).sort[-1], "$", "%.2f")

puts "\nWhat is the smallest deposit?"
puts comma((transactions.select { |amt| amt > 0 }).sort[0], "$", "%.2f")

puts "\nWhat is the total value of all the transactions?"
sum = transactions.inject { |sum, amt| sum += amt }
puts comma(sum, "$", "%.2f")

puts "\nIf Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his last transaction?"
sum = transactions.inject(239900) { |sum, amt| sum += amt }
puts comma(sum, "$", "%.2f")

puts "\n***sweet tunes***\n"

best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

# Write Ruby code to find out the answers to the following questions:

puts "\nHow many records are in `best_records`?"
puts best_records.size

puts "\nWho are all the artists listed?"
puts best_records.keys

puts "\nWhat are all the album names in the hash?"
puts best_records.values

puts "\nDelete the `Eminem` key-value pair from the list."
best_records.delete("Eminem")
puts best_records.keys

puts "\nAdd your favorite musician and their best album to the list."
best_records["Red Hot Chili Peppers"] = "Stadium Arcadium"
best_records.select { |artist, album| puts artist+", "+ album}

puts "\nChange `Nirvana`'s album to another."
best_records["Nirvana"] = "MTV Unplugged in New York"
best_records.select { |artist, album| puts artist+", "+ album}

puts "\nIs `Nirvana` included in `best_records`?"
puts best_records.key?("Nirvana")

puts "\nIs `Soundgarden` included in `best_records`?"
puts best_records.key?("Soundgarden")

puts "\nIf `Soundgarden` is not in `best_records` then add a key-value pair for the band."
best_records["Soundgarden"] = "Badmotorfinger"
best_records.each { |artist, album| puts artist+", "+ album}

puts "\nWhich key-value pairs have a key that has a length less than or equal to 6 characters?"
short = best_records.select { |k, v| k.length < 7 }
short.each { | key, value | puts key + ", " + value }

puts "\nWhich key-value pairs have a value that is greater than 10 characters?"
long = best_records.select { |k, v| v.length > 10 }
long.each { | key, value | puts key + ", " + value }
