Using /home/nancy/.rvm/gems/ruby-2.7.0
nancy@Nancy:~/nancy/ror/blog_application$ ls
app  bin  config  config.ru  db  Gemfile  Gemfile.lock  lib  log  public  Rakefile  README.md  storage  test  tmp  vendor
nancy@Nancy:~/nancy/ror/blog_application$ rails c
at created the lockfile by running `gem install bundler:2.3.26`.
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby, x86_64-linux but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86
Loading development environment (Rails 7.0.4.1)
2.7.0 :001 > bank = Bank.new()
 => #<Bank:0x00007f44e87608c0 id: nil, name: nil, lastname: nil, email: nil, city: nil, pin: nil, age: nil, created_at: nil, updated_at: nil> 
  TRANSACTION (0.1ms)  begin transaction
  TRANSACTION (0.1ms)  rollback transaction
 => #<Bank:0x000055bef7caebd8 id: nil, name: nil, lastname: nil, email: nil, city: nil, pin: nil, age: nil, created_at: nil, updated_at: nil> 
2.7.0 :003 > bank.erroes
Traceback (most recent call last):
Bank:0x000055bef7caebd8> (NoMethodError)
Did you mean?  errors
2.7.0 :004 > bank.errors
 => #<ActiveModel::Errors [#<ActiveModel::Error attribute=name, type=blank, options={}>, #<ActiveModel::Error attribute=lastname, type=blank, options={}>
