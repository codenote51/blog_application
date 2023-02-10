Using /home/nancy/.rvm/gems/ruby-2.7.0
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version th
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby, x86_64-linux but the 
-mswin32 x64-mingw32 java`.
2.7.0 :001 > order = Order.new()
 => #<Order:0x000055c3aa33a068 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil, amount: nil, status: nil> 
 => #<Order:0x000055c3aa44d8d8 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil, amount: nil, status: nil> 
 => true 
 => #<ActiveModel::Errors [#<ActiveModel::Error attribute=status, type=inclusion, options={:value=>nil}>, #<ActiveModel::Error attribute=name, type=blank, options={}>, #<ActiveModel::Error attribute=lastname, type=blank, options={}>, #<ActiveModel::Error attribute=email, type=blank, options={}>]> 
 => ["Status is not included in the list", "Name can't be blank", "Lastname can't be blank", "Email can't be blank"] 
 => true 
2.7.0 :007 > order.valid?
 => false 
2.7.0 :008 > order.invalid?
 => true 
2.7.0 :009 > reload!
Reloading...
 => true 
 => #<Order:0x000055c3a9f32128 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil, amount: nil, status: nil> 
 => true 
 => #<ActiveModel::Errors [#<ActiveModel::Error attribute=name, type=blank, options={}>, #<ActiveModel::Error attribute=lastname, type=blank, options={}>, #<ActiveModel::Error attribute=email, type=blank, options={}>]> 
2.7.0 :013 > order.errors.full_messages
 => ["Name can't be blank", "Lastname can't be blank", "Email can't be blank"] 
2.7.0 :014 > order = Order.create(name: "nancy", lastname: "kushwah", email: "nancy9ku@gmail.com")
  TRANSACTION (0.1ms)  begin transaction
  Order Create (0.3ms)  INSERT INTO "orders" ("name", "lastname", "email", "created_at", "updated_at", "amount", "status") VALUES (?, ?, ?, ?, ?, ?, ?)  [["name", "nancy"], ["lastname", "kushwah"], ["email", "nancy9ku@gmail.com"], ["created_at", "2023-02-03 10:00:59.324257"], ["updated_at", "2023-02-03 10:00:59.324257"], ["amount", nil], ["status", nil]]
  TRANSACTION (7.5ms)  commit transaction
 => 
... 
2.7.0 :015 > order.valid?
 => true 
2.7.0 :016 > order.invalid?
 => false 
2.7.0 :017 > Order.all
  Order Load (0.3ms)  SELECT "orders".* FROM "orders"
 => 
[#<Order:0x000055c3a9ed3b28
  id: 11,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  created_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
  amount: nil,
  status: nil>] 
2.7.0 :018 > exit
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/controllers/articles_controller.rb
  modified:   app/controllers/comments_controller.rb
  modified:   app/controllers/orders_controller.rb
  modified:   app/models/article.rb
  modified:   app/models/comment.rb
  modified:   app/models/concerns/visible.rb
  modified:   app/models/order.rb
  modified:   app/views/articles/index.html.erb
  modified:   app/views/comments/_form.html.erb
  deleted:    app/views/orders/_text.html.erb
  modified:   app/views/orders/edit.html.erb
  modified:   app/views/orders/new.html.erb
  modified:   app/views/orders/show.html.erb
  modified:   config/routes.rb
  deleted:    db/migrate/20230123075001_create_articles.rb
  deleted:    db/migrate/20230123125050_create_comments.rb
  deleted:    db/migrate/20230123125156_add_status_to_articles.rb
  deleted:    db/migrate/20230123125157_add_status_to_comments.rb
  modified:   db/migrate/20230128143626_article.rb
  modified:   db/schema.rb
  deleted:    lib/20230124/6:02pm.rb
  deleted:    lib/20230124/6:6pm.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/controllers/customers_controller.rb
  app/helpers/customers_helper.rb
  app/models/customer.rb
  app/views/orders/_form.html.erb
  db/migrate/20230203062252_add_status_to_articles.rb
  db/migrate/20230203081218_add_status_to_order.rb
  lib/20230124/01.02.23/5:30pm.rb

nancy@Nancy:~/nancy/ror/blog_application$ rails c
at created the lockfile by running `gem install bundler:2.3.26`.
dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86
Loading development environment (Rails 7.0.4.1)
 => #<Order:0x00005581d77c3c98 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil, amount: nil, status: nil> 
2.7.0 :002 > order = Order.create()
 => #<Order:0x00005581d796da08 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil, amount: nil, status: nil> 
2.7.0 :003 > order.errors.present?
2.7.0 :004 > order.valid?
 => false 
2.7.0 :005 > order.invalid?
2.7.0 :006 > order.save
2.7.0 :007 > order = Order.new(name: "John Doe")
 => #<Order:0x00005581d7bb86c8 id: nil, name: "John Doe", lastname: nil, email: nil, created_at: nil, updated_at: nil, amount: nil, status: nil> 
 => true 
2.7.0 :009 > order.save
2.7.0 :010 > order.create!
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `create!' for #<Order:0x00005581d7bb86c8> (NoMethodError)
Did you mean?  created_at
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/validations.rb:80:in `raise_validation_error': Validation failed: Name can't
2.7.0 :012 > order = Order.create(name: "John Doe").valid?
2.7.0 :013 > reload!
 => true 
2.7.0 :014 > order.create
(irb):14:in `<main>': undefined method `create' for false:FalseClass (NoMethodError)
 => #<Order:0x00005581d79bfc18 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil, amount: nil, status: nil> 
