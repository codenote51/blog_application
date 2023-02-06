nancy@Nancy:~/nancy/ror/blog_application$ rvm use ruby-2.7.0
nancy@Nancy:~/nancy/ror/blog_application$ rails c
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version th
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby, x86_64-linux but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
2.7.0 :001 > reload!
Reloading...
 => true 
 => #<Order:0x0000558f67279dd0 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil, amount: nil, status: nil> 
2.7.0 :003 > reload!
Reloading...
2.7.0 :004 > order = Order.new
 => #<Order:0x0000558f675eaf28 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil, amount: nil, status: nil> 
Reloading...
 => true 
2.7.0 :006 > order = Order.new
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/scoping/named.rb:160:in `scope': You tried to define a scope named "name" on the model "Order", but Active Record already defined a class method with the same name. (ArgumentError)
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/scoping/named.rb:160:in `scope': You tried to define a scope named "name" on the model "Order", but Active Record already defined a class method with the same name. (ArgumentError)
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/scoping/named.rb:160:in `scope': You tried to define a scope named "name" on
2.7.0 :009 > reload!
Reloading...
 => true 
Traceback (most recent call last):
 the model "Order", but Active Record already defined a class method with the same name. (ArgumentError)
2.7.0 :011 > reload!
Reloading...
2.7.0 :012 > o = Order.new
Traceback (most recent call last):
 the model "Order", but Active Record already defined a class method with the same name. (ArgumentError)
2.7.0 :013 > reload!
Reloading...
2.7.0 :014 > o = order.new()
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `new' for #<Ord
2.7.0 :015 > o = Order.new()
 => #<Order:0x0000558f67518e38 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil, amount: nil, status: nil> 
Traceback (most recent call last):
(irb):16:in `<main>': undefined method `old' for "Order":String (NoMethodError)
Did you mean?  ord
2.7.0 :017 > reload!
Reloading...
 => true 
2.7.0 :018 > Order.all
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/scoping/named.rb:160:in `scope': You tried to define a scope named "name" on the model "Order", but Active Record already defined a class method with the same name. (ArgumentError)
2.7.0 :019 > Order.name
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/scoping/named.rb:160:in `scope': You tried to define a scope named "name" on the model "Order", but Active Record already defined a class method with the same name. (ArgumentError)
2.7.0 :020 > reload!
Reloading...
 => true 
2.7.0 :021 > Order.all
  Order Load (0.2ms)  SELECT "orders".* FROM "orders"
 => 
[#<Order:0x0000558f6743cf50
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
  amount: nil,
  status: nil>,
  id: 13,
  name: "nashdbfde",
  lastname: "sahshaash",
  created_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
  amount: nil,
  status: nil>] 
2.7.0 :022 > order.new
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `new' for #<Order:0x0000558f675eaf28> (NoMethodError)
2.7.0 :023 > Order.new
 => #<Order:0x0000558f6712ad08 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil, amount: nil, status: nil> 
2.7.0 :024 > Order.email
  Order Load (0.3ms)  SELECT "orders".* FROM "orders" WHERE "orders"."lastname" = ?  [["lastname", "t"]]
 => [] 
2.7.0 :025 > Order.where('name > nashdbfde')
  Order Load (0.5ms)  SELECT "orders".* FROM "orders" WHERE (name > nashdbfde)
(Object doesn't support #inspect)
 =>  
2.7.0 :026 > Order.unscoped.all
  Order Load (0.1ms)  SELECT "orders".* FROM "orders"
 => 
[#<Order:0x0000558f6738a1c0
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
  status: nil>,
 #<Order:0x0000558f6738a008
  id: 13,
  name: "nashdbfde",
  lastname: "sahshaash",
  email: "sdshada",
  created_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
  amount: nil,
  status: nil>] 
2.7.0 :027 > Order.where(name: ture).unscoped.all
Traceback (most recent call last):
(irb):27:in `<main>': undefined local variable or method `ture' for main:Object (NameError)
Did you mean?  true
2.7.0 :028 > Order.where(name: true).unscoped.all
  Order Load (0.1ms)  SELECT "orders".* FROM "orders"
 => 
