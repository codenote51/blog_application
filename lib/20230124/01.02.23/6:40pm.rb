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
2.7.0 :054 > Killed
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/controllers/orders_controller.rb
  modified:   app/models/article.rb
  modified:   app/models/comment.rb
  modified:   app/models/order.rb
  modified:   app/views/orders/index.html.erb
  modified:   app/views/orders/new.html.erb
  modified:   app/views/orders/show.html.erb
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
  app/views/orders/_text.html.erb
  app/views/orders/edit.html.erb
  lib/20230124/01.02.23/
  lib/20230124/30.01.23/3:30pm.rb
  lib/20230124/30.01.23/6:31pm.rb
  lib/20230124/30.01.23/Validates.rb
  lib/20230124/31.01.23/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/controllers/orders_controller.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove new record"
[main 2d876d9] remove new record
 1 file changed, 34 insertions(+), 1 deletion(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 667 bytes | 667.00 KiB/s, done.
Total 5 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   2de70c3..2d876d9  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ cat app/models/order.rb
class Order < ApplicationRecord
  validates :name,  presence: true, length: { minimum: 3 }
  validates :lastname, presence: true 
  validates :email, presence: true

   before_save :filter_content,
    if: Proc.new { forum.parental_control? },
    unless: Proc.new { author.trusted? }

  #before_save :name,  if: Proc.new { name? }
  #if: Proc.new { |order| orde.name? }

   #before_create do 
    #self.name = login.capitalize if name.blank?
  #end

   #before_validation :ensure_login_has_a_value
  #unless: Proc.new { |a| a.email.blank? }
  #unless: -> { email.blank? } 

  #private
  #def  ensure_login_has_a_value
    #if login.nill?
      #self.login = email unless email.blank?   
   # end
  #end

  #after_initialize do |order|
    #puts "You have initialized an object!"
  #end

  #after_find do |order|
    #puts "You have found an object!"
  #end
end

nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/models/article.rb
  modified:   app/models/comment.rb
  modified:   app/models/order.rb
  modified:   app/views/orders/index.html.erb
  modified:   app/views/orders/new.html.erb
  modified:   app/views/orders/show.html.erb
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
  app/views/orders/_text.html.erb
  app/views/orders/edit.html.erb
  lib/20230124/01.02.23/
  lib/20230124/30.01.23/3:30pm.rb
  lib/20230124/30.01.23/6:31pm.rb
  lib/20230124/30.01.23/Validates.rb
  lib/20230124/31.01.23/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/models/article.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove private"
[main a476d65] remove private
 1 file changed, 2 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 452 bytes | 452.00 KiB/s, done.
Total 5 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   2d876d9..a476d65  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/models/comment.rb
  modified:   app/models/order.rb
  modified:   app/views/orders/index.html.erb
  modified:   app/views/orders/new.html.erb
  modified:   app/views/orders/show.html.erb
  deleted:    db/migrate/20230123075001_create_articles.rb
  deleted:    db/migrate/20230123125050_create_comments.rb
  deleted:    db/migrate/20230123125156_add_status_to_articles.rb
  deleted:    db/migrate/20230123125157_add_status_to_comments.rb
  modified:   db/schema.rb
  deleted:    lib/20230124/6:02pm.rb
  deleted:    lib/20230124/6:6pm.rb
  deleted:    lib/24/2:42.rb

  (use "git add <file>..." to include in what will be committed)
  app/views/orders/_text.html.erb
  app/views/orders/edit.html.erb
  lib/20230124/30.01.23/3:30pm.rb
  lib/20230124/30.01.23/Validates.rb

nancy@Nancy:~/nancy/ror/blog_application$ rails c
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version that created the lockfile by running `gem install bundler:2.3.26`.
dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
Loading development environment (Rails 7.0.4.1)
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/zeitwerk-2.6.6/lib/zeitwerk/loader/callbacks.rb:25:in `on_file_autoloaded': expected file /home/nancy/nancy/ror/blog_application/app/models/concerns/persons.rb to define constant Persons, but didn't (Zeitwerk::NameError)
2.7.0 :002 > order = Order.new
 => #<Order:0x000055a17b838548 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
2.7.0 :003 > order.name
 => nil 
2.7.0 :004 > order.valid?
 => false 
2.7.0 :005 > order.status
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `status' for #<Order:0x000055a17b838548> (NoMethodError)
2.7.0 :006 > oeder.name = "nancy"
Traceback (most recent call last):
(irb):6:in `<main>': undefined local variable or method `oeder' for main:Object (NameError)
Did you mean?  order
2.7.0 :007 > order.valid?
 => false 
2.7.0 :008 > Killed
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails generate migration Book 
      invoke  active_record
      create    db/migrate/20230201101119_book.rb
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:migrate
rails aborted!
SyntaxError: /home/nancy/nancy/ror/blog_application/db/migrate/20230201101119_book.rb:10: syntax error, unexpected end-of-input, expecting `end'
Tasks: TOP => db:migrate
(See full trace by running task with --trace)
== 20230201101119 Book: migrating =============================================
-- create_table(:books)
== 20230201101119 Book: migrated (0.0045s) ====================================

nancy@Nancy:~/nancy/ror/blog_application$ Book.new
Book.new: command not found
nancy@Nancy:~/nancy/ror/blog_application$ rails c
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version that created the lockfile by running `gem install bundler:2.3.26`.
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby, x86_64-linux but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
2.7.0 :001 > Book.new
You have initialized an object!
2.7.0 :002 > Book.first
  Book Load (0.4ms)  SELECT "books".* FROM "books" ORDER BY "books"."id" ASC LIMIT ?  [["LIMIT", 1]]
2.7.0 :003 > b = Book.create(title: "india of book")
You have initialized an object!
  Book Create (0.7ms)  INSERT INTO "books" ("title", "body", "order_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["title", "india of book"], ["body", nil], ["order_id", nil], ["created_at", "2023-02-01 10:20:04.550929"], ["updated_at", "2023-02-01 10:20:04.550929"]]
  TRANSACTION (0.1ms)  rollback transaction
Traceback (most recent call last):
te3::ConstraintException)
/home/nancy/.rvm/gems/ruby-2.7.0/gems/sqlite3-1.6.0-x86_64-linux/lib/sqlite3/statement.rb:108:in `step': SQLite3::ConstraintException: NOT NULL constraint failed: books.order_id (ActiveRecord::NotNullViolation)
2.7.0 :004 > b.touch
(irb):4:in `<main>': undefined method `touch' for nil:NilClass (NoMethodError)
2.7.0 :005 > @book = Book.last
 => nil 
2.7.0 :006 > @book.touch
(irb):6:in `<main>': undefined method `touch' for nil:NilClass (NoMethodError)
2.7.0 :007 > @article = Article.last
  Article Load (0.2ms)  SELECT "articles".* FROM "articles" ORDER BY "articles"."id" DESC LIMIT ?  [["LIMIT", 1]]
 => 
... 
2.7.0 :008 > @article.touch
  TRANSACTION (0.1ms)  begin transaction
  Article Update (0.4ms)  UPDATE "articles" SET "updated_at" = ? WHERE "articles"."id" = ?  [["updated_at", "2023-02-01 10:31:03.857461"], ["id", 1]]
 => true 
2.7.0 :009 > @comment = Comment.last
  Comment Load (0.2ms)  SELECT "comments".* FROM "comments" ORDER BY "comments"."id" DESC LIMIT ?  [["LIMIT", 1]]
 => nil 
2.7.0 :010 > @comment.touch
Traceback (most recent call last):
(irb):10:in `<main>': undefined method `touch' for nil:NilClass (NoMethodError)
2.7.0 :011 > @article = Article.last
  Article Load (0.1ms)  SELECT "articles".* FROM "articles" ORDER BY "articles"."id" DESC LIMIT ?  [["LIMIT", 1]]
#<Article:0x000056368d883618
... 
2.7.0 :012 > @article.touch
  TRANSACTION (0.1ms)  begin transaction
  Article Update (0.3ms)  UPDATE "articles" SET "updated_at" = ? WHERE "articles"."id" = ?  [["updated_at", "2023-02-01 10:38:54.064656"], ["id", 1]]
  TRANSACTION (7.1ms)  commit transaction
 => true 
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."id" DESC LIMIT ?  [["LIMIT", 1]]
 => 
#<Order:0x000056368e1b3300
 id: 2,
 name: "nancy",
 lastname: "kushwah",
 email: "nancy9ku@gmail.com",
 updated_at: Wed, 01 Feb 2023 07:22:30.732517000 UTC +00:00> 
2.7.0 :014 > order = Order.destroy_by(name: "nancy")
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" WHERE "orders"."name" = ?  [["name", "nancy"]]
  TRANSACTION (0.1ms)  begin transaction
  Order Destroy (0.3ms)  DELETE FROM "orders" WHERE "orders"."id" = ?  [["id", 2]]
  TRANSACTION (7.6ms)  commit transaction
 => 
[#<Order:0x000056368de2cf60
... 
  TRANSACTION (0.1ms)  begin transaction
  Order Create (4.9ms)  INSERT INTO "orders" ("name", "lastname", "email", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["name", "jhon"], ["lastname", "Doe"], ["email", "jhondoe@gmail.com"], ["created_at", "2023-02-01 10:42:52.341522"], ["updated_at", "2023-02-01 10:42:52.341522"]]
 => 
#<Order:0x000056368e19c830
... 
  Order Load (0.1ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."id" DESC LIMIT ?  [["LIMIT", 1]]
 => 
#<Order:0x000056368e0aeea0
 id: 3,
 lastname: "Doe",
 email: "jhondoe@gmail.com",
 created_at: Wed, 01 Feb 2023 10:42:52.341522000 UTC +00:00,
 updated_at: Wed, 01 Feb 2023 10:42:52.341522000 UTC +00:00> 
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `toggle!' for #
2.7.0 :018 > order.toggle!
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/persistence.rb:891:in `toggle!': wrong number of arguments (given 0, expected 1) (ArgumentError)
2.7.0 :019 > Order.touch
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `touch' for #<Class:0x000056368e1c7a30> (NoMethodError)
2.7.0 :020 > order.touch
  TRANSACTION (0.1ms)  begin transaction
  Order Update (0.3ms)  UPDATE "orders" SET "updated_at" = ? WHERE "orders"."id" = ?  [["updated_at", "2023-02-01 10:44:38.822944"], ["id", 3]]
  TRANSACTION (7.1ms)  commit transaction
2.7.0 :021 > Order.touch_all
  Order Update All (8.2ms)  UPDATE "orders" SET "updated_at" = ?  [["updated_at", "2023-02-01 10:44:51.902662"]]
 => 1 
2.7.0 :022 > order = Order.update(name: "nik")
  TRANSACTION (0.1ms)  begin transaction
  Order Update (0.2ms)  UPDATE "orders" SET "name" = ?, "updated_at" = ? WHERE "orders"."id" = ?  [["name", "nik"], ["updated_at", "2023-02-01 10:45:54.9
  TRANSACTION (2.5ms)  commit transaction
[#<Order:0x000056368de4b028
... 
2.7.0 :023 > Order.update_attribute
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `update_attribute' for #<Class:0x000056368e1c7a30> (NoMethodError)
Did you mean?  _default_attributes
2.7.0 :024 > order = Order.update_attribute(name: "sona")
Traceback (most recent call last):
te' for #<Class:0x000056368e1c7a30> (NoMethodError)
Did you mean?  _default_attributes
2.7.0 :025 > order.update_attribute
Traceback (most recent call last):
(irb):25:in `<main>': undefined method `update_attribute' for #<Array:0x000056368de4b168> (NoMethodError)
2.7.0 :026 > order = Order.new(name: "nik").valid?
 => true 
2.7.0 :027 > Order.all
  Order Load (0.1ms)  SELECT "orders".* FROM "orders"
[#<Order:0x00007fc3842cd608
  id: 3,
  lastname: "Doe",
  email: "jhondoe@gmail.com",
  created_at: Wed, 01 Feb 2023 10:42:52.341522000 UTC +00:00,
  updated_at: Wed, 01 Feb 2023 10:45:54.917191000 UTC +00:00>] 
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."id" ASC LIMIT ?  [["LIMIT", 1]]
 => 
#<Order:0x000056368e34d3f0
 name: "nik",
 lastname: "Doe",
 created_at: Wed, 01 Feb 2023 10:42:52.341522000 UTC +00:00,
 updated_at: Wed, 01 Feb 2023 10:45:54.917191000 UTC +00:00> 
2.7.0 :029 > order.first
Traceback (most recent call last):
2.7.0 :030 > order = Order.first
  Order Load (0.1ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."id" ASC LIMIT ?  [["LIMIT", 1]]
 => 
#<Order:0x000056368dfc81d0
2.7.0 :031 > order = Order.first(name: "nik")
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/relation/finder_methods.rb:547:in `>': no implicit conversion of Integer int
2.7.0 :032 > order = Order.first(name > "nik")
Traceback (most recent call last):
(irb):32:in `<main>': undefined local variable or method `name' for main:Object (NameError)
2.7.0 :033 > order = Order.find(name: "nik")
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/relation/finder_methods.rb:381:in `raise_record_not_found_exception!': Couldn't find Order with 'id'={:name=>"nik"} (ActiveRecord::RecordNotFound)
2.7.0 :034 > Order.find(name: "niki")
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/relation/finder_methods.rb:381:in `raise_record_not_found_exception!': Couldn't find Order with 'id'={:name=>"niki"} (ActiveRecord::RecordNotFound)
2.7.0 :035 > order.find
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `find' for #<Order:0x000056368dfc81d0> (NoMethodError)
2.7.0 :036 > Order.find(1)
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" WHERE "orders"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
Traceback (most recent call last):
NotFound)
2.7.0 :037 > order = Order.find(3)
  Order Load (0.1ms)  SELECT "orders".* FROM "orders" WHERE "orders"."id" = ? LIMIT ?  [["id", 3], ["LIMIT", 1]]
#<Order:0x00007fc3842d8850
... 
2.7.0 :038 > order = Order.find_by(name: "nik")
  Order Load (0.3ms)  SELECT "orders".* FROM "orders" WHERE "orders"."name" = ? LIMIT ?  [["name", "nik"], ["LIMIT", 1]]
 => 
#<Order:0x000056368e061d58
... 
2.7.0 :039 > order = Order.find_by_*()
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `find_by_' for #<Class:0x000056368e1c7a30> (NoMethodError)
Did you mean?  find_by
               find_by!
2.7.0 :040 > order = Order.find_by_sql
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/querying.rb:49:in `find_by_sql': wrong number of arguments (given 0, expected 1..2) (ArgumentError)
2.7.0 :041 > order = Order.find_by_sql(name: "nik")
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/querying.rb:49: warning: The called method `find_by_sql' is defined here
  Order Load (0.4ms)  {:name=>"nik"}
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/sqlite3-1.6.0-x86_64-linux/lib/sqlite3/database.rb:152:in `initialize': no implicit conversion of Hash into String 
/home/nancy/.rvm/gems/ruby-2.7.0/gems/sqlite3-1.6.0-x86_64-linux/lib/sqlite3/database.rb:152:in `initialize': TypeError: no implicit conversion of Hash into String (ActiveRecord::StatementInvalid)
2.7.0 :042 > Order.all
 => 
[#<Order:0x000056368db5e0b8
  id: 3,
  lastname: "Doe",
  email: "jhondoe@gmail.com",
  created_at: Wed, 01 Feb 2023 10:42:52.341522000 UTC +00:00,
2.7.0 :043 > order = Order.decrement!
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `decrement!' fo
Did you mean?  decrement_counter
2.7.0 :044 > order.decrement!
Traceback (most recent call last):
cted 1..2) (ArgumentError)
2.7.0 :045 > order = Order.decrement_counter(3)
Traceback (most recent call last):
n 1, expected 2) (ArgumentError)
2.7.0 :046 > order = Order.decrement_counter(1)
Traceback (most recent call last):
n 1, expected 2) (ArgumentError)
2.7.0 :047 > order = Order.decrement_counter
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/counter_cache.rb:159:in `decrement_counter': wrong number of arguments (given 0, expected 2) (ArgumentError)
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/counter_cache.rb:159:in `decrement_counter': wrong number of arguments (given 0, expected 2) (ArgumentError)
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/counter_cache.rb:159:in `decrement_counter': wrong number of arguments (given 1, expected 2) (ArgumentError)
2.7.0 :050 > Order.increment_counter
Traceback (most recent call last):
n 0, expected 2) (ArgumentError)
2.7.0 :051 > order = Order.insert(name: "jhon")
(irb):51: warning: Passing the keyword argument as the last hash parameter is deprecated
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/persistence.rb:66: warning: The called method `insert' is defined here
  Order Insert (7.8ms)  INSERT INTO "orders" ("name","created_at","updated_at") VALUES ('jhon', STRFTIME('%Y-%m-%d %H:%M:%f', 'NOW'), STRFTIME('%Y-%m-%d 
 => #<ActiveRecord::Result:0x000056368d373948 @column_types={}, @columns=[], @hash_rows=nil, @rows=[]> 
2.7.0 :052 > Order.increment_counter(lastname: "doe")
Traceback (most recent call last):
n 0, expected 2) (ArgumentError)
2.7.0 :053 > order = Order.insert(name: "jhon")
(irb):53: warning: Passing the keyword argument as the last hash parameter is deprecated
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/persistence.rb:66: warning: The called method `insert' is defined here
  Order Insert (7.5ms)  INSERT INTO "orders" ("name","created_at","updated_at") VALUES ('jhon', STRFTIME('%Y-%m-%d %H:%M:%f', 'NOW'), STRFTIME('%Y-%m-%d 
 => #<ActiveRecord::Result:0x000056368de7f6c0 @column_types={}, @columns=[], @hash_rows=nil, @rows=[]> 
2.7.0 :054 > order = Order.insert!(name: "hhe")
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/persistence.rb:155: warning: The called method `insert!' is defined here
  Order Insert (3.0ms)  INSERT INTO "orders" ("name","created_at","updated_at") VALUES ('hhe', STRFTIME('%Y-%m-%d %H:%M:%f', 'NOW'), STRFTIME('%Y-%m-%d %H:%M:%f', 'NOW'))
2.7.0 :055 > order = Order.insert_all
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/persistence.rb:145:in `insert_all': wrong number of arguments (given 0, expected 1) (ArgumentError)
2.7.0 :056 > order = Order.insert_all(name: "nancy")
(irb):56: warning: Passing the keyword argument as the last hash parameter is deprecated
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/insert_all.rb:13:in `initialize': undefined method `keys' for [:name, "nancy"]:Array (NoMethodError)
2.7.0 :057 > order = Order.touch_all
  Order Update All (7.1ms)  UPDATE "orders" SET "updated_at" = ?  [["updated_at", "2023-02-01 11:03:47.622070"]]
2.7.0 :058 > order = Order.upsert
Traceback (most recent call last):
 1) (ArgumentError)
2.7.0 :059 > order = Order.upsert(name: "jhon")
(irb):59: warning: Passing the keyword argument as the last hash parameter is deprecated
  Order Upsert (7.6ms)  INSERT INTO "orders" ("name","created_at","updated_at") VALUES ('jhon', STRFTIME('%Y-%m-%d %H:%M:%f', 'NOW'), STRFTIME('%Y-%m-%d %H:%M:%f', 'NOW')) ON CONFLICT ("id") DO UPDATE SET updated_at=(CASE WHEN ("name" IS excluded."name") THEN "orders".updated_at ELSE STRFTIME('%Y-%m-%d %H
 => #<ActiveRecord::Result:0x000056368de172f0 @column_types={}, @columns=[], @hash_rows=nil, @rows=[]> 
2.7.0 :060 > order = Order.upsert_all(name: "jhon")
(irb):60: warning: Passing the keyword argument as the last hash parameter is deprecated
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/persistence.rb:332: warning: The called method `upsert_all' is defined here
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/insert_all.rb:13:in `initialize': undefined method `keys' for [:name, "jhon"]:Array (NoMethodError)
2.7.0 :061 > order.upsert_all
Traceback (most recent call last):
(irb):61:in `<main>': undefined method `upsert_all' for #<ActiveRecord::Result:0x000056368de172f0> (NoMethodError)
2.7.0 :062 > Order.upsert_all()
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/persistence.rb:332:in `upsert_all': wrong number of arguments (given 0, expected 1) (ArgumentError)
2.7.0 :063 > throw :abort
Traceback (most recent call last):
2.7.0 :064 > order = Order.first
  Order Load (0.1ms)  SELECT "orders".* FROM "orders" ORDER BY "orders"."id" ASC LIMIT ?  [["LIMIT", 1]]
 => 
#<Order:0x000056368e14a5a8
... 
2.7.0 :065 > order.articles.create!
Traceback (most recent call last):
#<Order:0x000056368e14a5a8> (NoMethodError)
2.7.0 :066 > Killed
nancy@Nancy:~/nancy/ror/blog_application$ rails c
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version th
-mswin32 x64-mingw32 java`.
Loading development environment (Rails 7.0.4.1)
2.7.0 :001 > @order = Order.create(name: "sdjs", lastname: "bdhdfhdas", email: "sdgdhs!ssb@sdg.com")
  TRANSACTION (7.1ms)  commit transaction
 => 
#<Order:0x0000562bbf32efd8
... 
2.7.0 :002 > @order = Order.where(name: "sdjs")
  Order Load (0.2ms)  SELECT "orders".* FROM "orders" WHERE "orders"."name" = ?  [["name", "sdjs"]]
 => 
[#<Order:0x0000562bbef3d730
... 
2.7.0 :003 > @order.each do |order|
2.7.0 :004 >   order.all
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `all' for #<Order:0x0000562bbef3d730> (NoMethodError)
2.7.0 :007 >   order.destroy
2.7.0 :008 > end
  TRANSACTION (0.2ms)  begin transaction
  TRANSACTION (8.2ms)  commit transaction
 => 
[#<Order:0x0000562bbef3d730
  id: 8,
  name: "sdjs",
  lastname: "bdhdfhdas",
  email: "sdgdhs!ssb@sdg.com",
  created_at: Wed, 01 Feb 2023 11:25:40.391650000 UTC +00:00,
  updated_at: Wed, 01 Feb 2023 11:25:40.391650000 UTC +00:00>] 
2.7.0 :009 > @order.destroy
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/persistence.rb:447:in `destroy': wrong number of arguments (given 0, expected 1) (ArgumentError)
2.7.0 :010 > @book = @order.books.create(name: "sdjs")
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/relation/delegation.rb:110:in `method_missing': undefined method `books' for #<Order::ActiveRecord_Relation:0x0000562bbef46f10> (NoMethodError)
2.7.0 :011 > @comment = @article.comment.create(title: "i am rails")
Traceback (most recent call last):
(irb):11:in `<main>': undefined method `comment' for nil:NilClass (NoMethodError)
2.7.0 :012 > Killed
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/models/article.rb
  modified:   app/models/comment.rb
  modified:   app/models/order.rb
  modified:   app/views/orders/index.html.erb
  modified:   app/views/orders/new.html.erb
  modified:   app/views/orders/show.html.erb
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
  app/models/Book.rb
  app/models/concerns/persons.rb
  app/views/orders/_text.html.erb
  app/views/orders/edit.html.erb
  db/migrate/20230201101119_book.rb
  lib/20230124/01.02.23/
  lib/20230124/30.01.23/3:30pm.rb
  lib/20230124/30.01.23/6:31pm.rb
  lib/20230124/30.01.23/Validates.rb
  lib/20230124/31.01.23/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/models/article.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove has_many"
[main a15c5d9] remove has_many
 1 file changed, 1 insertion(+)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 451 bytes | 451.00 KiB/s, done.
Total 5 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   a476d65..a15c5d9  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/models/comment.rb
  modified:   app/models/order.rb
  modified:   app/views/orders/index.html.erb
  modified:   app/views/orders/new.html.erb
  modified:   app/views/orders/show.html.erb
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
  app/models/Book.rb
  app/models/concerns/persons.rb
  app/views/orders/_text.html.erb
  app/views/orders/edit.html.erb
  db/migrate/20230201101119_book.rb
  lib/20230124/01.02.23/
  lib/20230124/30.01.23/3:30pm.rb
  lib/20230124/30.01.23/6:31pm.rb
  lib/20230124/30.01.23/Validates.rb
  lib/20230124/31.01.23/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/models/comment.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove belongs_to"
[main 56a8ebc] remove belongs_to
 1 file changed, 2 insertions(+), 2 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 496 bytes | 496.00 KiB/s, done.
Total 5 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   a15c5d9..56a8ebc  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ git add  app/models/order.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove has_many"
[main 4821662] remove has_many
 1 file changed, 32 insertions(+), 3 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 775 bytes | 775.00 KiB/s, done.
Total 5 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   56a8ebc..4821662  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/orders/index.html.erb
  modified:   app/views/orders/new.html.erb
  modified:   app/views/orders/show.html.erb
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
  app/models/Book.rb
  app/models/concerns/persons.rb
  app/views/orders/_text.html.erb
  app/views/orders/edit.html.erb
  db/migrate/20230201101119_book.rb
  lib/20230124/01.02.23/
  lib/20230124/30.01.23/3:30pm.rb
  lib/20230124/30.01.23/6:31pm.rb
  lib/20230124/30.01.23/Validates.rb
  lib/20230124/31.01.23/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/views/orders/index.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "fix indentation"
[main 675c51c] fix indentation
 1 file changed, 10 insertions(+), 10 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 577 bytes | 577.00 KiB/s, done.
Total 6 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   4821662..675c51c  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/orders/new.html.erb
  modified:   app/views/orders/show.html.erb
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
  app/models/Book.rb
  app/models/concerns/persons.rb
  app/views/orders/_text.html.erb
  app/views/orders/edit.html.erb
  db/migrate/20230201101119_book.rb
  lib/20230124/01.02.23/
  lib/20230124/30.01.23/3:30pm.rb
  lib/20230124/30.01.23/6:31pm.rb
  lib/20230124/30.01.23/Validates.rb
  lib/20230124/31.01.23/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add  app/views/orders/new.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added heading tag"
[main e81b8e0] added heading tag
 1 file changed, 1 insertion(+), 22 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (6/6), 531 bytes | 531.00 KiB/s, done.
Total 6 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   675c51c..e81b8e0  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/orders/new.html.erb
  modified:   app/views/orders/show.html.erb
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
  app/models/Book.rb
  app/models/concerns/persons.rb
  app/views/orders/_text.html.erb
  app/views/orders/edit.html.erb
  db/migrate/20230201101119_book.rb
  lib/20230124/01.02.23/
  lib/20230124/30.01.23/3:30pm.rb
  lib/20230124/30.01.23/6:31pm.rb
  lib/20230124/30.01.23/Validates.rb
  lib/20230124/31.01.23/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add  app/views/orders/new.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added heading tag"
[main 3df172e] added heading tag
 1 file changed, 3 insertions(+)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 548 bytes | 548.00 KiB/s, done.
Total 6 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   e81b8e0..3df172e  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git satus
git: 'satus' is not a git command. See 'git --help'.

The most similar command is
  status
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/orders/show.html.erb
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
  app/models/Book.rb
  app/models/concerns/persons.rb
  app/views/orders/_text.html.erb
  app/views/orders/edit.html.erb
  db/migrate/20230201101119_book.rb
  lib/20230124/01.02.23/
  lib/20230124/30.01.23/3:30pm.rb
  lib/20230124/30.01.23/6:31pm.rb
  lib/20230124/30.01.23/Validates.rb
  lib/20230124/31.01.23/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add    app/views/orders/show.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "fix indentation"
[main 0fac169] fix indentation
 1 file changed, 15 insertions(+)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 621 bytes | 621.00 KiB/s, done.
Total 6 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   3df172e..0fac169  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
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
  app/models/Book.rb
  app/models/concerns/persons.rb
  app/views/orders/_text.html.erb
  app/views/orders/edit.html.erb
  db/migrate/20230201101119_book.rb
  lib/20230124/01.02.23/
  lib/20230124/30.01.23/3:30pm.rb
  lib/20230124/30.01.23/6:31pm.rb
  lib/20230124/30.01.23/Validates.rb
  lib/20230124/31.01.23/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/views/orders/_text.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit "remove article_parth"
error: pathspec 'remove article_parth' did not match any file(s) known to git
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove article_parth"
[main 310b699] remove article_parth
 1 file changed, 36 insertions(+)
 create mode 100644 app/views/orders/_text.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 10, done.
Counting objects: 100% (10/10), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 652 bytes | 652.00 KiB/s, done.
Total 6 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   0fac169..310b699  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
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
  app/models/Book.rb
  app/models/concerns/persons.rb
  app/views/orders/edit.html.erb
  db/migrate/20230201101119_book.rb
  lib/20230124/01.02.23/
  lib/20230124/30.01.23/3:30pm.rb
  lib/20230124/30.01.23/6:31pm.rb
  lib/20230124/30.01.23/Validates.rb
  lib/20230124/31.01.23/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
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
  app/models/Book.rb
  app/models/concerns/persons.rb
  app/views/orders/edit.html.erb
  db/migrate/20230201101119_book.rb
  lib/20230124/01.02.23/
  lib/20230124/30.01.23/3:30pm.rb
  lib/20230124/30.01.23/6:31pm.rb
  lib/20230124/30.01.23/Validates.rb
  lib/20230124/31.01.23/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add  db/schema.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove record"
[main 6abff7f] remove record
 1 file changed, 8 insertions(+), 29 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
remote: Invalid username or password.
fatal: Authentication failed for 'https://github.com/codenote51/blog_application.git/'
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 8 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 531 bytes | 531.00 KiB/s, done.
Total 4 (delta 2), reused 0 (delta 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To https://github.com/codenote51/blog_application.git
   310b699..6abff7f  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  deleted:    db/migrate/20230123075001_create_articles.rb
  deleted:    db/migrate/20230123125050_create_comments.rb
  deleted:    db/migrate/20230123125156_add_status_to_articles.rb
  deleted:    db/migrate/20230123125157_add_status_to_comments.rb
  deleted:    lib/20230124/6:02pm.rb
  deleted:    lib/20230124/6:6pm.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/models/Book.rb
  app/models/concerns/persons.rb
  app/views/orders/edit.html.erb
  db/migrate/20230201101119_book.rb
  lib/20230124/01.02.23/
  lib/20230124/30.01.23/3:30pm.rb
  lib/20230124/30.01.23/6:31pm.rb
  lib/20230124/30.01.23/Validates.rb
  lib/20230124/31.01.23/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/views/orders/edit.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added heading tag"
[main e418c13] added heading tag
 1 file changed, 1 insertion(+)
 create mode 100644 app/views/orders/edit.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 10, done.
Counting objects: 100% (10/10), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (6/6), 492 bytes | 492.00 KiB/s, done.
Total 6 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   6abff7f..e418c13  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/orders/edit.html.erb
  deleted:    db/migrate/20230123075001_create_articles.rb
  deleted:    db/migrate/20230123125050_create_comments.rb
  deleted:    db/migrate/20230123125156_add_status_to_articles.rb
  deleted:    db/migrate/20230123125157_add_status_to_comments.rb
  deleted:    lib/20230124/6:02pm.rb
  deleted:    lib/20230124/6:6pm.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/models/Book.rb
  app/models/concerns/persons.rb
  db/migrate/20230201101119_book.rb
  lib/20230124/01.02.23/
  lib/20230124/30.01.23/3:30pm.rb
  lib/20230124/30.01.23/6:31pm.rb
  lib/20230124/30.01.23/Validates.rb
  lib/20230124/31.01.23/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/views/orders/edit.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added heading tag"
[main 4e1755d] added heading tag
 1 file changed, 1 insertion(+)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 495 bytes | 495.00 KiB/s, done.
Total 6 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   e418c13..4e1755d  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  deleted:    db/migrate/20230123075001_create_articles.rb
  deleted:    db/migrate/20230123125050_create_comments.rb
  deleted:    db/migrate/20230123125156_add_status_to_articles.rb
  deleted:    db/migrate/20230123125157_add_status_to_comments.rb
  deleted:    lib/20230124/6:02pm.rb
  deleted:    lib/20230124/6:6pm.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/models/Book.rb
  app/models/concerns/persons.rb
  db/migrate/20230201101119_book.rb
  lib/20230124/01.02.23/
  lib/20230124/30.01.23/3:30pm.rb
  lib/20230124/30.01.23/6:31pm.rb
  lib/20230124/30.01.23/Validates.rb
  lib/20230124/31.01.23/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ 

