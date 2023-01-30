nancy@Nancy:~$ rvm use ruby-2.7.0
Using /home/nancy/.rvm/gems/ruby-2.7.0
nancy@Nancy:~$ cd /home/nancy/nancy/ror/blog_application/
app  bin  config  config.ru  db  Gemfile  Gemfile.lock  lib  log  public  Rakefile  README.md  storage  test  tmp  vendor
nancy@Nancy:~/nancy/ror/blog_application$ git status
Changes not staged for commit:
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/controllers/comments_controller.rb
  modified:   app/models/article.rb
  modified:   app/models/concerns/visible.rb
  modified:   app/views/articles/new.html.erb
  modified:   config/routes.rb
  deleted:    db/migrate/20230123075001_create_articles.rb
  deleted:    db/migrate/20230123125050_create_comments.rb
  deleted:    db/migrate/20230123125156_add_status_to_articles.rb
  deleted:    db/migrate/20230123125157_add_status_to_comments.rb
  modified:   db/schema.rb
  deleted:    lib/24/2:42.rb

  (use "git add <file>..." to include in what will be committed)
  app/controllers/users_controller.rb
  app/models/product.rb
  app/models/user.rb
  app/views/users/
  db/migrate/20230128143626_article.rb
  lib/20230124/6:6pm.rb
no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ rails c
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version that created the lockfile by running `gem install bundler:2.3.26`.
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby, x86_64-linux but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
Loading development environment (Rails 7.0.4.1)
2.7.0 :001 > a = Articles.new(title: "Hello rails", body: "hello ruby on rails");
Traceback (most recent call last):
(irb):1:in `<main>': uninitialized constant Articles (NameError)
2.7.0 :002 > article = Article.new(title: "Hello rails", body: "hello ruby on rails");
 => #<Article:0x00005590d368f678 id: nil, title: "Hello rails", body: "hello ruby on rails", created_at: nil, updated_at: nil> 
2.7.0 :003 > article
 => #<Article:0x00005590d368f678 id: nil, title: "Hello rails", body: "hello ruby on rails", created_at: nil, updated_at: nil> 
2.7.0 :004 > article.save
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `status' for #<Article:0x00005590d368f678> (NoMethodError)
2.7.0 :005 > article.errors;
 => #<ActiveModel::Errors []> 