bute=pin, type=not_a_number, options={:value=>nil}>, #<ActiveModel::Error attribute=age, type=not_a_number, options={:value=>nil}>]> 
2.7.0 :005 > bank.errors.full_message
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/errors.rb:426:in `full_message': wrong number of arguments (given 0, expected 
2.7.0 :006 > bank.errors.full_messages
 => ["Name can't be blank", "Lastname can't be blank", "Email can't be blank", "City can't be blank", "Pin is not a number", "Age is not a number"] 
2.7.0 :007 > bank = Bank.find(1)
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" WHERE "banks"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
#<Bank:0x000055bef7b24cb8
... 
2.7.0 :008 > bank = Bank.take
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" LIMIT ?  [["LIMIT", 1]]
#<Bank:0x000055bef77e5b38
... 
2.7.0 :009 > order = Order.find(11, 12)
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" WHERE "orders"."id" IN (?, ?)  [["id", 11], ["id", 12]]
[#<Order:0x000055bef69529e0
... 
2.7.0 :010 > order = Order.take
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" LIMIT ?  [["LIMIT", 1]]
#<Order:0x000055bef7d537a0
... 
2.7.0 :011 > order = Order.take(12)
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" LIMIT ?  [["LIMIT", 12]]
[#<Order:0x000055bef7b16370
... 
2.7.0 :012 > order = Order.first
  Order Load (0.4ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."id" ASC LIMIT ?  [["LIMIT", 1]]
#<Order:0x000055bef77a2658
... 
2.7.0 :013 > order = Order.first(11)
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."id" ASC LIMIT ?  [["LIMIT", 11]]
 => 
[#<Order:0x000055bef66a1458
... 
2.7.0 :014 > bank = Bank.order(:name).first
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" ORDER BY "banks"."name" ASC LIMIT ?  [["LIMIT", 1]]
 => 
#<Bank:0x000055bef77599f8
2.7.0 :015 > order = Order.last
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."id" DESC LIMIT ?  [["LIMIT", 1]]
 => 
#<Order:0x000055bef6b753d0
... 
2.7.0 :016 > Order.last
  Order Load (0.1ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."id" DESC LIMIT ?  [["LIMIT", 1]]
 => 
#<Order:0x000055bef7eaf220
 id: 13,
 name: "nashdbfde",
 lastname: "sahshaash",
 created_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
 updated_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
 amount: nil,
 status: nil> 
2.7.0 :017 >  Bank.order(:name).first
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" ORDER BY "banks"."name" ASC LIMIT ?  [["LIMIT", 1]]
 => 
#<Bank:0x000055bef7df1450
 id: 1,
 name: "nancy",
 lastname: "kushwah",
 email: "nancy9ku@gmail.com",
 city: "indore",
 pin: "1234",
 age: "23",
 created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
 updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00> 
2.7.0 :018 > Order.first(11)
  Order Load (0.1ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."id" ASC LIMIT ?  [["LIMIT", 11]]
 => 
[#<Order:0x000055bef7cc2610
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
  created_at: Fri, 03 Feb 2023 11:31:09.931756000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 11:31:09.931756000 UTC +00:00,
  amount: nil,
  status: nil>,
 #<Order:0x000055bef7cc2480
  id: 13,
  name: "nashdbfde",
  email: "sdshada",
  created_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
  amount: nil,
  status: nil>] 
2.7.0 :019 > Order.take
  Order Load (0.1ms)  SELECT "orders".* FROM "orders" LIMIT ?  [["LIMIT", 1]]
 => 
#<Order:0x000055bef7c38f78
 id: 11,
 name: "nancy",
 lastname: "kushwah",
 email: "nancy9ku@gmail.com",
 created_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
 updated_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
 amount: nil,
 status: nil> 
2.7.0 :020 > Order.find(11, 12)
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
 #<Order:0x000055bef7b9f300
  id: 12,
  name: "shdash",
  lastname: "ddsghsdhs",
  email: "sdsdsdhdis",
  created_at: Fri, 03 Feb 2023 11:31:09.931756000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 11:31:09.931756000 UTC +00:00,
  amount: nil,
  status: nil>] 
2.7.0 :021 > Order.last(13)
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."id" DESC LIMIT ?  [["LIMIT", 13]]
 => 
[#<Order:0x00007f44e8689aa0
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
 #<Order:0x00007f44e8689dc0
  id: 13,
  name: "nashdbfde",
  lastname: "sahshaash",
  email: "sdshada",
  created_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
  amount: nil,
  status: nil>] 
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" ORDER BY "banks"."name" DESC LIMIT ?  [["LIMIT", 1]]
 => 
#<Bank:0x000055bef7f400e0
... 
2.7.0 :023 > Bank.order(:name).last
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" ORDER BY "banks"."name" DESC LIMIT ?  [["LIMIT", 1]]
 => 
#<Bank:0x000055bef7e7bcb8
 id: 1,
 name: "nancy",
 lastname: "kushwah",
 email: "nancy9ku@gmail.com",
 pin: "1234",
 age: "23",
 updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00> 
2.7.0 :024 > Bank.find_by name: 'nancy'
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name" = ? LIMIT ?  [["name", "nancy"], ["LIMIT", 1]]
 => 
#<Bank:0x000055bef7b7caa8
 id: 1,
 name: "nancy",
 lastname: "kushwah",
 email: "nancy9ku@gmail.com",
 city: "indore",
 pin: "1234",
 age: "23",
 updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00> 
2.7.0 :025 > Bank.find_by name: 'jon'
  Bank Load (0.1ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name" = ? LIMIT ?  [["name", "jon"], ["LIMIT", 1]]
 => nil 
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name" = ? LIMIT ?  [["name", "nancy"], ["LIMIT", 1]]
 => 
#<Bank:0x000055bef7bd0720
 id: 1,
 lastname: "kushwah",
 email: "nancy9ku@gmail.com",
 city: "indore",
 pin: "1234",
 age: "23",
 created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
 updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00> 
2.7.0 :027 > Bank.find_by! name: 'does not exit'
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name" = ? LIMIT ?  [["name", "does not exit"], ["LIMIT", 1]]
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/relation/finder_methods.rb:378:in `raise_record_not_found_exception!': Couldn't find Bank with [WHERE "banks"."name" = ?] (ActiveRecord::RecordNotFound)
  Bank Load (0.1ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name" = ? LIMIT ?  [["name", "does not exist"], ["LIMIT", 1]]
Traceback (most recent call last):
n't find Bank with [WHERE "banks"."name" = ?] (ActiveRecord::RecordNotFound)
2.7.0 :029 > Bank.where(name: 'nancy').take!
 => 
#<Bank:0x000055bef78c10c0
 name: "nancy",
 lastname: "kushwah",
 city: "indore",
 pin: "1234",
 age: "23",
 updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00> 
2.7.0 :030 > Order.where("title = ?", params[:title])
Traceback (most recent call last):
2.7.0 :031 > Order.where("id = ?", params[:id])
Traceback (most recent call last):
(irb):31:in `<main>': undefined local variable or method `params' for main:Object (NameError)
2.7.0 :032 > Order.where("name  = nancy", params[:name])
Traceback (most recent call last):
(irb):32:in `<main>': undefined local variable or method `params' for main:Object (NameError)
2.7.0 :033 > Order.where("name = nancy", params[:nancy])
Traceback (most recent call last):
(irb):33:in `<main>': undefined local variable or method `params' for main:Object (NameError)
2.7.0 :034 > Order.create!(name: nil)
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/validations.rb:80:in `raise_validation_error': Validation failed: Name can't be blank, Lastname can't be blank (ActiveRecord::RecordInvalid)
2.7.0 :035 > Order.create!(name: "sona")
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/validations.rb:80:in `raise_validation_error': Validation failed: Lastname can't be blank (ActiveRecord::RecordInvalid)
2.7.0 :036 > Order.where.not(name: "nancy")
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" WHERE "orders"."name" != ?  [["name", "nancy"]]
 => 
  id: 12,
  name: "shdash",
  lastname: "ddsghsdhs",
  created_at: Fri, 03 Feb 2023 11:31:09.931756000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 11:31:09.931756000 UTC +00:00,
  amount: nil,
  status: nil>,
 #<Order:0x000055bef7abcca8
  id: 13,
  name: "nashdbfde",
  lastname: "sahshaash",
  email: "sdshada",
  created_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
  amount: nil,
  status: nil>] 