[#<Order:0x0000558f67417160
  id: 11,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  created_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
  amount: nil,
  status: nil>,
  id: 12,
  lastname: "ddsghsdhs",
  email: "sdsdsdhdis",
  updated_at: Fri, 03 Feb 2023 11:31:09.931756000 UTC +00:00,
  amount: nil,
  status: nil>,
 #<Order:0x0000558f67416fd0
  id: 13,
  name: "nashdbfde",
  lastname: "sahshaash",
  email: "sdshada",
  created_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
  amount: nil,
2.7.0 :029 > Order.unscoped { Order.name }
 => "Order" 
2.7.0 :030 > reload!
Reloading...
 => 
#<Order:0x0000558f673080f8
 id: 13,
 name: "nashdbfde",
 lastname: "sahshaash",
 amount: nil,
 status: nil> 
2.7.0 :032 > Order.create_with(locked: false).find_or_create_by(name: 'jhon')
  Order Load (0.1ms)  SELECT "orders".* FROM "orders" WHERE "orders"."name" = ? LIMIT ?  [["name", "jhon"], ["LIMIT", 1]]
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_assignment.rb:51:in `_assign_attribute': unknown attribute 'locked' for Order. (ActiveModel::UnknownAttributeError)
2.7.0 :033 > Order.find_or_create_by(name: 'jhon') do |o|
2.7.0 :034 >   o.locked = false
2.7.0 :035 > end
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" WHERE "orders"."name" = ? LIMIT ?  [["name", "jhon"], ["LIMIT", 1]]
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `locked=' for #<Order:0x0000558f66e9e508> (NoMethodError)
Did you mean?  lock!
2.7.0 :036 > Order.find_or_create_by(name: 'nashdbfde') do |o|
2.7.0 :038 > end
  Order Load (0.1ms)  SELECT "orders".* FROM "orders" WHERE "orders"."name" = ? LIMIT ?  [["name", "nashdbfde"], ["LIMIT", 1]]
 => 
#<Order:0x0000558f66e31e30
 id: 13,
 name: "nashdbfde",
 lastname: "sahshaash",
 email: "sdshada",
 created_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
 updated_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
 amount: nil,
2.7.0 :039 > Order.find_or_create_by!(name: 'andy')
  Order Load (0.1ms)  SELECT "orders".* FROM "orders" WHERE "orders"."name" = ? LIMIT ?  [["name", "andy"], ["LIMIT", 1]]
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/validations.rb:80:in `raise_validation_error': Validation failed: Status is not included in the list, Lastname can't be blank (ActiveRecord::RecordInvalid)
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" WHERE "orders"."name" = ? LIMIT ?  [["name", "nashdbfde"], ["LIMIT", 1]]
 => 
#<Order:0x0000558f66db4c00
 id: 13,
 lastname: "sahshaash",
 email: "sdshada",
 updated_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
 status: nil> 
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `find_or_initialize' for #<Class:0x0000558f673221b0> (NoMethodError)
Did you mean?  find_or_initialize_by
2.7.0 :042 > nashdbfde = Order.find_or_initialize_by(name: 'nashdbfde')
  Order Load (0.1ms)  SELECT "orders".* FROM "orders" WHERE "orders"."name" = ? LIMIT ?  [["name", "nashdbfde"], ["LIMIT", 1]]
#<Order:0x0000558f673d2c18
... 
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name" = ? LIMIT ?  [["name", "nancy"], ["LIMIT", 1]]
 => #<Bank:0x00007f6ba418a210 id: nil, name: "nancy", lastname: nil, email: nil, city: nil, pin: nil, age: nil, created_at: nil, updated_at: nil> 
 => false 
2.7.0 :045 > nancy.new_record?
2.7.0 :046 > nancy.save
  TRANSACTION (0.1ms)  begin transaction
  TRANSACTION (0.1ms)  rollback transaction
 => false 
   (0.2ms)  SELECT name, lastname FROM orders Where id = '11'
 => [{"name"=>"nancy", "lastname"=>"kushwah"}] 
  Order Pluck (0.2ms)  SELECT "orders"."id" FROM "orders" WHERE "orders"."name" = ?  [["name", "nancy"]]
 => [11] 
  Order Pluck (0.1ms)  SELECT "orders"."id" FROM "orders" WHERE "orders"."name" = ?  [["name", "t"]]
 => [] 
  Order Pluck (0.4ms)  SELECT DISTINCT "orders"."name" FROM "orders"
 => ["nancy", "shdash", "nashdbfde"] 
  Order Pluck (0.2ms)  SELECT "orders"."id", "orders"."name" FROM "orders"
 => [[11, "nancy"], [12, "shdash"], [13, "nashdbfde"]] 
  Order Load (0.3ms)  SELECT "orders"."id" FROM "orders"
 => [11, 12, 13] 
  Order Load (0.1ms)  SELECT "orders"."id" FROM "orders"
 => [11, 12, 13] 
  Order Load (0.4ms)  SELECT "orders"."name" FROM "orders"
 => ["nancy", "shdash", "nashdbfde"] 
2.7.0 :055 > Order.select(:lastname).map(&:lastname)
 => ["kushwah", "ddsghsdhs", "sahshaash"] 
2.7.0 :056 > Order.select(:name, :lastname).map { |o| [o.name, o.lastname] }
  Order Load (0.2ms)  SELECT "orders"."name", "orders"."lastname" FROM "orders"
2.7.0 :057 > Order.pluck(:name)
  Order Pluck (0.2ms)  SELECT "orders"."name" FROM "orders"
2.7.0 :058 > Order.pluck(:name, :lastname)
  Order Pluck (0.1ms)  SELECT "orders"."name", "orders"."lastname" FROM "orders"
 => [["nancy", "kushwah"], ["shdash", "ddsghsdhs"], ["nashdbfde", "sahshaash"]] 
2.7.0 :059 > reload!
 => true 
2.7.0 :060 > Order.select(:name).map &:name
  Order Load (0.2ms)  SELECT "orders"."name" FROM "orders"
/home/nancy/nancy/ror/blog_application/app/models/order.rb:9:in `name': stack level too deep (SystemStackError)
2.7.0 :061 > Order.select(:lastname).map &:name
  Order Load (0.2ms)  SELECT "orders"."lastname" FROM "orders"
/home/nancy/nancy/ror/blog_application/app/models/order.rb:9:in `name': stack level too deep (SystemStackError)
2.7.0 :062 > Order.pluck(:name)
 => ["nancy", "shdash", "nashdbfde"] 
2.7.0 :063 > Order.pulck(:lastname).limit(1)
Traceback (most recent call last):
lass:0x0000558f6728b378> (NoMethodError)
Did you mean?  pluck
2.7.0 :064 > Order.pluck(:lastname).limit(1)
Traceback (most recent call last):
(irb):64:in `<main>': undefined method `limit' for ["kushwah", "ddsghsdhs", "sahshaash"]:Array (NoMethodError)
  Order Pluck (0.1ms)  SELECT "orders"."lastname" FROM "orders"
Traceback (most recent call last):
2.7.0 :066 > Order.limit(5).pluck(:lastname)
  Order Pluck (0.4ms)  SELECT "orders"."lastname" FROM "orders" LIMIT ?  [["LIMIT", 5]]
 => ["kushwah", "ddsghsdhs", "sahshaash"] 
2.7.0 :067 > assoc = Order.includes(:lastname)
  Order Load (0.2ms)  SELECT "orders".* FROM "orders"
(Object doesn't support #inspect)
2.7.0 :068 > assoc.pluck(:lastname)
Traceback (most recent call last):
 to association named 'lastname'; perhaps you misspelled it? (ActiveRecord::ConfigurationError)
2.7.0 :069 > Order.ids
 => [11, 12, 13] 
2.7.0 :070 > reload!
 => true 
2.7.0 :071 > Order.ids
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/sqlite3-1.6.0-x86_64-linux/lib/sqlite3/database.rb:152:in `initialize': no such column: order_id (SQLite3::SQLExcep
/home/nancy/.rvm/gems/ruby-2.7.0/gems/sqlite3-1.6.0-x86_64-linux/lib/sqlite3/database.rb:152:in `initialize': SQLite3::SQLException: no such column: order_id (ActiveRecord::StatementInvalid)
Traceback (most recent call last):
(irb):72:in `<main>': uninitialized constant Orders (NameError)
Reloading...
 => true 
2.7.0 :074 > Order.ids
 => [11, 12, 13] 
2.7.0 :075 > Order.exists?(11)
  Order Exists? (0.3ms)  SELECT 1 AS one FROM "orders" WHERE "orders"."id" = ? LIMIT ?  [["id", 11], ["LIMIT", 1]]
2.7.0 :076 > Order.where(name: 'nancy').exists?
  Order Exists? (0.3ms)  SELECT 1 AS one FROM "orders" WHERE "orders"."name" = ? LIMIT ?  [["name", "nancy"], ["LIMIT", 1]]
2.7.0 :077 > Order.any?
  Order Exists? (0.2ms)  SELECT 1 AS one FROM "orders" LIMIT ?  [["LIMIT", 1]]
 => true 
  Order Count (0.2ms)  SELECT COUNT(*) FROM (SELECT 1 AS one FROM "orders" LIMIT ?) subquery_for_count  [["LIMIT", 2]]
 => true 
2.7.0 :079 > Order.shipped.any?
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `shipped' for #<Class:0x0000558f66e17a80> (NoMethodError)
2.7.0 :080 > Article.comment.any?
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `comment' for #<Class:0x0000558f67279600> (NoMethodError)
  Order Exists? (0.2ms)  SELECT 1 AS one FROM "orders" WHERE "orders"."name" IS NULL LIMIT ?  [["LIMIT", 1]]
 => false 
  Order Count (0.2ms)  SELECT COUNT(*) FROM (SELECT 1 AS one FROM "orders" WHERE "orders"."name" = ? LIMIT ?) subquery_for_count  [["name", "t"], ["LIMIT", 2]]
 => false 
2.7.0 :083 > Customer.first.orders.any?
  Customer Load (0.2ms)  SELECT "customers".* FROM "customers" ORDER BY "customers"."id" ASC LIMIT ?  [["LIMIT", 1]]
Traceback (most recent call last):
2.7.0 :084 > Customer.first.order.any?
  Customer Load (0.2ms)  SELECT "customers".* FROM "customers" ORDER BY "customers"."id" ASC LIMIT ?  [["LIMIT", 1]]
(irb):84:in `<main>': undefined method `order' for nil:NilClass (NoMethodError)
2.7.0 :085 > Order.count
 => 3 
2.7.0 :086 > Order.where(name: 'nancy').count
 => 1 
2.7.0 :087 > Order.average('nancy')
  Order Average (0.4ms)  SELECT AVG(nancy) FROM "orders"
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/sqlite3-1.6.0-x86_64-linux/lib/sqlite3/database.rb:152:in `initialize': no such column: nancy (SQLite3::SQLException)
/home/nancy/.rvm/gems/ruby-2.7.0/gems/sqlite3-1.6.0-x86_64-linux/lib/sqlite3/database.rb:152:in `initialize': SQLite3::SQLException: no such column: nanc
2.7.0 :088 > Order.average(:name)
  Order Average (0.4ms)  SELECT AVG("orders"."name") FROM "orders"
 => "0.0" 
2.7.0 :089 > Order.minimum(:name)
  Order Minimum (0.2ms)  SELECT MIN("orders"."name") FROM "orders"
 => "nancy" 
2.7.0 :090 > Order.sum(:name)
  Order Sum (0.2ms)  SELECT SUM("orders"."name") FROM "orders"
 => "0.0" 
2.7.0 :091 > Article.where(id: 1).joins(:comments).explain
  Article Load (0.2ms)  SELECT "articles".* FROM "articles" INNER JOIN "comments" ON "comments"."article_id" = "articles"."id" WHERE "articles"."id" = ?  [["id", 1]]
 => 
EXPLAIN for: SELECT "articles".* FROM "articles" INNER JOIN "comments" ON "comments"."article_id" = "articles"."id" WHERE "articles"."id" = ? [["id", 1]]
3|0|0|SEARCH articles USING INTEGER PRIMARY KEY (rowid=?)
6|0|0|SEARCH comments USING COVERING INDEX index_comments_on_article_id (article_id=?)
 
2.7.0 :092 > Article.where(id: 1).includes(:comments).explain
  Article Load (0.2ms)  SELECT "articles".* FROM "articles" WHERE "articles"."id" = ?  [["id", 1]]
  Comment Load (0.2ms)  SELECT "comments".* FROM "comments" WHERE "comments"."article_id" = ?  [["article_id", 1]]
 => 
EXPLAIN for: SELECT "articles".* FROM "articles" WHERE "articles"."id" = ? [["id", 1]]
2|0|0|SEARCH articles USING INTEGER PRIMARY KEY (rowid=?)

EXPLAIN for: SELECT "comments".* FROM "comments" WHERE "comments"."article_id" = ? [["article_id", 1]]
3|0|0|SEARCH comments USING INDEX index_comments_on_article_id (article_id=?)
 
2.7.0 :093 > 