2.7.0 :006 > 
nancy@Nancy:~/nancy/ror/blog_application$ rails c
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version that created the lockfile by running `gem install bundler:2.3.26`.
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby, x86_64-linux but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86
^[[A^[[ALoading development environment (Rails 7.0.4.1)
  TRANSACTION (0.1ms)  begin transaction
  Article Create (0.3ms)  INSERT INTO "articles" ("title", "body", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["title", "Hello rails"], ["body", "hello ruby on rails"], ["created_at", "2023-01-30 05:41:14.319761"], ["updated_at", "2023-01-30 05:41:14.319761"]]
  TRANSACTION (1.8ms)  commit transaction
 => 
... 
2.7.0 :002 > article
 => 
 id: 1,
 title: "Hello rails",
 body: "hello ruby on rails",
 created_at: Mon, 30 Jan 2023 05:41:14.319761000 UTC +00:00,
 updated_at: Mon, 30 Jan 2023 05:41:14.319761000 UTC +00:00> 
2.7.0 :003 > article = Article.new(title: "hello world", body: "hello rails world");
 => #<Article:0x000055bdc5f35ee8 id: nil, title: "hello world", body: "hello rails world", created_at: nil, updated_at: nil> 
2.7.0 :004 > article.save
  TRANSACTION (0.1ms)  begin transaction
  Article Create (0.5ms)  INSERT INTO "articles" ("title", "body", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["title", "hello world"], ["body", "hello rails world"], ["created_at", "2023-01-30 05:43:51.492775"], ["updated_at", "2023-01-30 05:43:51.492775"]]
  TRANSACTION (7.3ms)  commit transaction
 => true 
2.7.0 :005 > article.all
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `all' for #<Article:0x000055bdc5f35ee8> (NoMethodError)
2.7.0 :006 > Article.all
  Article Load (0.3ms)  SELECT "articles".* FROM "articles"
 => 
[#<Article:0x000055bdc4859170
  id: 1,
  title: "Hello rails",
  body: "hello ruby on rails",
  created_at: Mon, 30 Jan 2023 05:41:14.319761000 UTC +00:00,
  updated_at: Mon, 30 Jan 2023 05:41:14.319761000 UTC +00:00>,
 #<Article:0x000055bdc4825be0
  id: 2,
  title: "hello world",
  body: "hello rails world",
  created_at: Mon, 30 Jan 2023 05:43:51.492775000 UTC +00:00,
  updated_at: Mon, 30 Jan 2023 05:43:51.492775000 UTC +00:00>] 
2.7.0 :007 > Killed
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails generate migration Comment
      invoke  active_record
      create    db/migrate/20230130054701_comment.rb
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:migrate
== 20230130054701 Comment: migrating ==========================================
-- create_table(:comments)
   -> 0.0041s
== 20230130054701 Comment: migrated (0.0042s) =================================

(failed reverse-i-search)`': ^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/controllers/articles_controller.rb
  modified:   app/models/article.rb
  modified:   app/models/comment.rb
  modified:   app/models/concerns/visible.rb
  modified:   app/views/articles/_form.html.erb
  modified:   app/views/articles/index.html.erb
  modified:   app/views/articles/new.html.erb
  modified:   config/routes.rb
  deleted:    db/migrate/20230123075001_create_articles.rb
  deleted:    db/migrate/20230123125050_create_comments.rb
  deleted:    db/migrate/20230123125156_add_status_to_articles.rb
  deleted:    db/migrate/20230123125157_add_status_to_comments.rb
  modified:   db/schema.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/controllers/users_controller.rb
  app/models/product.rb
  app/models/user.rb
  app/views/users/
  db/migrate/20230128143626_article.rb
  db/migrate/20230130054701_comment.rb
  lib/20230124/6:6pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git add  app/controllers/articles_controller.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "comment security"
[main 1d7b691] comment security
 1 file changed, 7 insertions(+), 4 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 519 bytes | 519.00 KiB/s, done.
Total 5 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   985e43b..1d7b691  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/controllers/articles_controller.rb
  modified:   app/controllers/comments_controller.rb
  modified:   app/models/article.rb
  modified:   app/models/comment.rb
  modified:   app/models/concerns/visible.rb
  modified:   app/views/articles/_form.html.erb
  modified:   app/views/articles/index.html.erb
  modified:   app/views/articles/new.html.erb
  modified:   config/routes.rb
  deleted:    db/migrate/20230123075001_create_articles.rb
  deleted:    db/migrate/20230123125050_create_comments.rb
  deleted:    db/migrate/20230123125156_add_status_to_articles.rb
  deleted:    db/migrate/20230123125157_add_status_to_comments.rb
  modified:   db/schema.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/controllers/users_controller.rb
  app/models/product.rb
  app/models/user.rb
  app/views/users/
  db/migrate/20230128143626_article.rb
  db/migrate/20230130054701_comment.rb
  lib/20230124/6:6pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/controllers/comments_controller.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "comment security"
[main 220d48c] comment security
 1 file changed, 1 insertion(+), 1 deletion(-)
nancy@Nancy:~/nancy/ror/blog_application$ git origin push main
git: 'origin' is not a git command. See 'git --help'.
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 422 bytes | 422.00 KiB/s, done.
Total 5 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   1d7b691..220d48c  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/controllers/articles_controller.rb
  modified:   app/models/article.rb
  modified:   app/models/comment.rb
  modified:   app/models/concerns/visible.rb
  modified:   app/views/articles/_form.html.erb
  modified:   app/views/articles/index.html.erb
  modified:   app/views/articles/new.html.erb
  modified:   config/routes.rb
  deleted:    db/migrate/20230123075001_create_articles.rb
  deleted:    db/migrate/20230123125050_create_comments.rb
  deleted:    db/migrate/20230123125156_add_status_to_articles.rb
  deleted:    db/migrate/20230123125157_add_status_to_comments.rb
  modified:   db/schema.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/controllers/users_controller.rb
  app/models/product.rb
  app/models/user.rb
  app/views/users/
  db/migrate/20230128143626_article.rb
  db/migrate/20230130054701_comment.rb
  lib/20230124/6:6pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/models/article.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "include Visible"
[main 3149aab] include Visible
 1 file changed, 2 insertions(+), 3 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 458 bytes | 458.00 KiB/s, done.
Total 5 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   220d48c..3149aab  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git add  app/models/comment.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "comment include Visible"
[main 54e0268] comment include Visible
 1 file changed, 1 insertion(+), 1 deletion(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Writing objects: 100% (5/5), 501 bytes | 501.00 KiB/s, done.
Total 5 (delta 3), reused 0 (delta 0)
To https://github.com/codenote51/blog_application.git
   3149aab..54e0268  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
nancy@Nancy:~/nancy/ror/blog_application$  bin/rails generate migration Product
      invoke  active_record
      create    db/migrate/20230130062233_product.rb
nancy@Nancy:~/nancy/ror/blog_application$ rails c
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version that created the lockfile by running `gem install bundler:2.3.26`.
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby, x86_64-linux but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
Loading development environment (Rails 7.0.4.1)
2.7.0 :001 > product = Product..create(name: "David", occupation: "Code Artist")
Traceback (most recent call last):
2.7.0 :002 > product = Product.create(name: "David", occupation: "Code Artist")
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/connection_adapters/sqlite3_adapter.rb:387:in `table_structure': Could not f
2.7.0 :003 > product = Products.create(name: "David", occupation: "Code Artist")
Traceback (most recent call last):
(irb):3:in `<main>': uninitialized constant Products (NameError)
Traceback (most recent call last):
ind table 'products' (ActiveRecord::StatementInvalid)
2.7.0 :005 > p = products.new()
Traceback (most recent call last):
(irb):5:in `<main>': undefined local variable or method `products' for main:Object (NameError)
Did you mean?  product
2.7.0 :006 > p = Product.new()
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/connection_adapters/sqlite3_adapter.rb:387:in `table_structure': Could not find table 'products' (ActiveRecord::StatementInvalid)
2.7.0 :007 > Killed
nancy@Nancy:~/nancy/ror/blog_application$ rails c
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version that created the lockfile by running `gem install bundler:2.3.26`.
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby, x86_64-linux but the 
-mswin32 x64-mingw32 java`.
Loading development environment (Rails 7.0.4.1)
2.7.0 :001 > Article.all
  Article Load (0.2ms)  SELECT "articles".* FROM "articles"
[#<Article:0x0000556d4b679c98
  id: 1,
  title: "Hello rails",
  body: "hello ruby on rails",
  updated_at: Mon, 30 Jan 2023 05:41:14.319761000 UTC +00:00>,
 #<Article:0x00007f60247f50b8
  id: 2,
  title: "hello world",
  created_at: Mon, 30 Jan 2023 05:43:51.492775000 UTC +00:00,
  updated_at: Mon, 30 Jan 2023 05:43:51.492775000 UTC +00:00>] 
2.7.0 :002 > article = Article.first
  Article Load (0.3ms)  SELECT "articles".* FROM "articles" ORDER BY "articles"."id" ASC LIMIT ?  [["LIMIT", 1]]
 => 
... 
2.7.0 :003 > hello world = Article.find_by(title: "hello world")
  Article Load (0.2ms)  SELECT "articles".* FROM "articles" WHERE "articles"."title" = ? LIMIT ?  [["title", "hello world"], ["LIMIT", 1]]
Traceback (most recent call last):
(irb):3:in `<main>': undefined method `hello' for main:Object (NoMethodError)
Did you mean?  help
2.7.0 :004 > article = Article.find_by(title: "hello world")
  Article Load (0.2ms)  SELECT "articles".* FROM "articles" WHERE "articles"."title" = ? LIMIT ?  [["title", "hello world"], ["LIMIT", 1]]
 => 
#<Article:0x0000556d4ba303c8
... 
2.7.0 :005 > article = Article .where(title: "Hello rails", body: "hello ruby on rails").order(created_at: :desc)
 [["title", "Hello rails"], ["body", "hello ruby on rails"]]
 => 
... 
2.7.0 :006 > article = Article.update(title: "Hello ruby on rails")
  Article Load (0.2ms)  SELECT "articles".* FROM "articles"
  Article Update (0.4ms)  UPDATE "articles" SET "title" = ?, "updated_at" = ? WHERE "articles"."id" = ?  [["title", "Hello ruby on rails"], ["updated_at", "2023-01-30 06:43:16.845828"], ["id", 1]]
  TRANSACTION (7.4ms)  commit transaction
  TRANSACTION (0.1ms)  begin transaction
  Article Update (0.5ms)  UPDATE "articles" SET "title" = ?, "updated_at" = ? WHERE "articles"."id" = ?  [["title", "Hello ruby on rails"], ["updated_at", "2023-01-30 06:43:16.856930"], ["id", 2]]
  TRANSACTION (1.9ms)  commit transaction
 => 
[#<Article:0x0000556d4b920140
... 
2.7.0 :007 > article.save
Traceback (most recent call last):
(irb):7:in `<main>': undefined method `save' for #<Array:0x0000556d4b9202a8> (NoMethodError)
2.7.0 :008 > article.all
(irb):8:in `<main>': undefined method `all' for #<Array:0x0000556d4b9202a8> (NoMethodError)
Did you mean?  all?
  Article Load (0.1ms)  SELECT "articles".* FROM "articles"
 => 
  id: 1,
  title: "Hello ruby on rails",
  body: "hello ruby on rails",
  created_at: Mon, 30 Jan 2023 05:41:14.319761000 UTC +00:00,
  updated_at: Mon, 30 Jan 2023 06:43:16.845828000 UTC +00:00>,
 #<Article:0x00007f6024718cd0
  id: 2,
  title: "Hello ruby on rails",
  body: "hello rails world",
  created_at: Mon, 30 Jan 2023 05:43:51.492775000 UTC +00:00,
  updated_at: Mon, 30 Jan 2023 06:43:16.856930000 UTC +00:00>] 
2.7.0 :010 > article = Article.update_all(title: "Hello rails", body: "i am ruby on rails")
  Article Update All (7.8ms)  UPDATE "articles" SET "title" = ?, "body" = ?  [["title", "Hello rails"], ["body", "i am ruby on rails"]]
 => 2 
2.7.0 :011 > article.all
Traceback (most recent call last):
(irb):11:in `<main>': undefined method `all' for 2:Integer (NoMethodError)
2.7.0 :012 > Article.all
  Article Load (0.1ms)  SELECT "articles".* FROM "articles"
 => 
[#<Article:0x00007f60241a77d8
  id: 1,
  title: "Hello rails",
  body: "i am ruby on rails",
  created_at: Mon, 30 Jan 2023 05:41:14.319761000 UTC +00:00,
  updated_at: Mon, 30 Jan 2023 06:43:16.845828000 UTC +00:00>,
 #<Article:0x00007f60241a74b8
  id: 2,
  title: "Hello rails",
  body: "i am ruby on rails",
  created_at: Mon, 30 Jan 2023 05:43:51.492775000 UTC +00:00,
  updated_at: Mon, 30 Jan 2023 06:43:16.856930000 UTC +00:00>] 
2.7.0 :013 > Killed
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails generate migration users
      invoke  active_record
      create    db/migrate/20230130065451_users.rb
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails generate migration Users
      invoke  active_record
      create    db/migrate/20230130065537_users.rb
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:migrate
== 20230130065537 Users: migrating ============================================
-- reate_table(:articles)
rails aborted!
StandardError: An error has occurred, this and all later migrations canceled:

undefined method `reate_table' for #<Users:0x0000557084ed4528>
/home/nancy/nancy/ror/blog_application/db/migrate/20230130065537_users.rb:3:in `change'

Caused by:
NoMethodError: undefined method `reate_table' for #<Users:0x0000557084ed4528>
/home/nancy/nancy/ror/blog_application/db/migrate/20230130065537_users.rb:3:in `change'
Tasks: TOP => db:migrate
(See full trace by running task with --trace)
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:migrate
== 20230130065537 Users: migrating ============================================
-- create_table(:articles)
rails aborted!
StandardError: An error has occurred, this and all later migrations canceled:

SQLite3::SQLException: table "articles" already exists
/home/nancy/nancy/ror/blog_application/db/migrate/20230130065537_users.rb:3:in `change'

Caused by:
ActiveRecord::StatementInvalid: SQLite3::SQLException: table "articles" already exists
/home/nancy/nancy/ror/blog_application/db/migrate/20230130065537_users.rb:3:in `change'

Caused by:
SQLite3::SQLException: table "articles" already exists
/home/nancy/nancy/ror/blog_application/db/migrate/20230130065537_users.rb:3:in `change'
Tasks: TOP => db:migrate
(See full trace by running task with --trace)
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:migrate
== 20230130065537 Users: migrating ============================================
-- create_table(:articles)
rails aborted!
StandardError: An error has occurred, this and all later migrations canceled:

SQLite3::SQLException: table "articles" already exists
/home/nancy/nancy/ror/blog_application/db/migrate/20230130065537_users.rb:3:in `up'

Caused by:
ActiveRecord::StatementInvalid: SQLite3::SQLException: table "articles" already exists
/home/nancy/nancy/ror/blog_application/db/migrate/20230130065537_users.rb:3:in `up'

Caused by:
SQLite3::SQLException: table "articles" already exists
/home/nancy/nancy/ror/blog_application/db/migrate/20230130065537_users.rb:3:in `up'
Tasks: TOP => db:migrate
(See full trace by running task with --trace)
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:migrate
== 20230130065537 Users: migrating ============================================
-- create_table(:articles)
rails aborted!
StandardError: An error has occurred, this and all later migrations canceled:

SQLite3::SQLException: table "articles" already exists
/home/nancy/nancy/ror/blog_application/db/migrate/20230130065537_users.rb:3:in `change'

Caused by:
ActiveRecord::StatementInvalid: SQLite3::SQLException: table "articles" already exists
/home/nancy/nancy/ror/blog_application/db/migrate/20230130065537_users.rb:3:in `change'

Caused by:
SQLite3::SQLException: table "articles" already exists
/home/nancy/nancy/ror/blog_application/db/migrate/20230130065537_users.rb:3:in `change'
Tasks: TOP => db:migrate
(See full trace by running task with --trace)
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails generate migration Simple
      invoke  active_record
      create    db/migrate/20230130070300_simple.rb
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:migrate
== 20230130070300 Simple: migrating ===========================================
-- create_table(:articles)
rails aborted!
StandardError: An error has occurred, this and all later migrations canceled:

SQLite3::SQLException: table "articles" already exists
/home/nancy/nancy/ror/blog_application/db/migrate/20230130070300_simple.rb:3:in `change'

Caused by:
ActiveRecord::StatementInvalid: SQLite3::SQLException: table "articles" already exists
/home/nancy/nancy/ror/blog_application/db/migrate/20230130070300_simple.rb:3:in `change'

Caused by:
SQLite3::SQLException: table "articles" already exists
/home/nancy/nancy/ror/blog_application/db/migrate/20230130070300_simple.rb:3:in `change'
Tasks: TOP => db:migrate
(See full trace by running task with --trace)
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:migrate
== 20230130070300 Simple: migrating ===========================================
-- create_table(:articles)
rails aborted!
StandardError: An error has occurred, this and all later migrations canceled:

SQLite3::SQLException: table "articles" already exists
/home/nancy/nancy/ror/blog_application/db/migrate/20230130070300_simple.rb:3:in `change'

Caused by:
ActiveRecord::StatementInvalid: SQLite3::SQLException: table "articles" already exists
/home/nancy/nancy/ror/blog_application/db/migrate/20230130070300_simple.rb:3:in `change'

Caused by:
SQLite3::SQLException: table "articles" already exists
/home/nancy/nancy/ror/blog_application/db/migrate/20230130070300_simple.rb:3:in `change'
Tasks: TOP => db:migrate
(See full trace by running task with --trace)
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:migrate
== 20230130070300 Simple: migrating ===========================================
-- create_table(:articles)
rails aborted!
StandardError: An error has occurred, this and all later migrations canceled:

SQLite3::SQLException: table "articles" already exists
/home/nancy/nancy/ror/blog_application/db/migrate/20230130070300_simple.rb:3:in `change'

Caused by:
ActiveRecord::StatementInvalid: SQLite3::SQLException: table "articles" already exists
/home/nancy/nancy/ror/blog_application/db/migrate/20230130070300_simple.rb:3:in `change'

Caused by:
SQLite3::SQLException: table "articles" already exists
/home/nancy/nancy/ror/blog_application/db/migrate/20230130070300_simple.rb:3:in `change'
Tasks: TOP => db:migrate
(See full trace by running task with --trace)
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:migrate
== 20230130070300 Simple: migrating ===========================================
-- create_table(:Simples)
   -> 0.0025s
== 20230130070300 Simple: migrated (0.0026s) ==================================

nancy@Nancy:~/nancy/ror/blog_application$ rails c
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version that created the lockfile by running `gem install bundler:2.3.26`.
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby, x86_64-linux but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
Loading development environment (Rails 7.0.4.1)
2.7.0 :001 > Killed
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:migrate
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version that created the lockfile by running `gem install bundler:2.3.26`.
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby, x86_64-linux but the 
-mswin32 x64-mingw32 java`.
=> Booting Puma
=> Rails 7.0.4.1 application starting in development 
A server is already running. Check /home/nancy/nancy/ror/blog_application/tmp/pids/server.pid.
Exiting
nancy@Nancy:~/nancy/ror/blog_application$ rails c
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version that created the lockfile by running `gem install bundler:2.3.26`.
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby, x86_64-linux but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
Loading development environment (Rails 7.0.4.1)
2.7.0 :001 > users = User.new()
Traceback (most recent call last):
(irb):1:in `<main>': uninitialized constant User (NameError)
Did you mean?  Users
2.7.0 :002 > users = Users.new()
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/connection_adapters/sqlite3_adapter.rb:387:in `table_structure': Could not find table 'users' (ActiveRecord::StatementInvalid)
2.7.0 :003 > simple = Simple.new()
Traceback (most recent call last):
(irb):3:in `<main>': uninitialized constant Simple (NameError)
2.7.0 :004 > Killed
nancy@Nancy:~/nancy/ror/blog_application$ 

