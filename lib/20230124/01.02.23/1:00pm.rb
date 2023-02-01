nancy@Nancy:~/nancy/ror/blog_application$ rvm use ruby-2.7.0
Using /home/nancy/.rvm/gems/ruby-2.7.0
nancy@Nancy:~/nancy/ror/blog_application$ Order.new
Order.new: command not found
nancy@Nancy:~/nancy/ror/blog_application$ rails c
at created the lockfile by running `gem install bundler:2.3.26`.
dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86
Loading development environment (Rails 7.0.4.1)
2.7.0 :001 > Order.new
 => #<Order:0x0000564bf19469f0 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."id" ASC LIMIT ?  [["LIMIT", 1]]
 => 
#<Order:0x00007f7b2c26cbc8
 name: "Jhon",
 lastname: "Doe",
 created_at: Tue, 31 Jan 2023 06:30:49.425296000 UTC +00:00,
 updated_at: Tue, 31 Jan 2023 06:30:49.425296000 UTC +00:00> 
2.7.0 :003 > #<Order id: 1>
 => nil 
 => #<Order:0x0000564bf1e00608 id: nil, name: "nancy", lastname: nil, email: nil, created_at: nil, updated_at: nil> 
2.7.0 :005 > order.touch
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/persistence.rb:1127:in `_raise_record_not_touched_error': Cannot touch on a new or destroyed record object. Consider using persisted?, new_record?, or destroyed? before touching. (ActiveRecord::ActiveRecordError)
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/persistence.rb:1127:in `_raise_record_not_touched_error': Cannot touch on a 
2.7.0 :007 > @comment = Comment.last
  Comment Load (0.2ms)  SELECT "comments".* FROM "comments" ORDER BY "comments"."id" DESC LIMIT ?  [["LIMIT", 1]]
 => nil 
2.7.0 :008 > @article = Article.last
 => 
#<Article:0x0000564bf1129010
2.7.0 :009 > @article = Comment.last
  Comment Load (0.1ms)  SELECT "comments".* FROM "comments" ORDER BY "comments"."id" DESC LIMIT ?  [["LIMIT", 1]]
 => nil 
Traceback (most recent call last):
(irb):10:in `<main>': undefined method `touch' for nil:NilClass (NoMethodError)
2.7.0 :011 > @article.touch
(irb):11:in `<main>': undefined method `touch' for nil:NilClass (NoMethodError)
2.7.0 :012 > Article.touch
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `touch' for #<Class:0x00007f7b2c2dae70> (NoMethodError)
Did you mean?  touch_all
  Article Update All (7.4ms)  UPDATE "articles" SET "updated_at" = ?  [["updated_at", "2023-02-01 07:05:04.249559"]]
 => 1 
2.7.0 :014 > Article.insert_all
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/persistence.rb:145:in `insert_all': wrong number of arguments (given 0, expe
2.7.0 :015 > article.insert_all
Traceback (most recent call last):
(irb):15:in `<main>': undefined local variable or method `article' for main:Object (NameError)
Did you mean?  @article
2.7.0 :016 > @article.insert_all
Traceback (most recent call last):
(irb):16:in `<main>': undefined method `insert_all' for nil:NilClass (NoMethodError)
2.7.0 :017 > Article.insert_all!
Traceback (most recent call last):
ected 1) (ArgumentError)
2.7.0 :018 > Article.update_all
Traceback (most recent call last):
d 1) (ArgumentError)
2.7.0 :019 > order = Order.new()
 => #<Order:0x0000564bf1ecb970 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."id" DESC LIMIT ?  [["LIMIT", 1]]
 => 
#<Order:0x0000564bf1dfc418
 name: "Jhon",
 lastname: "Doe",
 email: "jhonDoe@gmail.com",
 created_at: Tue, 31 Jan 2023 06:30:49.425296000 UTC +00:00,
