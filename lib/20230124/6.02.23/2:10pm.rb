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
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/relation/delegation.rb:110:in `method_missing': undefined method `limt' for #<ActiveRecord::Relation []> (NoMethodError)
Did you mean?  limit
2.7.0 :038 > Order.wher('id < 12').limt(5).order('id desc').only(:order, :where)
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `wher' for #<Class:0x0000561d03f653a8> (NoMethodError)
Did you mean?  where
               when
2.7.0 :039 > Order.where('id < 12').limt(5).order('id desc').only(:order, :where)
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" WHERE (id < 12) /* loading for inspect */ LIMIT ?  [["LIMIT", 11]]
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" WHERE (id < 12) /* loading for inspect */ LIMIT ?  [["LIMIT", 11]]
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/relation/delegation.rb:110:in `method_missing': undefined method `limt' for #<Order::ActiveRecord_Relation:0x0000561d03e62000> (NoMethodError)
Did you mean?  limit
2.7.0 :040 > Bank.select(:name, :laastname).reselect(:city)
  Bank Load (0.2ms)  SELECT "banks"."city" FROM "banks"
 => [#<Bank:0x0000561d04227320 id: nil, city: "indore">] 
2.7.0 :041 > 

