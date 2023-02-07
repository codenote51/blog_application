nancy@Nancy:~/nancy/ror/blog_application$ rvm use ruby-2.7.0
Using /home/nancy/.rvm/gems/ruby-2.7.0
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version that created the lockfile by running `gem install bundler:2.3.26`.
dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
=> Booting Puma
=> Run `bin/rails server --help` for more startup options
A server is already running. Check /home/nancy/nancy/ror/blog_application/tmp/pids/server.pid.
Exiting
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version that created the lockfile by running `gem install bundler:2.3.26`.
dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
Loading development environment (Rails 7.0.4.1)
Reloading...
2.7.0 :002 > article = Article.status
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/enum.rb:301:in `raise_conflict_error': You tried to define an enum named "status" on the model "Article", but this will generate a class method "public", which is already defined by Active Record. (ArgumentError)
2.7.0 :003 > article = Article.new()
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/enum.rb:301:in `raise_conflict_error': You tried to define an enum named "status" on the model "Article", but this will generate a instance method "public?", which is already defined by another enum. (ArgumentError)
2.7.0 :004 > reload!
Reloading...
 => true 
Traceback (most recent call last):
(irb):5:in `<main>': uninitialized constant Articlr (NameError)
Did you mean?  Article
2.7.0 :006 > article = Article.new()
 => #<Article:0x00007f5084771d58 id: nil, title: nil, body: nil, created_at: nil, updated_at: nil, status: nil> 
2.7.0 :007 > Order.find(11)
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" WHERE "orders"."id" = ? LIMIT ?  [["id", 11], ["LIMIT", 1]]
 => 
#<Order:0x00005629a4774380
 id: 11,
 name: "nancy",
 lastname: "kushwah",
 email: "nancy9ku@gmail.com",
 created_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
 updated_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
 amount: nil,
 status: nil> 
2.7.0 :008 > Order.find([11, 12])
  Order Load (0.3ms)  SELECT "orders".* FROM "orders" WHERE "orders"."id" IN (?, ?)  [["id", 11], ["id", 12]]
 => 
  id: 11,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  created_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
  amount: nil,
  status: nil>,
 #<Order:0x00005629a4e854a8
  id: 12,
  name: "shdash",
  email: "sdsdsdhdis",
  created_at: Fri, 03 Feb 2023 11:31:09.931756000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 11:31:09.931756000 UTC +00:00,
  amount: nil,
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" LIMIT ?  [["LIMIT", 1]]
 => 
#<Order:0x00005629a4d86610
 id: 11,
 lastname: "kushwah",
 email: "nancy9ku@gmail.com",
 created_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
 updated_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
 amount: nil,
 status: nil> 
2.7.0 :010 > order = Order.take
  Order Load (0.1ms)  SELECT "orders".* FROM "orders" LIMIT ?  [["LIMIT", 1]]
 => 
#<Order:0x00005629a4a77618
... 
2.7.0 :011 > 
2.7.0 :012 > order = Order.take(12)
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" LIMIT ?  [["LIMIT", 12]]
 => 
[#<Order:0x00007f5084652dc8
... 
2.7.0 :013 > Order.take(12)
  Order Load (0.1ms)  SELECT "orders".* FROM "orders" LIMIT ?  [["LIMIT", 12]]
 => 
[#<Order:0x00007f508419a588
  id: 11,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  created_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
  amount: nil,
  status: nil>,
  id: 12,
  name: "shdash",
  lastname: "ddsghsdhs",
  created_at: Fri, 03 Feb 2023 11:31:09.931756000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 11:31:09.931756000 UTC +00:00,
  amount: nil,
 #<Order:0x00007f508419a330
  id: 13,
  name: "nashdbfde",
  lastname: "sahshaash",
  created_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
  amount: nil,
  status: nil>] 
2.7.0 :014 > order = Order.take(name: 'shdash')
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/connection_adapters/abstract/database_statements.rb:429:in `Integer': can't convert Hash into Integer (TypeError)
2.7.0 :015 > Order.take(name: 'shdash')
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/connection_adapters/abstract/database_statements.rb:429:in `Integer': can't 
2.7.0 :016 > order = Order.take(1)
  Order Load (0.1ms)  SELECT "orders".* FROM "orders" LIMIT ?  [["LIMIT", 1]]
 => 
[#<Order:0x00005629a47ac7f8
2.7.0 :017 > Order.take(1)
  Order Load (0.1ms)  SELECT "orders".* FROM "orders" LIMIT ?  [["LIMIT", 1]]
 => 
[#<Order:0x00007f50842ae988
  id: 11,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  created_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
  amount: nil,
2.7.0 :018 > order = Order.first
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."id" ASC LIMIT ?  [["LIMIT", 1]]
 => 
#<Order:0x00005629a4d6d728
2.7.0 :019 > Order.first
  Order Load (0.1ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."id" ASC LIMIT ?  [["LIMIT", 1]]
 => 
#<Order:0x00005629a4c04670
 id: 11,
 name: "nancy",
 lastname: "kushwah",
 email: "nancy9ku@gmail.com",
 created_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
 updated_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
 amount: nil,
 status: nil> 
2.7.0 :020 > order = Order.first(3)
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."id" ASC LIMIT ?  [["LIMIT", 3]]
 => 
[#<Order:0x00005629a47bf790
... 
2.7.0 :021 > Order.first(3)
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."id" ASC LIMIT ?  [["LIMIT", 3]]
 => 
[#<Order:0x00005629a3f64e88
  id: 11,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  created_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
  amount: nil,
  status: nil>,
  id: 12,
  name: "shdash",
  lastname: "ddsghsdhs",
  email: "sdsdsdhdis",
  updated_at: Fri, 03 Feb 2023 11:31:09.931756000 UTC +00:00,
  amount: nil,
  status: nil>,
 #<Order:0x00005629a3f64c30
  id: 13,
  name: "nashdbfde",
  lastname: "sahshaash",
  email: "sdshada",
  created_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
  amount: nil,
  status: nil>] 
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" ORDER BY "banks"."name" ASC LIMIT ?  [["LIMIT", 1]]
 => 
#<Bank:0x00005629a46df668
... 
2.7.0 :023 > Bank.order(:name).first
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" ORDER BY "banks"."name" ASC LIMIT ?  [["LIMIT", 1]]
 => 
#<Bank:0x00005629a4d84720
 id: 1,
 name: "misha",
 lastname: "kushwah",
 city: "indore",
 pin: "1234",
 age: "23",
 created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
2.7.0 :024 > Order.order(:name).first
  Order Load (0.3ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."name" ASC LIMIT ?  [["LIMIT", 1]]
 => 
#<Order:0x00005629a4913498
 id: 11,
 name: "nancy",
 lastname: "kushwah",
 email: "nancy9ku@gmail.com",
 created_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
 updated_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
 amount: nil,
 status: nil> 
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" ORDER BY "banks"."id" DESC LIMIT ?  [["LIMIT", 1]]
 => 
#<Bank:0x00007f5084228ae0
... 
2.7.0 :026 > Bank.last
  Bank Load (0.1ms)  SELECT "banks".* FROM "banks" ORDER BY "banks"."id" DESC LIMIT ?  [["LIMIT", 1]]
 => 
#<Bank:0x00005629a4eed198
 id: 2,
 name: "sona",
 lastname: "sharma",
 email: "sonasharma@gmail.com",
 city: "bhopla",
 pin: "123",
 age: "21",
 created_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00,
 updated_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00> 
2.7.0 :027 > Bank.last(3)
  Bank Load (0.1ms)  SELECT "banks".* FROM "banks" ORDER BY "banks"."id" DESC LIMIT ?  [["LIMIT", 3]]
 => 
[#<Bank:0x00005629a4d94dc8
  id: 1,
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  city: "indore",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:30:54.186453000 UTC +00:00>,
 #<Bank:0x00005629a4d94e90
  id: 2,
  name: "sona",
  lastname: "sharma",
  email: "sonasharma@gmail.com",
  pin: "123",
  age: "21",
  created_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00>] 
2.7.0 :028 > Bank.last(1)
  Bank Load (0.1ms)  SELECT "banks".* FROM "banks" ORDER BY "banks"."id" DESC LIMIT ?  [["LIMIT", 1]]
 => 
[#<Bank:0x00007f50846e0628
  id: 2,
  name: "sona",
  lastname: "sharma",
  email: "sonasharma@gmail.com",
  pin: "123",
  age: "21",
  updated_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00>] 
2.7.0 :029 > Bank.find_by name: 'sona'
  Bank Load (0.4ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name" = ? LIMIT ?  [["name", "sona"], ["LIMIT", 1]]
 => 
#<Bank:0x00005629a45c0d40
 id: 2,
 name: "sona",
 lastname: "sharma",
 email: "sonasharma@gmail.com",
 city: "bhopla",
 pin: "123",
 age: "21",
 updated_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00> 
2.7.0 :030 > Bank.find_by name: 'jhon'
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name" = ? LIMIT ?  [["name", "jhon"], ["LIMIT", 1]]
 => nil 
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" WHERE "banks"."lastname" = ? LIMIT ?  [["lastname", "kushwah"], ["LIMIT", 1]]
 => 
#<Bank:0x00005629a4ae6770
 id: 1,
 name: "misha",
 lastname: "kushwah",
 email: "nancy9ku@gmail.com",
 city: "indore",
 pin: "1234",
 age: "23",
 created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
 updated_at: Mon, 06 Feb 2023 10:30:54.186453000 UTC +00:00> 
2.7.0 :032 > Bank.find_by! name: 'does not exist'
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name" = ? LIMIT ?  [["name", "does not exist"], ["LIMIT", 1]]
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/relation/finder_methods.rb:378:in `raise_record_not_found_exception!': Couldn't find Bank with [WHERE "banks"."name" = ?] (ActiveRecord::RecordNotFound)
2.7.0 :033 > Bank.find_by! name: 'misha'
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name" = ? LIMIT ?  [["name", "misha"], ["LIMIT", 1]]
 => 
#<Bank:0x00007f5084721e70
 id: 1,
 name: "misha",
 lastname: "kushwah",
 email: "nancy9ku@gmail.com",
 city: "indore",
 pin: "1234",
 age: "23",
 created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
 updated_at: Mon, 06 Feb 2023 10:30:54.186453000 UTC +00:00> 
2.7.0 :034 > 

