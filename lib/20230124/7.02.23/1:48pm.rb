nancy@Nancy:~/nancy/ror/blog_application$ rvm use ruby-2.7.0
Using /home/nancy/.rvm/gems/ruby-2.7.0
nancy@Nancy:~/nancy/ror/blog_application$ rails c
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version th
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby, x86_64-linux but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86
Loading development environment (Rails 7.0.4.1)
2.7.0 :001 > Article.where("title = ?", params[:title])
(irb):1:in `<main>': undefined local variable or method `params' for main:Object (NameError)
2.7.0 :002 > Article.all
 => 
[#<Article:0x0000561c060d62e0
  id: 1,
  created_at: Tue, 31 Jan 2023 05:56:40.335331000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 10:10:41.642492000 UTC +00:00,
2.7.0 :003 > Article.where("title = hello world", params[:title])
Traceback (most recent call last):
(irb):3:in `<main>': undefined local variable or method `params' for main:Object (NameError)
Traceback (most recent call last):
(irb):4:in `<main>': undefined local variable or method `params' for main:Object (NameError)
2.7.0 :005 > Article.where(params[:title])
(irb):5:in `<main>': undefined local variable or method `params' for main:Object (NameError)
2.7.0 :006 > Article.where("title = hello world")
(Object doesn't support #inspect)
 =>  
2.7.0 :007 > Article.where("created_at >= :start_date AND created_at <= :end_date",
2.7.0 :008 >   {start_date: params[:start_date], end_date: params[:end_date]})
Traceback (most recent call last):
(irb):8:in `<main>': undefined local variable or method `params' for main:Object (NameError)
2.7.0 :009 > Bank.where("name like?" + "%")
  Bank Load (0.7ms)  SELECT "banks".* FROM "banks" WHERE (name like?%)
(Object doesn't support #inspect)
 =>  
2.7.0 :010 > Bank.where("misha like" + "%")
  Bank Load (0.7ms)  SELECT "banks".* FROM "banks" WHERE (misha like%)
 =>  
2.7.0 :011 > Bank.where(name: "misha, like" + "%")
 => [] 
2.7.0 :012 > Bank.where(name: "misha")
 => 
[#<Bank:0x0000561c05926bd0
  id: 1,
  name: "misha",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  city: "indore",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:30:54.186453000 UTC +00:00>] 
2.7.0 :013 > Bank.where(name => 'misha')
(irb):13:in `<main>': undefined local variable or method `name' for main:Object (NameError)
2.7.0 :014 > Bank.where('name' => true)
  Bank Load (0.1ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name" = ?  [["name", "t"]]
 => [] 
  Bank Load (0.1ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name" = ?  [["name", "misha"]]
 => 
  id: 1,
  name: "misha",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  city: "indore",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:30:54.186453000 UTC +00:00>] 
2.7.0 :016 > article = Article.first
  Article Load (0.2ms)  SELECT "articles".* FROM "articles" ORDER BY "articles"."id" ASC LIMIT ?  [["LIMIT", 1]]
 => 
#<Article:0x0000561c04e98970
... 
2.7.0 :017 > comment.where(article: article)
Traceback (most recent call last):
(irb):17:in `<main>': undefined local variable or method `comment' for main:Object (NameError)
2.7.0 :018 > Comment.where(article: article)
 => 
[#<Comment:0x0000561c05a21cb0
  id: 1,
  commenter: "nansjs",
  body: "sgdgsgdiasdgidd",
  article_id: 1,
  created_at: Fri, 03 Feb 2023 10:10:09.997783000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 10:10:09.997783000 UTC +00:00,
  status: "private">,
 #<Comment:0x0000561c0597f4b0
  id: 2,
  commenter: "nansjs",
  body: "gddhshxosjdjdjpasdja",
  article_id: 1,
  created_at: Fri, 03 Feb 2023 10:10:30.286513000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 10:10:30.286513000 UTC +00:00,
  status: "private">] 
  Article Load (0.5ms)  SELECT "articles".* FROM "articles" INNER JOIN "comments" ON "comments"."article_id" = "articles"."id" WHERE "comments"."article_id" = ?  [["article_id", 1]]
 => 
  id: 1,
  title: "hello world",
  created_at: Tue, 31 Jan 2023 05:56:40.335331000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 10:10:41.642492000 UTC +00:00,
 #<Article:0x0000561c059ed140
  id: 1,
  title: "hello world",
  body: "i am rails",
  created_at: Tue, 31 Jan 2023 05:56:40.335331000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 10:10:41.642492000 UTC +00:00,
  status: "public">] 
2.7.0 :020 > Article.where(created_at: (Time.now.midnight - 1.day)..Time.now.midnight)
  Article Load (0.2ms)  SELECT "articles".* FROM "articles" WHERE "articles"."created_at" BETWEEN ? AND ?  [["created_at", "2023-02-05 18:30:00"], ["created_at", "2023-02-06 18:30:00"]]
 => [] 
2.7.0 :021 > Article.where(title: (Name.now.midnight - 'misha'.day)..Name.now.midnight)
(irb):21:in `<main>': uninitialized constant Name (NameError)
2.7.0 :022 > Article.where(title: (Title.now.midnight - 'misha'. name)..Title.now.midnight)
Traceback (most recent call last):
(irb):22:in `<main>': uninitialized constant Title (NameError)
2.7.0 :023 > Bank.where(created_at: (Time.now.midnight - 1.day)..)
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" WHERE "banks"."created_at" >= ?  [["created_at", "2023-02-05 18:30:00"]]
 => 
[#<Bank:0x0000561c05a8f8c8
  id: 2,
  name: "sona",
  lastname: "sharma",
  email: "sonasharma@gmail.com",
  city: "bhopla",
  pin: "123",
  age: "21",
  created_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00>] 
2.7.0 :024 > Bank.where(id:[1, 2])
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" WHERE "banks"."id" IN (?, ?)  [["id", 1], ["id", 2]]
 => 
[#<Bank:0x0000561c0595d1a8
  id: 1,
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  city: "indore",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:30:54.186453000 UTC +00:00>,
 #<Bank:0x0000561c0595d0e0
  id: 2,
  name: "sona",
  lastname: "sharma",
  email: "sonasharma@gmail.com",
  pin: "123",
  age: "21",
  created_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00,
2.7.0 :025 > Bank.where(name: ["misha"])
  Bank Load (0.1ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name" = ?  [["name", "misha"]]
 => 
[#<Bank:0x00007fb89076a138
  id: 1,
  name: "misha",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  city: "indore",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:30:54.186453000 UTC +00:00>] 
2.7.0 :026 > Bank.where(name_count: [1, 2])
  Bank Load (0.6ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name_count" IN (?, ?)  [["name_count", 1], ["name_count", 2]]
(Object doesn't support #inspect)
 =>  
2.7.0 :027 > Bank.where(name: ["misha", "sona"])
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name" IN (?, ?)  [["name", "misha"], ["name", "sona"]]
 => 
[#<Bank:0x00007fb8903f5638
  id: 1,
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:30:54.186453000 UTC +00:00>,
 #<Bank:0x00007fb8903f5408
  id: 2,
  lastname: "sharma",
  email: "sonasharma@gmail.com",
  city: "bhopla",
  pin: "123",
  age: "21",
  created_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00>] 
2.7.0 :028 > Bank.where.not(name: ["misha", "sona"])
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name" NOT IN (?, ?)  [["name", "misha"], ["name", "sona"]]
 => [] 
2.7.0 :029 > Bank.create!(name: nil)
  TRANSACTION (0.1ms)  begin transaction
  TRANSACTION (0.1ms)  rollback transaction
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/validations.rb:80:in `raise_validation_error': Validation failed: Name can't be blank, Lastname can't be blank, Email can't be blank, City can't be blank, Pin is not a number, Age is not a number (ActiveRecord::RecordInvalid)
2.7.0 :030 > Bank.where.not(name: 'misha')
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name" != ?  [["name", "misha"]]
[#<Bank:0x0000561c05113718
  id: 2,
  name: "sona",
  lastname: "sharma",
  email: "sonasharma@gmail.com",
  city: "bhopla",
  pin: "123",
  age: "21",
  created_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00>] 
2.7.0 :031 > Bank.create!(name: 'sona')
  TRANSACTION (0.1ms)  begin transaction
  Bank Exists? (0.2ms)  SELECT 1 AS one FROM "banks" WHERE "banks"."email" IS NULL LIMIT ?  [["LIMIT", 1]]
  TRANSACTION (0.1ms)  rollback transaction
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/validations.rb:80:in `raise_validation_error': Validation failed: Lastname can't be blank, Email can't be blank, City can't be blank, Pin is not a number, Age is not a number (ActiveRecord::RecordInvalid)
2.7.0 :032 > Bank.where.not(name: nil)
  Bank Load (0.2ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name" IS NOT NULL
 => 
[#<Bank:0x0000561c05b45a60
  id: 1,
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  city: "indore",
  pin: "1234",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:30:54.186453000 UTC +00:00>,
 #<Bank:0x0000561c05b45998
  name: "sona",
  lastname: "sharma",
  email: "sonasharma@gmail.com",
  city: "bhopla",
  pin: "123",
  age: "21",
  created_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00>] 
2.7.0 :033 > Bank.where(last_name: 'kushwah').or(Bank.where(city: ['indore','bhopla']))
  Bank Load (0.5ms)  SELECT "banks".* FROM "banks" WHERE ("banks"."last_name" = ? OR "banks"."city" IN (?, ?))  [["last_name", "kushwah"], ["city", "indore"], ["city", "bhopla"]]
(Object doesn't support #inspect)
 =>  
2.7.0 :034 > Bank.where(last_name: 'kushwah').where(city: ['indore'])
  Bank Load (0.6ms)  SELECT "banks".* FROM "banks" WHERE "banks"."last_name" = ? AND "banks"."city" = ?  [["last_name", "kushwah"], ["city", "indore"]]
(Object doesn't support #inspect)
 =>  
2.7.0 :035 > Bank.where(id: [1,2]).and(Bank.where(id: [2,1]))
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" WHERE "banks"."id" IN (?, ?) AND "banks"."id" IN (?, ?)  [["id", 1], ["id", 2], ["id", 2], ["id", 1]]
 => 
[#<Bank:0x0000561c05afe200
  id: 1,
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  city: "indore",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:30:54.186453000 UTC +00:00>,
 #<Bank:0x0000561c05afe138
  id: 2,
  name: "sona",
  lastname: "sharma",
  email: "sonasharma@gmail.com",
  city: "bhopla",
  pin: "123",
  age: "21",
  created_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00>] 
2.7.0 :036 > Bank.order(:name)
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" ORDER BY "banks"."name" ASC
 => 
[#<Bank:0x00007fb89014cc10
  id: 1,
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  city: "indore",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:30:54.186453000 UTC +00:00>,
 #<Bank:0x00007fb89014c8f0
  id: 2,
  name: "sona",
  lastname: "sharma",
  email: "sonasharma@gmail.com",
  city: "bhopla",
  pin: "123",
  age: "21",
  created_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00>] 
2.7.0 :037 > Bank.order("name")
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" ORDER BY name
 => 
[#<Bank:0x0000561c05f2f310
  id: 1,
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  city: "indore",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
 #<Bank:0x0000561c05f2f248
  id: 2,
  name: "sona",
  lastname: "sharma",
  email: "sonasharma@gmail.com",
  city: "bhopla",
  pin: "123",
  age: "21",
  created_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00>] 
2.7.0 :038 > Bank.order(name: :dsc)
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/relation/query_methods.rb:1597:in `block (2 levels) in validate_order_args': Direction "dsc" is invalid. Valid directions are: [:asc, :desc, :ASC, :DESC, "asc", "desc", "ASC", "DESC"] (ArgumentError)
2.7.0 :039 > Bank.order(name: desc)
Traceback (most recent call last):
(irb):39:in `<main>': undefined local variable or method `desc' for main:Object (NameError)
2.7.0 :040 > Bank.order(name: :desc)
  Bank Load (0.4ms)  SELECT "banks".* FROM "banks" ORDER BY "banks"."name" DESC
 => 
[#<Bank:0x0000561c0602e2c0
  id: 2,
  lastname: "sharma",
  email: "sonasharma@gmail.com",
  city: "bhopla",
  pin: "123",
  age: "21",
  created_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00>,
 #<Bank:0x0000561c0602e1f8
  id: 1,
  name: "misha",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  city: "indore",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:30:54.186453000 UTC +00:00>] 
2.7.0 :041 > Bank.order(name: :asc)
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" ORDER BY "banks"."name" ASC
 => 
[#<Bank:0x0000561c05d94500
  id: 1,
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  pin: "1234",
  age: "23",
  updated_at: Mon, 06 Feb 2023 10:30:54.186453000 UTC +00:00>,
 #<Bank:0x0000561c05d94438
  id: 2,
  name: "sona",
  lastname: "sharma",
  email: "sonasharma@gmail.com",
  city: "bhopla",
  pin: "123",
  age: "21",
  created_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:14:54.900833000 UTC +00:00>] 
2.7.0 :042 > Bank.select(:isbn, :name)
 => [#<Bank:0x0000561c05928778 id: nil, name: "misha">, #<Bank:0x0000561c059286b0 id: nil, name: "sona">] 
2.7.0 :043 > Bank.select(:name).distinct
 => [#<Bank:0x0000561c05e50b38 id: nil, name: "misha">, #<Bank:0x0000561c05e50a70 id: nil, name: "sona">] 
2.7.0 :044 > Bank.limit(1)
 => 
[#<Bank:0x0000561c05bb2890
  name: "misha",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  city: "indore",
  pin: "1234",
  age: "23",
  updated_at: Mon, 06 Feb 2023 10:30:54.186453000 UTC +00:00>] 
2.7.0 :045 > Bank.limit(1).offset(10)
 => [] 
2.7.0 :046 > Bank.select("name").group("lastname")
  Bank Load (0.2ms)  SELECT "banks"."name" FROM "banks" GROUP BY "banks"."lastname"
 => [#<Bank:0x0000561c05da4090 id: nil, name: "misha">, #<Bank:0x0000561c05da3f78 id: nil, name: "sona">] 
  Bank Count (0.2ms)  SELECT COUNT(*) AS "count_all", "banks"."name" AS "banks_name" FROM "banks" GROUP BY "banks"."name"
 => {"misha"=>1, "sona"=>1} 
2.7.0 :048 > Bank.where('id > 100').limt(1).order('id desc').unscope(:order)
  Bank Load (0.5ms)  SELECT "banks".* FROM "banks" WHERE (id > 100) /* loading for inspect */ LIMIT ?  [["LIMIT", 11]]
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/relation/delegation.rb:110:in `method_missing': undefined method `limt' for #<ActiveRecord::Relation []> (NoMethodError)
Did you mean?  limit
2.7.0 :049 > Bank.select(:name, :lastname).reselect(:city)
  Bank Load (0.2ms)  SELECT "banks"."city" FROM "banks"
 => [#<Bank:0x0000561c05f0fb28 id: nil, city: "indore">, #<Bank:0x0000561c05f0fa60 id: nil, city: "bhopla">] 
2.7.0 :050 > Bank.select(:name, :lastname).select(:city)
  Bank Load (0.2ms)  SELECT "banks"."name", "banks"."lastname", "banks"."city" FROM "banks"
 => 
[#<Bank:0x0000561c05978818 id: nil, name: "misha", lastname: "kushwah", city: "indore">,
 #<Bank:0x0000561c05978750 id: nil, name: "sona", lastname: "sharma", city: "bhopla">] 
  Article Load (0.2ms)  SELECT "articles".* FROM "articles" WHERE "articles"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
  Comment Load (0.5ms)  SELECT "comments".* FROM "comments" WHERE "comments"."article_id" = ? ORDER BY title ASC  [["article_id", 1]]
(Object doesn't support #inspect)
 =>  
2.7.0 :052 > Bank.where(name: 'misha').rewhere(lastname: 'kushwah')
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name" = ? AND "banks"."lastname" = ?  [["name", "misha"], ["lastname", "kushwah"]]
 => 
[#<Bank:0x0000561c05991750
  id: 1,
  name: "misha",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  pin: "1234",
  age: "23",
  created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
  updated_at: Mon, 06 Feb 2023 10:30:54.186453000 UTC +00:00>] 
2.7.0 :053 > Bank.find_or_create_by(name: 'misha')
  Bank Load (0.3ms)  SELECT "banks".* FROM "banks" WHERE "banks"."name" = ? LIMIT ?  [["name", "misha"], ["LIMIT", 1]]
 => 
#<Bank:0x0000561c05f16ef0
 id: 1,
 name: "misha",
 lastname: "kushwah",
 email: "nancy9ku@gmail.com",
 city: "indore",
 pin: "1234",
 age: "23",
 created_at: Fri, 03 Feb 2023 17:19:34.008267000 UTC +00:00,
 updated_at: Mon, 06 Feb 2023 10:30:54.186453000 UTC +00:00> 
2.7.0 :054 > exit
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/models/order.rb
  modified:   app/views/layouts/application.html.erb
  deleted:    app/views/orders/_text.html.erb
  modified:   config/routes.rb
  deleted:    db/migrate/20230123075001_create_articles.rb
  deleted:    db/migrate/20230123125050_create_comments.rb
  deleted:    db/migrate/20230123125156_add_status_to_articles.rb
  deleted:    db/migrate/20230123125157_add_status_to_comments.rb
  modified:   db/schema.rb
  deleted:    lib/20230124/6:02pm.rb
  deleted:    lib/20230124/6:6pm.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/controllers/banks_controller.rb
  app/controllers/customers_controller.rb
  app/helpers/customers_helper.rb
  app/models/bank.rb
  app/models/customer.rb
  app/views/banks/
  app/views/customers/
  app/views/layouts/_header.html.erb
  app/views/orders/_form.html.erb
  db/migrate/20230202112829_create_customers.rb
  db/migrate/20230203062252_add_status_to_articles.rb
  db/migrate/20230203062254_add_status_to_comments.rb
  db/migrate/20230203081218_add_status_to_order.rb
  db/migrate/20230203081318_add_status_to_customer.rb
  db/migrate/20230203165855_create_banks.rb
  lib/20230124/01.02.23/2:00pm.rb
  lib/20230124/01.02.23/5:30pm.rb
  lib/20230124/04.02.23/
  lib/20230124/6.02.23/1:30pm.rb
  lib/20230124/7.02.23/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ 

