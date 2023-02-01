nancy@Nancy:~/nancy/ror/blog_application$ rvm use ruby-2.7.0
Using /home/nancy/.rvm/gems/ruby-2.7.0
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:setup
Database 'db/development.sqlite3' already exists
Database 'db/test.sqlite3' already exists
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:setup 
Database 'db/development.sqlite3' already exists
Database 'db/test.sqlite3' already exists
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails  db:reset
Dropped database 'db/development.sqlite3'
Dropped database 'db/test.sqlite3'
Created database 'db/development.sqlite3'
Created database 'db/test.sqlite3'
nancy@Nancy:~/nancy/ror/blog_application$ cd ..
nancy@Nancy:~/nancy/ror$ cd ..
nancy@Nancy:~/nancy$ cd ..
nancy@Nancy:~$ cd /home/nancy/radhe/
nancy@Nancy:~/radhe$  bin/rails db:setup
Database 'db/development.sqlite3' already exists
Database 'db/test.sqlite3' already exists
You have 10 pending migrations:
  20230128162716 CreateArticles
  20230130160722 AddPartNumberToProducts
  20230130161154 RemovePartNumberFromProducts
  20230130161321 AddDetailsToProducts
  20230130161457 CreateProducts
  20230130162135 AddUserRefToProducts
  20230130162313 CreateJoinTableCustomerProduct
  20230130163500 CreateExamples
  20230130172328 Order
  20230130174140 CreateComments
Run `bin/rails db:migrate` to update your database then try again.
nancy@Nancy:~/radhe$ bin/rails  db:reset
Dropped database 'db/development.sqlite3'
Dropped database 'db/test.sqlite3'
Created database 'db/development.sqlite3'
Created database 'db/test.sqlite3'
You have 10 pending migrations:
  20230128162716 CreateArticles
  20230130160722 AddPartNumberToProducts
  20230130161154 RemovePartNumberFromProducts
  20230130161321 AddDetailsToProducts
  20230130161457 CreateProducts
  20230130162135 AddUserRefToProducts
  20230130162313 CreateJoinTableCustomerProduct
  20230130163500 CreateExamples
  20230130172328 Order
  20230130174140 CreateComments
Run `bin/rails db:migrate` to update your database then try again.
nancy@Nancy:~/radhe$  bin/rails db:drop db:setup.
Dropped database 'db/development.sqlite3'
Dropped database 'db/test.sqlite3'
rails aborted!
Don't know how to build task 'db:setup.' (See the list of available tasks with `rails --tasks`)

nancy@Nancy:~/radhe$ 
Dropped database 'db/development.sqlite3'
nancy@Nancy:~/radhe$ cd ..
nancy@Nancy:~/nancy/ror/blog_application$ ls
nancy@Nancy:~/nancy/ror/blog_application$ rails c
at created the lockfile by running `gem install bundler:2.3.26`.
dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
2.7.0 :001 > order = Order.new()
 => #<Order:0x000055825ef7ede8 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
 => false 
2.7.0 :003 > order = Order.create(name: nil ).valid?
2.7.0 :004 > order = Order.new(name: "jhon Doe")
 => #<Order:0x000055825f4caa18 id: nil, name: "jhon Doe", lastname: nil, email: nil, created_at: nil, updated_at: nil> 
 => true 
 => false 
 => true 
  Order Load (0.2ms)  SELECT "orders".* FROM "orders"
2.7.0 :009 > Order.all
 => [] 
Traceback (most recent call last):
(irb):10:in `<main>': undefined method `save' for []:Array (NoMethodError)
2.7.0 :011 > order.errors.objects.first.full_message
Traceback (most recent call last):
(irb):11:in `<main>': undefined method `errors' for []:Array (NoMethodError)
 => #<Order:0x000055825ec30420 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
2.7.0 :013 > o.errors.size
 => 0 
2.7.0 :014 > o.valid?
 => false 
2.7.0 :015 > o.errors.objects.first.full_message
 => "Name can't be blank" 
2.7.0 :016 > a = Article.new()
2.7.0 :017 > a = Article.new(title: "hello world", body: "i am rails")
2.7.0 :018 > a.save
  Article Create (0.3ms)  INSERT INTO "articles" ("title", "body", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["title", "hello world"], ["body", "
  TRANSACTION (7.2ms)  commit transaction
2.7.0 :019 > Article.all
  Article Load (0.2ms)  SELECT "articles".* FROM "articles"
 => 
  id: 1,
  title: "hello world",
  body: "i am rails",
  updated_at: Tue, 31 Jan 2023 05:56:40.335331000 UTC +00:00>] 
2.7.0 :020 > o = Order.new(name: "john Doe")
 => #<Order:0x00007f0b007d3680 id: nil, name: "john Doe", lastname: nil, email: nil, created_at: nil, updated_at: nil> 
 => true 
 => false 
2.7.0 :023 > o.new_record?
 => true 
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/validations.rb:80:in `raise_validation_error': Validation failed: Lastname c
2.7.0 :025 > o = Order.decrement_counter(name: "jhon Doe")
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/counter_cache.rb:159:in `decrement_counter': wrong number of arguments (give
2.7.0 :026 > o = Order.create!(name: "nancy")
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/validations.rb:80:in `raise_validation_error': Validation failed: Lastname can't be blank, Email can't be blank (ActiveRecord::RecordInvalid)
2.7.0 :027 > o = Order.
^C
2.7.0 :027 > o = Order.decrement_counter(0)
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/counter_cache.rb:159:in `decrement_counter': wrong number of arguments (given 1, expected 2) (ArgumentError)
2.7.0 :028 > o = order.new()
Traceback (most recent call last):
(irb):28:in `<main>': undefined method `new' for []:Array (NoMethodError)
2.7.0 :029 > o = Order.new()
 => #<Order:0x000055825f175ac0 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
2.7.0 :030 > o.save
 => false 
2.7.0 :031 > o.save!
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/validations.rb:80:in `raise_validation_error': Validation failed: Name can't be blank, Lastname can't be blank, Email can't be blank (ActiveRecord::RecordInvalid)
2.7.0 :032 > 