2.7.0 :037 > Order.create!(name: "nancy")
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/validations.rb:80:in `raise_validation_error': Validation failed: Lastname can't be blank (ActiveRecord::RecordInvalid)
2.7.0 :038 > Order.where.not(name: "nancy")
  Order Load (0.1ms)  SELECT "orders".* FROM "orders" WHERE "orders"."name" != ?  [["name", "nancy"]]
 => 
  id: 12,
  name: "shdash",
  lastname: "ddsghsdhs",
  created_at: Fri, 03 Feb 2023 11:31:09.931756000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 11:31:09.931756000 UTC +00:00,
  amount: nil,
  status: nil>,
 #<Order:0x000055bef7c59fc0
  id: 13,
  name: "nashdbfde",
  lastname: "sahshaash",
  email: "sdshada",
  created_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 12:52:45.850953000 UTC +00:00,
  amount: nil,
2.7.0 :039 > Order.create!(name: "shdash")
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/validations.rb:80:in `raise_validation_error': Validation failed: Lastname can't be blank (ActiveRecord::RecordInvalid)
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks"
 => 
[#<Bank:0x00007f44e84dfd08
  id: 1,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  city: "indore",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00>] 
2.7.0 :041 > Bank.where(lastname: 'kushwah').or(Bank.where(orders_count:[1,2,3]))
  Bank Load (0.5ms)  SELECT "banks".* FROM "banks" WHERE ("banks"."lastname" = ? OR "banks"."orders_count" IN (?, ?, ?))  [["lastname", "kushwah"], ["orders_count", 1], ["orders_count", 2], ["orders_count", 3]]
(Object doesn't support #inspect)
 =>  
2.7.0 :042 > Bank.where(lastname: "kushwah").or(Bank.where(city: "indore"))
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" WHERE ("banks"."lastname" = ? OR "banks"."city" = ?)  [["lastname", "kushwah"], ["city", "indore"]]
 => 
[#<Bank:0x000055bef7c3d5c8
  id: 1,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  city: "indore",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00>] 
2.7.0 :043 > 

