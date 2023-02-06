nancy@Nancy:~/nancy/ror/blog_application$ rvm use ruby-2.7.0
Using /home/nancy/.rvm/gems/ruby-2.7.0
nancy@Nancy:~/nancy/ror/blog_application$ rails c
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version th
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby, x86_64-linux but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
Loading development environment (Rails 7.0.4.1)
2.7.0 :001 > Bank.order(:created_at)
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" ORDER BY "banks"."created_at" ASC
 => 
[#<Bank:0x0000561d034af1e8
  id: 1,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00>] 
2.7.0 :002 > Bank.order("created_at")
  Bank Load (0.4ms)  SELECT "banks".* FROM "banks" ORDER BY created_at
 => 
[#<Bank:0x0000561d04063e58
  id: 1,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00>] 
2.7.0 :003 > Bank.order(creates_at: :desc)
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" ORDER BY "creates_at" DESC
 => 
[#<Bank:0x0000561d042715d8
  id: 1,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00>] 
2.7.0 :004 > Bank.order(creates_at: :asc)
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" ORDER BY "creates_at" ASC
 => 
[#<Bank:0x0000561d03fc0730
  id: 1,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00>] 
2.7.0 :005 > Bank.order("created_at DESC")
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" ORDER BY created_at DESC
 => 
[#<Bank:0x0000561d0380eff0
  id: 1,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00>] 
2.7.0 :006 > Bank.order("created_at ASC")
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" ORDER BY created_at ASC
 => 
[#<Bank:0x0000561d041f62c0
  id: 1,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00>] 
2.7.0 :007 > Bank.order(name: :asc, created_at: :desc)
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" ORDER BY "banks"."name" ASC, "banks"."created_at" DESC
 => 
[#<Bank:0x0000561d03dda650
  id: 1,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00>] 
2.7.0 :008 > Bank.order(name: :asc, lastname: :desc)
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" ORDER BY "banks"."name" ASC, "banks"."lastname" DESC
 => 
[#<Bank:0x00007fb600175490
  id: 1,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00>] 
2.7.0 :009 > Bank.order(:name, lastname: :desc)
  Bank Load (0.1ms)  SELECT "banks".* FROM "banks" ORDER BY "banks"."name" ASC, "banks"."lastname" DESC
 => 
[#<Bank:0x0000561d03f3d8f8
  id: 1,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00>] 
2.7.0 :010 > Bank.order(:name, create_at: :desc)
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" ORDER BY "banks"."name" ASC, "create_at" DESC
 => 
[#<Bank:0x0000561d03a4c7e0
  id: 1,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  pin: "1234",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00>] 
2.7.0 :011 > Bank.order("name ASC, lastname DESC")
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" ORDER BY name ASC, lastname DESC
 => 
[#<Bank:0x00007fb6007e8688
  id: 1,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  city: "indore",
  pin: "1234",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00>] 
2.7.0 :012"> Bank.order("name AS
^C
2.7.0 :012 > Bank.order("name ASC", "lastname DESC")
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" ORDER BY name ASC, lastname DESC
 => 
[#<Bank:0x0000561d0406c3a0
  id: 1,
  name: "nancy",
  lastname: "kushwah",
  city: "indore",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00>] 
2.7.0 :013 > Order.last
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."id" DESC LIMIT ?  [["LIMIT", 1]]
 => 
#<Order:0x0000561d03f484b0
 id: 13,
 name: "nashdbfde",
 lastname: "sahshaash",
 created_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
 updated_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
 status: nil> 
2.7.0 :014 > Bank.order("name ASC").order("lastname DESC")
 => 