2.7.0 :021 > order = Order.upsert
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/persistence.rb:222:in `upsert': wrong number of arguments (given 0, expected
2.7.0 :022 > order = Order.upsert()
Traceback (most recent call last):
 1) (ArgumentError)
2.7.0 :023 > order = Order.upsert(1)
Traceback (most recent call last):
ethodError)
2.7.0 :024 > order.upsert(1)
Traceback (most recent call last):
Order:0x0000564bf1ecb970> (NoMethodError)
Did you mean?  super
2.7.0 :025 > Order.upsert(1)
Traceback (most recent call last):
ethodError)
2.7.0 :026 > Order.touch_all
  Order Update All (7.7ms)  UPDATE "orders" SET "updated_at" = ?  [["updated_at", "2023-02-01 07:11:29.326992"]]
 => 1 
2.7.0 :027 > order.upsert_all
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `upsert_all' for #<Order:0x0000564bf1ecb970> (NoMethodError)
2.7.0 :028 > Order.upsert_all
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/persistence.rb:332:in `upsert_all': wrong number of arguments (given 0, expected 1) (ArgumentError)
2.7.0 :029 > Order.update_column
Traceback (most recent call last):
 for #<Class:0x00007f7b2c3bf778> (NoMethodError)
Did you mean?  update_counters
2.7.0 :030 > Order.first
 => 
#<Order:0x0000564bf032be18
 id: 1,
 lastname: "Doe",
 email: "jhonDoe@gmail.com",
 created_at: Tue, 31 Jan 2023 06:30:49.425296000 UTC +00:00,
2.7.0 :031 > order = Order.first
  Order Load (0.1ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."id" ASC LIMIT ?  [["LIMIT", 1]]
#<Order:0x0000564bf1dcc128
... 
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `article' for #<Order:0x0000564bf1dcc128> (NoMethodError)
2.7.0 :033 > comment.article.create!
Traceback (most recent call last):
(irb):33:in `<main>': undefined local variable or method `comment' for main:Object (NameError)
Did you mean?  @comment
2.7.0 :034 > article.comments.create!
Traceback (most recent call last):
(irb):34:in `<main>': undefined local variable or method `article' for main:Object (NameError)
Did you mean?  @article
Traceback (most recent call last):
(irb):35:in `<main>': undefined method `comments' for nil:NilClass (NoMethodError)
2.7.0 :036 > @comment.articles.create!
Traceback (most recent call last):
(irb):36:in `<main>': undefined method `articles' for nil:NilClass (NoMethodError)
2.7.0 :037 > order.destroy
  TRANSACTION (0.1ms)  begin transaction
  Order Destroy (0.3ms)  DELETE FROM "orders" WHERE "orders"."id" = ?  [["id", 1]]
 => 
#<Order:0x0000564bf1dcc128
 name: "Jhon",
 email: "jhonDoe@gmail.com",
 created_at: Tue, 31 Jan 2023 06:30:49.425296000 UTC +00:00,
 updated_at: Wed, 01 Feb 2023 07:11:29.326992000 UTC +00:00> 
2.7.0 :038 > Article.all
  Article Load (0.3ms)  SELECT "articles".* FROM "articles"
 => 
[#<Article:0x0000564bf1efafe0
  title: "hello world",
  body: "i am rails",
  created_at: Tue, 31 Jan 2023 05:56:40.335331000 UTC +00:00,
  updated_at: Wed, 01 Feb 2023 07:05:04.249559000 UTC +00:00>] 
2.7.0 :039 > Order.all
  Order Load (0.2ms)  SELECT "orders".* FROM "orders"
 => [] 
2.7.0 :040 > order = Order.new()
2.7.0 :041 > order = Order.create(name: "nancy", lastname: "kushwah", email: "nancy9ku@gmail.com")
  TRANSACTION (0.1ms)  begin transaction
  Order Create (0.3ms)  INSERT INTO "orders" ("name", "lastname", "email", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["name", "nancy"], ["lastname", "kushwah"], ["email", "nancy9ku@gmail.com"], ["created_at", "2023-02-01 07:22:30.732517"], ["updated_at", "2023-02-01 07:22:30.732517"]]
  TRANSACTION (7.2ms)  commit transaction
 => 
#<Order:0x0000564bf1c42a78
... 
2.7.0 :042 > order
#<Order:0x0000564bf1c42a78
 name: "nancy",
 email: "nancy9ku@gmail.com",
 created_at: Wed, 01 Feb 2023 07:22:30.732517000 UTC +00:00,
 updated_at: Wed, 01 Feb 2023 07:22:30.732517000 UTC +00:00> 
2.7.0 :043 > Order.all
 => 
  id: 2,
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  created_at: Wed, 01 Feb 2023 07:22:30.732517000 UTC +00:00,
  updated_at: Wed, 01 Feb 2023 07:22:30.732517000 UTC +00:00>] 
 => #<Order:0x0000564bf1770c98 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
 => false 
Traceback (most recent call last):
Class:0x00007f7b2c3bf778> (NoMethodError)
Did you mean?  validate
2.7.0 :047 > order.valid?
 => true 
2.7.0 :048 > order.errors
 => #<ActiveModel::Errors []> 
2.7.0 :049 > order = Order.find_by(name: "nancy")
  Order Load (0.3ms)  SELECT "orders".* FROM "orders" WHERE "orders"."name" = ? LIMIT ?  [["name", "nancy"], ["LIMIT", 1]]
 => 
#<Order:0x0000564bf1cdaa80
... 
2.7.0 :050 > order.save
 => true 
2.7.0 :051 > order.new_record?
 => false 
2.7.0 :052 > Order.create(name: "nancy").valid?
 => false 
2.7.0 :053 > Order.create(name: nil).valid?
 => false 
2.7.0 :054 > 