Traceback (most recent call last):
Class:0x00005581d79d1bc0> (NoMethodError)
2.7.0 :017 > order.errors
Traceback (most recent call last):
(irb):17:in `<main>': undefined method `errors' for false:FalseClass (NoMethodError)
2.7.0 :018 > order = Order.create()
 => #<Order:0x00005581d7bab360 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil, amount: nil, status: nil> 
2.7.0 :019 > order.errors.present? 
 => true 
2.7.0 :020 > order.errors
 => #<ActiveModel::Errors [#<ActiveModel::Error attribute=name, type=blank, options={}>, #<ActiveModel::Error attribute=lastname, type=blank, options={}>, #<ActiveModel::Error attribute=email, type=blank, options={}>]> 
 => ["Name can't be blank", "Lastname can't be blank", "Email can't be blank"] 
2.7.0 :022 >  order.errors.present?
 => true 
2.7.0 :023 > order.valid?
 => false 
2.7.0 :024 > Order.all
  Order Load (0.2ms)  SELECT "orders".* FROM "orders"
 => 
[#<Order:0x00005581d755bd98
  id: 11,
  name: "nancy",
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  created_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
  amount: nil,
  status: nil>] 
2.7.0 :025 > exit
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/controllers/articles_controller.rb
  modified:   app/controllers/comments_controller.rb
  modified:   app/controllers/orders_controller.rb
  modified:   app/models/article.rb
  modified:   app/models/comment.rb
  modified:   app/models/concerns/visible.rb
  modified:   app/models/order.rb
  modified:   app/views/articles/index.html.erb
  modified:   app/views/comments/_form.html.erb
  deleted:    app/views/orders/_text.html.erb
  modified:   app/views/orders/edit.html.erb
  modified:   app/views/orders/new.html.erb
  modified:   app/views/orders/show.html.erb
  modified:   config/routes.rb
  deleted:    db/migrate/20230123075001_create_articles.rb
  deleted:    db/migrate/20230123125050_create_comments.rb
  deleted:    db/migrate/20230123125156_add_status_to_articles.rb
  deleted:    db/migrate/20230123125157_add_status_to_comments.rb
  modified:   db/migrate/20230128143626_article.rb
  modified:   db/schema.rb
  deleted:    lib/20230124/6:02pm.rb
  deleted:    lib/20230124/6:6pm.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/controllers/customers_controller.rb
  app/helpers/customers_helper.rb
  app/models/customer.rb
  app/views/customers/
  app/views/orders/_form.html.erb
  db/migrate/20230202112829_create_customers.rb
  db/migrate/20230203062252_add_status_to_articles.rb
  db/migrate/20230203062254_add_status_to_comments.rb
  db/migrate/20230203081218_add_status_to_order.rb
  db/migrate/20230203081318_add_status_to_customer.rb
  lib/20230124/01.02.23/5:30pm.rb
  lib/20230124/04.02.23/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add   app/controllers/articles_controller.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "fix indentation"
