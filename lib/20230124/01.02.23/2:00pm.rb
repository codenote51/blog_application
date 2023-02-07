nancy@Nancy:~/nancy/ror/blog_application$ rvm use ruby-2.7.0
Using /home/nancy/.rvm/gems/ruby-2.7.0
nancy@Nancy:~/nancy/ror/blog_application$ ls
nancy@Nancy:~/nancy/ror/blog_application$ @order = Order.create(name: "nancy", lastname: "kushwah", email: "nancykushwah.ror@gmail.com")
bash: syntax error near unexpected token `('
nancy@Nancy:~/nancy/ror/blog_application$ rails c
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version th
-mswin32 x64-mingw32 java`.
Loading development environment (Rails 7.0.4.1)
2.7.0 :001 > @order = Order.create(name: "nancy", lastname: "kushwah", email: "nancykushwah.ror@gmail.com")
  TRANSACTION (0.1ms)  begin transaction
  Order Create (0.3ms)  INSERT INTO "orders" ("name", "lastname", "email", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["name", "nancy"], ["lastname", "kushwah"], ["email", "nancykushwah.ror@gmail.com"], ["created_at", "2023-02-02 05:27:25.876851"], ["updated_at", "2023-02-02 05:27:25.876851"]]
  TRANSACTION (7.3ms)  commit transaction
 => 
#<Order:0x000056362918bab8
... 
2.7.0 :002 > @order = Order.where(name: "nancy")
 => 
[#<Order:0x0000563629486f10
... 
2.7.0 :004 >   order.destroy
2.7.0 :005 > end
  TRANSACTION (0.1ms)  begin transaction
  TRANSACTION (8.0ms)  commit transaction
 => 
  id: 9,
  name: "nancy",
  lastname: "kushwah",
  email: "nancykushwah.ror@gmail.com",
  created_at: Thu, 02 Feb 2023 05:27:25.876851000 UTC +00:00,
  updated_at: Thu, 02 Feb 2023 05:27:25.876851000 UTC +00:00>] 
2.7.0 :006 > @order.destroy
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/persistence.rb:447:in `destroy': wrong number of arguments (given 0, expected 1) (ArgumentError)
2.7.0 :007 > Order.destroy
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/persistence.rb:447:in `destroy': wrong number of arguments (given 0, expected 1) (ArgumentError)
2.7.0 :008 > @name.destroy
Traceback (most recent call last):
(irb):8:in `<main>': undefined method `destroy' for nil:NilClass (NoMethodError)
2.7.0 :009 > order.destroy
Traceback (most recent call last):
(irb):9:in `<main>': undefined local variable or method `order' for main:Object (NameError)
Did you mean?  @order
2.7.0 :010 > Killed
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/controllers/articles_controller.rb
  modified:   app/controllers/comments_controller.rb
  modified:   app/models/article.rb
  modified:   app/models/comment.rb
  deleted:    db/migrate/20230123075001_create_articles.rb
  deleted:    db/migrate/20230123125050_create_comments.rb
  deleted:    db/migrate/20230123125156_add_status_to_articles.rb
  deleted:    db/migrate/20230123125157_add_status_to_comments.rb
  deleted:    lib/20230124/6:02pm.rb
  deleted:    lib/20230124/6:6pm.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/models/concerns/persons.rb
  db/migrate/20230201101119_book.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails generate migration Employees
      invoke  active_record
      create    db/migrate/20230202094014_employees.rb
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:migrate
== 20230202094014 Employees: migrating ========================================
-- create_table(:employees)
   -> 0.0038s
== 20230202094014 Employees: migrated (0.0039s) ===============================

nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:rollback
rails aborted!
ActiveRecord::UnknownMigrationVersionError: 

No migration with version number 20230202094014.


Tasks: TOP => db:rollback
(See full trace by running task with --trace)
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:migrate
nancy@Nancy:~/nancy/ror/blog_application$ ls

