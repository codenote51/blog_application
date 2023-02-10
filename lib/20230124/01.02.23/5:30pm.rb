nancy@Nancy:~$ rvm use ruby-2.7.0
Using /home/nancy/.rvm/gems/ruby-2.7.0
nancy@Nancy:~/nancy/ror/blog_application$ ls
nancy@Nancy:~/nancy/ror/blog_application$ rails c
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version that created the lockfile by running `gem install bundler:2.3.26`.
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby, x86_64-linux but the 
-mswin32 x64-mingw32 java`.
2.7.0 :001 >  orders = Order.create
 => #<Order:0x000055fbda01ece0 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
 => #<Order:0x000055fbda19b028 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
 => #<Order:0x000055fbda19b028 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
(irb):4:in `<main>': undefined local variable or method `order' for main:Object (NameError)
2.7.0 :005 > orders.save
 => false 
Traceback (most recent call last):
der:0x000055fbda19b028> (NoMethodError)
Did you mean?  save
2.7.0 :007 > orders.save
 => false 
2.7.0 :008 > Order.new()
 => #<Order:0x000055fbda25aea0 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
2.7.0 :009 > o = Order.new()
 => #<Order:0x00007f0cac6f3aa0 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
2.7.0 :010 > o.save
 => false 
2.7.0 :011 >  o.errors
 => #<ActiveModel::Errors [#<ActiveModel::Error attribute=name, type=blank, options={}>, #<ActiveModel::Error attribute=name, type=too_short, options={:count=>3}>]> 
2.7.0 :012 > order = Order.new()
 => #<Order:0x000055fbda4cdde0 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
2.7.0 :013 > order.savw
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `savw' for #<Order:0x000055fbda4cdde0> (NoMethodError)
Did you mean?  save
2.7.0 :014 > order.save
 => false 
2.7.0 :015 > reload!
Reloading...
 => true 
2.7.0 :016 > order = Order.create()
 => #<Order:0x00007f0cac521588 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
 => false 
2.7.0 :019 > order.errors.present?
2.7.0 :020 > order.errors
, #<ActiveModel::Error attribute=email, type=blank, options={}>]> 
2.7.0 :021 > order.errors.full_messages
 => ["Name can't be blank", "Lastname can't be blank", "Email can't be blank"] 
2.7.0 :022 > order = Order.create(name: "nancy", lastname: "kushwah", email: "nancy9ku@gmail.com")
  Order Create (0.5ms)  INSERT INTO "orders" ("name", "lastname", "email", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["name", "nancy"], ["lastname", "kushwah"], ["email", "nancy9ku@gmail.com"], ["created_at", "2023-02-02 23:42:41.648295"], ["updated_at", "2023-02-02 23:42:41.648295"]]
  TRANSACTION (2.1ms)  commit transaction
 => 
#<Order:0x000055fbda490be8
... 
2.7.0 :023 > order.errors.present?
 => false 
2.7.0 :024 > order.valid?
2.7.0 :025 > order.save
 => true 
2.7.0 :026 > order = Order.find(1)
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" WHERE "orders"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/core.rb:284:in `find': Couldn't find Order with 'id'=1 (ActiveRecord::RecordNotFound)
2.7.0 :027 > Order.all
  Order Load (0.2ms)  SELECT "orders".* FROM "orders"
 => 
  id: 10,
  name: "nancy",
  lastname: "kushwah",
  created_at: Thu, 02 Feb 2023 23:42:41.648295000 UTC +00:00,
  updated_at: Thu, 02 Feb 2023 23:42:41.648295000 UTC +00:00>] 
2.7.0 :028 > order = Order.find(10)
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" WHERE "orders"."id" = ? LIMIT ?  [["id", 10], ["LIMIT", 1]]
#<Order:0x000055fbda2358d0
... 
  TRANSACTION (0.1ms)  begin transaction
  Order Update (0.3ms)  UPDATE "orders" SET "name" = ?, "updated_at" = ? WHERE "orders"."id" = ?  [["name", "Nancy"], ["updated_at", "2023-02-02 23:50:23.385641"], ["id", 10]]
  TRANSACTION (7.4ms)  commit transaction
2.7.0 :030 > order.count
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `count' for #<Order:0x000055fbda2358d0> (NoMethodError)
2.7.0 :031 > order = Order.find 2
  Order Load (0.1ms)  SELECT "orders".* FROM "orders" WHERE "orders"."id" = ? LIMIT ?  [["id", 2], ["LIMIT", 1]]
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/core.rb:284:in `find': Couldn't find Order with 'id'=2 (ActiveRecord::RecordNotFound)
2.7.0 :032 > Order.count
  Order Count (0.2ms)  SELECT COUNT(*) FROM "orders"
 => 1 
2.7.0 :033 > order = Order.find_by(name: "Nancy")
  Order Load (0.3ms)  SELECT "orders".* FROM "orders" WHERE "orders"."name" = ? LIMIT ?  [["name", "Nancy"], ["LIMIT", 1]]
 => 
#<Order:0x000055fbda4ef9b8
... 
2.7.0 :034 > order = Order.first
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."id" ASC LIMIT ?  [["LIMIT", 1]]
 => 
#<Order:0x000055fbda331400
... 
2.7.0 :035 > 

