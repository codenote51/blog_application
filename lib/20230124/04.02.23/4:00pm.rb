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
nancy@Nancy:~/nancy/ror/blog_application$ 