[main e869a0b] fix indentation
 1 file changed, 7 insertions(+), 10 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
remote: Invalid username or password.
fatal: Authentication failed for 'https://github.com/codenote51/blog_application.git/'
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 476 bytes | 476.00 KiB/s, done.
Total 5 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   fee190e..e869a0b  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/controllers/articles_controller.rb
  modified:   app/controllers/comments_controller.rb
  modified:   app/controllers/orders_controller.rb
  modified:   app/models/article.rb
  modified:   app/models/comment.rb
  modified:   app/models/concerns/visible.rb
  modified:   app/models/order.rb
  modified:   app/views/articles/index.html.erb
  modified:   app/views/comments/_form.html.erb
  deleted:    app/views/orders/_text.html.erb
  modified:   app/views/orders/edit.html.erb
  modified:   app/views/orders/new.html.erb
  modified:   app/views/orders/show.html.erb
  modified:   config/routes.rb
  deleted:    db/migrate/20230123075001_create_articles.rb
  deleted:    db/migrate/20230123125050_create_comments.rb
  deleted:    db/migrate/20230123125156_add_status_to_articles.rb
  deleted:    db/migrate/20230123125157_add_status_to_comments.rb
  modified:   db/migrate/20230128143626_article.rb
  modified:   db/schema.rb
  deleted:    lib/20230124/6:02pm.rb
  deleted:    lib/20230124/6:6pm.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/controllers/customers_controller.rb
  app/helpers/customers_helper.rb
  app/models/customer.rb
  app/views/customers/
  app/views/orders/_form.html.erb
  db/migrate/20230202112829_create_customers.rb
  db/migrate/20230203062252_add_status_to_articles.rb
  db/migrate/20230203062254_add_status_to_comments.rb
  db/migrate/20230203081218_add_status_to_order.rb
  db/migrate/20230203081318_add_status_to_customer.rb
  lib/20230124/01.02.23/2:00pm.rb
  lib/20230124/01.02.23/5:30pm.rb
  lib/20230124/04.02.23/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/controllers/articles_controller.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove element"
[main 7f8e237] remove element
 1 file changed, 3 insertions(+), 3 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 450 bytes | 450.00 KiB/s, done.
Total 5 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ cd ..
nancy@Nancy:~/nancy/ror$ cd ..
nancy@Nancy:~/nancy$ cd ..
nancy@Nancy:~$ cd /home/nancy/Banking_application/
nancy@Nancy:~/Banking_application$ cd ..
nancy@Nancy:~$ cd /home/nancy/nancy/ror/blog_application/
nancy@Nancy:~/nancy/ror/blog_application$ ls
app  bin  config  config.ru  db  Gemfile  Gemfile.lock  lib  log  public  Rakefile  README.md  storage  test  tmp  vendor
nancy@Nancy:~/nancy/ror/blog_application$ rails c
at created the lockfile by running `gem install bundler:2.3.26`.
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby, x86_64-linux but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86
Loading development environment (Rails 7.0.4.1)
2.7.0 :001 > Order.all
 => 
  id: 11,
  lastname: "kushwah",
  email: "nancy9ku@gmail.com",
  updated_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
  status: nil>] 
Traceback (most recent call last):
Did you mean?  reload!
Reloading...
2.7.0 :004 > Order.new()
2.7.0 :005 > Order.create()
 => #<Order:0x00007fc8f483ff30 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil, amount: nil, status: nil> 