[#<Bank:0x0000561d04252200
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  city: "indore",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00>] 
2.7.0 :015 > Bank.select(:name, :lastname)
 => [#<Bank:0x0000561d03fcabe0 id: nil, name: "nancy", lastname: "kushwah">] 
2.7.0 :016 > Bank.select(:lastname).distinct
  Bank Load (0.2ms)  SELECT DISTINCT "banks"."lastname" FROM "banks"
 => [#<Bank:0x0000561d03a923a8 id: nil, lastname: "kushwah">] 
2.7.0 :017 > query = Bank.select(:lastname).distinct
  Bank Load (0.2ms)  SELECT DISTINCT "banks"."lastname" FROM "banks"
 => [#<Bank:0x0000561d041d2fa0 id: nil, lastname: "kushwah">] 
2.7.0 :018 > query = Order.select(:lastname).distinct
  Order Load (0.2ms)  SELECT DISTINCT "orders"."lastname" FROM "orders"
 => 
[#<Order:0x00007fb6007ba850 id: nil, lastname: "kushwah">,
... 
  Order Load (0.2ms)  SELECT DISTINCT "orders"."name" FROM "orders"
 => 
[#<Order:0x0000561d032f64a0 id: nil, name: "nancy">,
... 
2.7.0 :020 > Bank.limit(1)
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" LIMIT ?  [["LIMIT", 1]]
 => 
[#<Bank:0x0000561d0420cf70
  id: 1,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  city: "indore",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00>] 
2.7.0 :021 > Order.limit(5)
  Order Load (0.3ms)  SELECT "orders".* FROM "orders" LIMIT ?  [["LIMIT", 5]]
 => 
[#<Order:0x0000561d03f9fb70
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
  email: "sdsdsdhdis",
  created_at: Fri, 03 Feb 2023 11:31:09.931756000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 11:31:09.931756000 UTC +00:00,
  amount: nil,
  status: nil>,
  id: 13,
  name: "nashdbfde",
  email: "sdshada",
  created_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
  amount: nil,
  status: nil>] 
 => [] 
2.7.0 :023 > Order.select("name").group("lastname")
  Order Load (0.3ms)  SELECT "orders"."name" FROM "orders" GROUP BY "orders"."lastname"
[#<Order:0x0000561d04101360 id: nil, name: "shdash">,
 #<Order:0x0000561d04101298 id: nil, name: "nancy">,
 #<Order:0x0000561d041011d0 id: nil, name: "nashdbfde">] 
  Order Count (0.2ms)  SELECT COUNT(*) AS "count_all", "orders"."status" AS "orders_status" FROM "orders" GROUP BY "orders"."status"
 => {nil=>3} 
  Article Count (0.2ms)  SELECT COUNT(*) AS "count_all", "articles"."status" AS "articles_status" FROM "articles" GROUP BY "articles"."status"
 => {"public"=>1} 
  Order Count (0.2ms)  SELECT COUNT(*) AS "count_all", "orders"."name" AS "orders_name" FROM "orders" GROUP BY "orders"."name"
 => {"nancy"=>1, "nashdbfde"=>1, "shdash"=>1} 
2.7.0 :027 > Article .select("created_at, sum(total) as total_price").
2.7.0 :028 >   group("created_at").having("sum(total) > ?", 200)
  Article Load (0.5ms)  SELECT created_at, sum(total) as total_price FROM "articles" GROUP BY "articles"."created_at" HAVING (sum(total) > 200)
(Object doesn't support #inspect)
 =>  
  Order Load (0.5ms)  SELECT name, sum(name) as name FROM "orders" GROUP BY "orders"."name" HAVING (sum(nancy) > 200)
(Object doesn't support #inspect)
 =>  
2.7.0 :030 > Order.where('id > 100').limit(20).order('id desc').unscope(:order)
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" WHERE (id > 100) LIMIT ?  [["LIMIT", 20]]
 => [] 
2.7.0 :031 > Order.where('id> 100').limit(11).order('id desc').unscope(:order)
  Order Load (0.3ms)  SELECT "orders".* FROM "orders" WHERE (id> 100) LIMIT ?  [["LIMIT", 11]]
 => [] 
2.7.0 :032 > Order.where('id > 12').limit(5).order('id desc').unscopr(:order)
  Order Load (0.3ms)  SELECT "orders".* FROM "orders" WHERE (id > 12) /* loading for inspect */ ORDER BY id desc LIMIT ?  [["LIMIT", 5]]
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/relation/delegation.rb:110:in `method_missing': undefined method `unscopr' f
Did you mean?  unscope
               unscope!
2.7.0 :033 > Order.where('id > 12').limit(5).order('id desc').unscope(:order)
  Order Load (0.3ms)  SELECT "orders".* FROM "orders" WHERE (id > 12) LIMIT ?  [["LIMIT", 5]]
 => 
[#<Order:0x0000561d039e0590
  id: 13,
  name: "nashdbfde",
  lastname: "sahshaash",
  email: "sdshada",
  created_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
  status: nil>] 
2.7.0 :034 > Order.where(id:11, name: false).unscope(where: :id)
  Order Load (0.4ms)  SELECT "orders".* FROM "orders" WHERE "orders"."name" = ?  [["name", "f"]]
 => [] 
2.7.0 :035 > Bank.where(id:1, name: "nancy").unscope(where: :id)
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name" = ?  [["name", "nancy"]]
 => 
[#<Bank:0x0000561d03fd8970
  id: 1,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00>] 
2.7.0 :036 > Bank.order('id desc').merge(Bank.unscope(:order))
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks"
[#<Bank:0x0000561d040a9138
  id: 1,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00>] 
2.7.0 :037 > Bank.where('id < 1').limt(1).order('id desc').only(:order,:where)
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" WHERE (id < 1) /* loading for inspect */ LIMIT ?  [["LIMIT", 11]]
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/relation/delegation.rb:110:in `method_missing': undefined method `limt' for 
Did you mean?  limit
2.7.0 :038 > Order.wher('id < 12').limt(5).order('id desc').only(:order, :where)
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `wher' for #<Class:0x0000561d03f653a8> (NoMethodError)
Did you mean?  where
               when
2.7.0 :039 > Order.where('id < 12').limt(5).order('id desc').only(:order, :where)
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" WHERE (id < 12) /* loading for inspect */ LIMIT ?  [["LIMIT", 11]]
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/relation/delegation.rb:110:in `method_missing': undefined method `limt' for #<Order::ActiveRecord_Relation:0x0000561d03e62000> (NoMethodError)
Did you mean?  limit
2.7.0 :040 > Bank.select(:name, :laastname).reselect(:city)
  Bank Load (0.2ms)  SELECT "banks"."city" FROM "banks"
 => [#<Bank:0x0000561d04227320 id: nil, city: "indore">] 
2.7.0 :041 > Bank.select(:name, :lastname).select(:city)
  Bank Load (0.3ms)  SELECT "banks"."name", "banks"."lastname", "banks"."city" FROM "banks"
 => [#<Bank:0x0000561d0342bca8 id: nil, name: "nancy", lastname: "kushwah", city: "indore">] 
2.7.0 :042 > Article.find(1).comment
  Article Load (0.2ms)  SELECT "articles".* FROM "articles" WHERE "articles"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `comment' for #<Article:0x0000561d04138a40> (NoMethodError)
Did you mean?  comments
               comments=
2.7.0 :043 > Article.find(1).comments
  Article Load (0.3ms)  SELECT "articles".* FROM "articles" WHERE "articles"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
 => 
[#<Comment:0x0000561d03c298d8
  id: 1,
  body: "sgdgsgdiasdgidd",
  article_id: 1,
  created_at: Fri, 03 Feb 2023 10:10:09.997783000 UTC +00:00,
  status: "private">,
 #<Comment:0x0000561d03a8f518
  id: 2,
  body: "gddhshxosjdjdjpasdja",
  article_id: 1,
  created_at: Fri, 03 Feb 2023 10:10:30.286513000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 10:10:30.286513000 UTC +00:00,
  status: "private">] 
2.7.0 :044 > Article.where("comment_id > 1").order(:name).reverse_order
  Article Load (0.5ms)  SELECT "articles".* FROM "articles" WHERE (comment_id > 1) ORDER BY "name" DESC
(Object doesn't support #inspect)
 =>  
2.7.0 :045 > Article.where("comment_id > 1").order(:title).reverse_order
  Article Load (0.5ms)  SELECT "articles".* FROM "articles" WHERE (comment_id > 1) ORDER BY "articles"."title" DESC
(Object doesn't support #inspect)
2.7.0 :046 > Article.where('comment_id > 1').reverse_order
(Object doesn't support #inspect)
 =>  
2.7.0 :047 > Bank.where(name: 'nancy').rewhere(lastname: 'kushwah')
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name" = ? AND "banks"."lastname" = ?  [["name", "nancy"], ["lastname", "kushwah"]]
[#<Bank:0x00007fb6005781a0
  id: 1,
  name: "nancy",
  email: "nancy9ku@gmail.com",
  city: "indore",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00>] 
2.7.0 :048 > Bank.none
 => [] 
2.7.0 :049 > bank = Bank.readonly.first
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" ORDER BY "banks"."id" ASC LIMIT ?  [["LIMIT", 1]]
 => 
#<Bank:0x0000561d03e6d3b0
2.7.0 :050 > bank.visits += 1
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `visits' for #<Bank:0x0000561d03e6d3b0> (NoMethodError)
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" ORDER BY "banks"."id" ASC LIMIT ?  [["LIMIT", 1]]
 => 
#<Bank:0x0000561d04267380
 id: 1,
 lastname: "kushwah",
 city: "indore",
 pin: "1234",
 age: "23",
 created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
 updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00> 
2.7.0 :052 > bank = Bank.find(1)
  Bank Load (0.5ms)  SELECT "banks".* FROM "banks" WHERE "banks"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
#<Bank:0x0000561d03fa30e0
2.7.0 :053 > bank1 = Bank.find(1)
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" WHERE "banks"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
 => 
#<Bank:0x0000561d03aab240
... 
2.7.0 :054 > bank.name = "sona"
 => "sona" 
  TRANSACTION (0.1ms)  begin transaction
  Bank Exists? (0.2ms)  SELECT 1 AS one FROM "banks" WHERE "banks"."email" = ? AND "banks"."id" != ? LIMIT ?  [["email", "nancy9ku@gmail.com"], ["id", 1]
  Bank Update (0.3ms)  UPDATE "banks" SET "name" = ?, "updated_at" = ? WHERE "banks"."id" = ?  [["name", "sona"], ["updated_at", "2023-02-06 10:05:42.157
  TRANSACTION (7.7ms)  commit transaction
 => true 
2.7.0 :056 > bank1.name = "mona"
2.7.0 :057 > bank1.save
  TRANSACTION (0.1ms)  begin transaction
  Bank Exists? (0.2ms)  SELECT 1 AS one FROM "banks" WHERE "banks"."email" = ? AND "banks"."id" != ? LIMIT ?  [["email", "nancy9ku@gmail.com"], ["id", 1], ["LIMIT", 1]]
  Bank Update (0.3ms)  UPDATE "banks" SET "name" = ?, "updated_at" = ? WHERE "banks"."id" = ?  [["name", "mona"], ["updated_at", "2023-02-06 10:06:12.685862"], ["id", 1]]
  TRANSACTION (2.5ms)  commit transaction
 => true 
2.7.0 :058 > reload!
 => true 
2.7.0 :059 > bank = Bank.new()
 => #<Bank:0x0000561d041aeba0 id: nil, name: nil, lastname: nil, email: nil, city: nil, pin: nil, age: nil, created_at: nil, updated_at: nil> 
2.7.0 :060 > bank = Bank.create(name: "sona", lastnam: "sharma", email: "sonasharma@gmail.com", city: "bhopla", pin: "123", age: "21")
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_assignment.rb:51:in `_assign_attribute': unknown attribute 'lastnam'
2.7.0 :061 >  bank = Bank.create(name: "sona", lastname: "sharma", email: "sonasharma@gmail.com", city: "bhopla", pin: "123", age: "21")
  TRANSACTION (0.1ms)  begin transaction
  Bank Exists? (0.2ms)  SELECT 1 AS one FROM "banks" WHERE "banks"."email" = ? LIMIT ?  [["email", "sonasharma@gmail.com"], ["LIMIT", 1]]
  Bank Create (0.3ms)  INSERT INTO "banks" ("name", "lastname", "email", "city", "pin", "age", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)  [["name", "sona"], ["lastname", "sharma"], ["email", "sonasharma@gmail.com"], ["city", "bhopla"], ["pin", "123"], ["age", "21"], ["created_at", "2023-02-06 10:14:54.900833"], ["updated_at", "2023-02-06 10:14:54.900833"]]
  TRANSACTION (7.5ms)  commit transaction
#<Bank:0x0000561d03f53ce8
... 
2.7.0 :062 > bank = Bank.lock.first
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" ORDER BY "banks"."id" ASC LIMIT ?   [["LIMIT", 1]]
 => 
#<Bank:0x0000561d034f5648
... 
2.7.0 :063 > bank.name = 'misha'
 => "misha" 
2.7.0 :064 > bank.save
  TRANSACTION (0.1ms)  begin transaction
  Bank Exists? (0.2ms)  SELECT 1 AS one FROM "banks" WHERE "banks"."email" = ? AND "banks"."id" != ? LIMIT ?  [["email", "nancy9ku@gmail.com"], ["id", 1], ["LIMIT", 1]]
  Bank Update (0.2ms)  UPDATE "banks" SET "name" = ?, "updated_at" = ? WHERE "banks"."id" = ?  [["name", "misha"], ["updated_at", "2023-02-06 10:30:54.186453"], ["id", 1]]
  TRANSACTION (8.5ms)  commit transaction
 => true 
2.7.0 :065 > Bank.all
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks"
 => 
[#<Bank:0x0000561d03f4f828
  id: 1,
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  city: "indore",
  pin: "1234",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:30:54.186453000 UTC +00:00>,
 #<Bank:0x0000561d03f4f558
  name: "sona",
  lastname: "sharma",
  email: "sonasharma@gmail.com",
  pin: "123",
  age: "21",
  created_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00,
2.7.0 :066 > bank = bank.lock("Lock in share mode").find(1)
Traceback (most recent call last):
nk:0x0000561d034f5648> (NoMethodError)
Did you mean?  lock!
  Article Load (0.6ms)  SELECT "articles".* FROM "articles" INNER JOIN comments ON comments.article_id = article.id AND customers.title = Hello world
(Object doesn't support #inspect)
  Article Load (0.6ms)  SELECT "articles".* FROM "articles" INNER JOIN comments ON comments.aticle_id = article.id AND comment.title = Hello world
(Object doesn't support #inspect)
2.7.0 :069 > Comment.joins("INNER JOIN articles ON articles.comment_id = comment.id AND articles.title = ruby on rails")
  Comment Load (0.6ms)  SELECT "comments".* FROM "comments" INNER JOIN articles ON articles.comment_id = comment.id AND articles.title = ruby on rails
(Object doesn't support #inspect)
 =>  
(Object doesn't support #inspect)
 =>  
(Object doesn't support #inspect)
 =>  
(Object doesn't support #inspect)
 =>  
2.7.0 :073 > time_range = (Time.now.midnight - 1.day)..Time.now.midnight
2.7.0 :074 > Customer.joins(:orders).where(orders: { created_at: time_range }).distinct
(Object doesn't support #inspect)
 =>  
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `left_outher_joins' for #<Class:0x0000561d041b7c28> (NoMethodError)
2.7.0 :076 > Customer.left_outer_joins(:reviews).distinct.select('customers.*, COUNT(reviews.*) AS reviews_count').group('customers.id')
(Object doesn't support #inspect)
 =>  
(Object doesn't support #inspect)
 =>  
2.7.0 :078 > bank = Bank.includes(:name).limt(1)
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" /* loading for inspect */ LIMIT ?  [["LIMIT", 11]]
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/relation/delegation.rb:110:in `method_missing': undefined method `limt' for #<Bank::ActiveRecord_Relation:0x00007fb600660798> (NoMethodError)
Did you mean?  limit
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" LIMIT ?  [["LIMIT", 1]]
(Object doesn't support #inspect)
 =>  
2.7.0 :080 > Bank.includes(:name).limit(1)
  Bank Load (0.1ms)  SELECT "banks".* FROM "banks" LIMIT ?  [["LIMIT", 1]]
(Object doesn't support #inspect)
 =>  
2.7.0 :081 > Article.includes(:name)
  Article Load (0.3ms)  SELECT "articles".* FROM "articles"
(Object doesn't support #inspect)
 =>  
2.7.0 :082 > Article.includes(:comments).where(comments: { Commenter: true })
  SQL (0.5ms)  SELECT "articles"."id" AS t0_r0, "articles"."title" AS t0_r1, "articles"."body" AS t0_r2, "articles"."created_at" AS t0_r3, "articles"."updated_at" AS t0_r4, "articles"."status" AS t0_r5, "comments"."id" AS t1_r0, "comments"."commenter" AS t1_r1, "comments"."body" AS t1_r2, "comments"."article_id" AS t1_r3, "comments"."created_at" AS t1_r4, "comments"."updated_at" AS t1_r5, "comments"."status" AS t1_r6 FROM "articles" LEFT OUTER JOIN "comments" ON "comments"."article_id" = "articles"."id" WHERE "comments"."Commenter" = ?  [["Commenter", 1]]
 => [] 
2.7.0 :083 > Article.includes(:comments).where(comments: { Commenter: 'nansjs' })
  SQL (0.6ms)  SELECT "articles"."id" AS t0_r0, "articles"."title" AS t0_r1, "articles"."body" AS t0_r2, "articles"."created_at" AS t0_r3, "articles"."updated_at" AS t0_r4, "articles"."status" AS t0_r5, "comments"."id" AS t1_r0, "comments"."commenter" AS t1_r1, "comments"."body" AS t1_r2, "comments"."article_id" AS t1_r3, "comments"."created_at" AS t1_r4, "comments"."updated_at" AS t1_r5, "comments"."status" AS t1_r6 FROM "articles" LEFT OUTER JOIN "comments" ON "comments"."article_id" = "articles"."id" WHERE "comments"."Commenter" = ?  [["Commenter", "nansjs"]]
 => 
[#<Article:0x0000561d0418b178
  id: 1,
  title: "hello world",
  body: "i am rails",
  created_at: Tue, 31 Jan 2023 05:56:40.335331000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 10:10:41.642492000 UTC +00:00,
  status: "public">] 
2.7.0 :084 > 