Traceback (most recent call last):
2.7.0 :007 > order = Order.create()
2.7.0 :008 > order.errors.present?
 => true 
 => #<ActiveModel::Errors [#<ActiveModel::Error attribute=email, type=blank, options={}>]> 
 => ["Email can't be blank"] 
 => false 
 => false 
Reloading...
 => true 
2.7.0 :014 > o = Order.create
 => #<Order:0x00007fc8f48326a0 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil, amount: nil, status: nil> 
2.7.0 :015 > o.errors.present?
 => true 
2.7.0 :016 > o.errors
 => #<ActiveModel::Errors [#<ActiveModel::Error attribute=name, type=blank, options={}>, #<ActiveModel::Error attribute=lastname, type=blank, options={}>
2.7.0 :017 > o.errors.full_messages
2.7.0 :018 > o.save
2.7.0 :019 > o.valid?
 => false 
2.7.0 :020 > o.invalid?
 => true 
2.7.0 :021 > o = Order.create(name: "shdash", lastname: "ddsghsdhs", email: "sdsdsdhdis")
  TRANSACTION (0.1ms)  begin transaction
  Order Create (0.3ms)  INSERT INTO "orders" ("name", "lastname", "email", "created_at", "updated_at", "amount", "status") VALUES (?, ?, ?, ?, ?, ?, ?)  [["name", "shdash"], ["lastname", "ddsghsdhs"], ["email", "sdsdsdhdis"], ["created_at", "2023-02-03 11:31:09.931756"], ["updated_at", "2023-02-03 11:31:09.931756"], ["amount", nil], ["status", nil]]
  TRANSACTION (7.9ms)  commit transaction
 => 
#<Order:0x0000560851042658
... 
2.7.0 :022 > o.save
 => true 
2.7.0 :023 >  order.errors.present?
 => true 
2.7.0 :024 > Order.all
  Order Load (0.4ms)  SELECT "orders".* FROM "orders"
 => 
  id: 11,
  lastname: "kushwah",
  created_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
  updated_at: Fri, 03 Feb 2023 10:00:59.324257000 UTC +00:00,
  status: nil>,
 #<Order:0x0000560850d13450
  id: 12,
  name: "shdash",
  lastname: "ddsghsdhs",
  email: "sdsdsdhdis",
  updated_at: Fri, 03 Feb 2023 11:31:09.931756000 UTC +00:00,
  amount: nil,
2.7.0 :025 > o.valid?
2.7.0 :026 > o = Order.create(email: "sdsdsdhdis").valid?
2.7.0 :027 > o.errors.present?
(irb):27:in `<main>': undefined method `errors' for false:FalseClass (NoMethodError)
  Order Load (0.5ms)  SELECT "orders".* FROM "orders" WHERE "orders"."emali" = ? LIMIT ?  [["emali", "sdsdsdhdis"], ["LIMIT", 1]]
Traceback (most recent call last):
xception)
/home/nancy/.rvm/gems/ruby-2.7.0/gems/sqlite3-1.6.0-x86_64-linux/lib/sqlite3/database.rb:152:in `initialize': SQLite3::SQLException: no such column: orders.emali (ActiveRecord::StatementInvalid)
2.7.0 :029 > o.valid?
(irb):29:in `<main>': undefined method `valid?' for false:FalseClass (NoMethodError)
 => #<Order:0x0000560850fd37d0 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil, amount: nil, status: nil> 
 => false 
2.7.0 :032 > o.invalid?
2.7.0 :033 > o.errors.present?
 => true 
 => #<ActiveModel::Errors [#<ActiveModel::Error attribute=name, type=blank, options={}>, #<ActiveModel::Error attribute=lastname, type=blank, options={}>
2.7.0 :035 > o = order.create(email: "sdgsdsdgjgc")
Traceback (most recent call last):
Order:0x00005608511e4e48> (NoMethodError)
2.7.0 :036 > o = Order.create(email: "bdsbdsbdsb")
 => #<Order:0x000056085114ac80 id: nil, name: nil, lastname: nil, email: "bdsbdsbdsb", created_at: nil, updated_at: nil, amount: nil, status: nil> 
 => true 
 => #<ActiveModel::Errors [#<ActiveModel::Error attribute=name, type=blank, options={}>, #<ActiveModel::Error attribute=lastname, type=blank, options={}>
2.7.0 :039 > reload!
 => true 
 => #<Order:0x0000560851054ee8 id: nil, name: "sona", lastname: nil, email: nil, created_at: nil, updated_at: nil, amount: nil, status: nil> 
2.7.0 :041 > reload!
Reloading...
2.7.0 :042 > order = Order.create
 => #<Order:0x000056085036eaf8 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil, amount: nil, status: nil> 
2.7.0 :043 > order.errors
nk, options={}>, #<ActiveModel::Error attribute=email, type=blank, options={}>]> 
2.7.0 :044 > order.errors.full_messages
 => ["Name is not included in the list", "Lastname can't be blank", "Email can't be blank"] 
2.7.0 :045 > order = Order.create(name: "bhasdsh")
 => #<Order:0x0000560851127488 id: nil, name: "bhasdsh", lastname: nil, email: nil, created_at: nil, updated_at: nil, amount: nil, status: nil> 
 => false 
 => false 
 => 
... 
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `save' for #<Class:0x00005608503b2528> (NoMethodError)
2.7.0 :050 > order.ssave
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `ssave' for #<Order:0x00005608513260e0> (NoMethodError)
Did you mean?  save
               save!
 => false 
 => true 
 => #<ActiveModel::Errors [#<ActiveModel::Error attribute=name, type=inclusion, options={:value=>"dfddhf"}>]> 
2.7.0 :054 > order.errors.full_messages
2.7.0 :055 > order = Order.find_by(name: "nancy")
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" WHERE "orders"."name" = ? LIMIT ?  [["name", "nancy"], ["LIMIT", 1]]
#<Order:0x0000560850383e80
... 
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" WHERE "orders"."name" = ? LIMIT ?  [["name", "shdash"], ["LIMIT", 1]]
 => 
... 
2.7.0 :057 > order= Order.create(name: "bhasdsh")
2.7.0 :058 > orde= Order.create(name: "hsdshdis").valid?
 => false 
2.7.0 :059 > order= Order.find_by(name: "nancy").valid?
 => false 
2.7.0 :060 > order= Order.find_by(name: "nancy").invalid?
 => true 
Traceback (most recent call last):
2.7.0 :062 >  order.errors.present?
Traceback (most recent call last):
(irb):62:in `<main>': undefined method `errors' for true:TrueClass (NoMethodError)
2.7.0 :063 > reload!
 => true 
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `login' for #<Order:0x0000560850ece6c8> (NoMethodError)
Reloading...
2.7.0 :066 > o = Order.create
2.7.0 :067 > o.errors.present?
 => true 
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `errore' for #<Order:0x00005608511301a0> (NoMethodError)
Did you mean?  errors
 => #<ActiveModel::Errors [#<ActiveModel::Error attribute=lastname, type=blank, options={}>]> 
 => 
#<Order:0x000056085116b598
2.7.0 :071 > o.save
 => false 
2.7.0 :072 > o.valid?
 => false 
2.7.0 :073 > reload!
Reloading...
 => true 
2.7.0 :074 > o = Order.valid?(:account_setup)
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `valid?' for Order (call 'Order.connection' to establish a connection):Class (NoMethodError)
Did you mean?  validate
2.7.0 :075 > o.valid?(:account_setup)
 => false 
2.7.0 :076 > o.errors
 => #<ActiveModel::Errors [#<ActiveModel::Error attribute=name, type=present, options={}>, #<ActiveModel::Error attribute=email, type=present, options={}>]> 
2.7.0 :077 > o.errors.full_messages
 => ["Name must be blank", "Email must be blank"] 
2.7.0 :078 > 

