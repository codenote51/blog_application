nancy@Nancy:~$ rvm use ruby-2.7.0
Using /home/nancy/.rvm/gems/ruby-2.7.0
nancy@Nancy:~$ cd /home/nancy/nancy/ror/blog_application/
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:migrate
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails generate migration CreateJoinTableCustomerProduct customer product
      invoke  active_record
      create    db/migrate/20230130100319_create_join_table_customer_product.rb
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:migrate
== 20230130100319 CreateJoinTableCustomerProduct: migrating ===================
-- create_join_table(:customers, :products)
   -> 0.0048s
== 20230130100319 CreateJoinTableCustomerProduct: migrated (0.0049s) ==========

nancy@Nancy:~/nancy/ror/blog_application$ rails c
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version that created the lockfile by running `gem install bundler:2.3.26`.
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby, x86_64-linux but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
Loading development environment (Rails 7.0.4.1)
2.7.0 :001 > cust = Customer.new()
Traceback (most recent call last):
(irb):1:in `<main>': uninitialized constant Customer (NameError)
2.7.0 :002 > product = Product.new()
Traceback (most recent call last):
(irb):2:in `<main>': uninitialized constant Product (NameError)
Did you mean?  Proc
2.7.0 :003 > Killed
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/models/concerns/visible.rb
  deleted:    db/migrate/20230123075001_create_articles.rb
  deleted:    db/migrate/20230123125050_create_comments.rb
  deleted:    db/migrate/20230123125156_add_status_to_articles.rb
  deleted:    db/migrate/20230123125157_add_status_to_comments.rb
  modified:   db/schema.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/controllers/orders_controller.rb
  app/models/order.rb
  app/views/orders/
  db/migrate/20230128143626_article.rb
  db/migrate/20230130054701_comment.rb
  db/migrate/20230130072444_order.rb
  lib/20230124/30.01.23/
  lib/20230124/6:6pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/models/concerns/visible.rb
  deleted:    db/migrate/20230123075001_create_articles.rb
  deleted:    db/migrate/20230123125050_create_comments.rb
  deleted:    db/migrate/20230123125156_add_status_to_articles.rb
  deleted:    db/migrate/20230123125157_add_status_to_comments.rb
  modified:   db/schema.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/controllers/orders_controller.rb
  app/models/order.rb
  app/views/orders/
  db/migrate/20230128143626_article.rb
  db/migrate/20230130054701_comment.rb
  db/migrate/20230130072444_order.rb
  lib/20230124/30.01.23/
  lib/20230124/6:6pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add   app/models/concerns/visible.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added public"
[main d3f5673] added public
 1 file changed, 1 insertion(+)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 18, done.
Counting objects: 100% (18/18), done.
Delta compression using up to 8 threads
Compressing objects: 100% (11/11), done.
Writing objects: 100% (11/11), 940 bytes | 940.00 KiB/s, done.
Total 11 (delta 8), reused 0 (delta 0)
remote: Resolving deltas: 100% (8/8), completed with 6 local objects.
To https://github.com/codenote51/blog_application.git
   68eb1dd..d3f5673  main -> main
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
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/controllers/orders_controller.rb
  app/models/order.rb
  app/views/orders/
  db/migrate/20230128143626_article.rb
  db/migrate/20230130054701_comment.rb
  db/migrate/20230130072444_order.rb
  lib/20230124/30.01.23/
  lib/20230124/6:6pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add db/schema.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit "migrate order"
error: pathspec 'migrate order' did not match any file(s) known to git
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "migrate order"
[main e42a495] migrate order
 1 file changed, 9 insertions(+), 3 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 8 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 489 bytes | 489.00 KiB/s, done.
Total 4 (delta 2), reused 0 (delta 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To https://github.com/codenote51/blog_application.git
   d3f5673..e42a495  main -> main
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
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/controllers/orders_controller.rb
  app/models/order.rb
  app/views/orders/
  db/migrate/20230128143626_article.rb
  db/migrate/20230130054701_comment.rb
  db/migrate/20230130072444_order.rb
  lib/20230124/30.01.23/
  lib/20230124/6:6pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/controllers/orders_controller.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added new method"
[main 8a1d254] added new method
 1 file changed, 14 insertions(+)
 create mode 100644 app/controllers/orders_controller.rb
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 8, done.
Counting objects: 100% (8/8), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 550 bytes | 550.00 KiB/s, done.
Total 5 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   e42a495..8a1d254  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ rails g migration Example
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version that created the lockfile by running `gem install bundler:2.3.26`.
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby, x86_64-linux but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
      invoke  active_record
      create    db/migrate/20230130111029_example.rb
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:migrate
rails aborted!
SyntaxError: /home/nancy/nancy/ror/blog_application/db/migrate/20230130111029_example.rb:22: syntax error, unexpected end-of-input, expecting `end'

Tasks: TOP => db:migrate
(See full trace by running task with --trace)
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:migrate
== 20230130111029 Example: migrating ==========================================
== 20230130111029 Example: migrated (0.0000s) =================================

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
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/models/order.rb
  app/views/orders/
  db/migrate/20230128143626_article.rb
  db/migrate/20230130054701_comment.rb
  db/migrate/20230130072444_order.rb
  lib/20230124/30.01.23/
  lib/20230124/6:6pm.rb
no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails generate migration Emple
      create    db/migrate/20230130121058_emple.rb
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:migrate
untaint
until
untrace_var
untrust
untrusted?
users
using
warn
when
whereami
while
with_options
with_warnings
workspaces
y
yield
yield_self
zeitwerk_original_require
2.7.0 :003 > 
2.7.0 :003 > 


















2.7.0 :003 > 
^C
2.7.0 :003 > 
^C
2.7.0 :003 > Killed
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
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/models/order.rb
  app/views/orders/
  db/migrate/20230128143626_article.rb
  db/migrate/20230130054701_comment.rb
  db/migrate/20230130072444_order.rb
  lib/20230124/30.01.23/
  lib/20230124/6:6pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add  db/schema.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove migrate"
[main 17c6e9f] remove migrate
 1 file changed, 32 insertions(+), 1 deletion(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 8 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 697 bytes | 697.00 KiB/s, done.
Total 4 (delta 2), reused 0 (delta 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To https://github.com/codenote51/blog_application.git
   8a1d254..17c6e9f  main -> main
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
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/models/order.rb
  app/views/orders/
  db/migrate/20230128143626_article.rb
  db/migrate/20230130054701_comment.rb
  db/migrate/20230130072444_order.rb
  lib/20230124/30.01.23/
  lib/20230124/6:6pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/models/order.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added validates"
[main 13a134a] added validates
 1 file changed, 6 insertions(+)
 create mode 100644 app/models/order.rb
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 8, done.
Counting objects: 100% (8/8), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 514 bytes | 514.00 KiB/s, done.
Total 5 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   17c6e9f..13a134a  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  deleted:    db/migrate/20230123075001_create_articles.rb
  deleted:    db/migrate/20230123125050_create_comments.rb
  deleted:    db/migrate/20230123125156_add_status_to_articles.rb
  deleted:    db/migrate/20230123125157_add_status_to_comments.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/views/orders/
  db/migrate/20230128143626_article.rb
  db/migrate/20230130054701_comment.rb
  db/migrate/20230130072444_order.rb
  lib/20230124/30.01.23/
  lib/20230124/6:6pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/views/orders/
nancy@Nancy:~/nancy/ror/blog_application$ git add db/migrate/20230128143626_article.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added new record'
> ^C
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added new record"
[main e0cb9ed] added new record
 4 files changed, 53 insertions(+)
 create mode 100644 app/views/orders/index.html.erb
 create mode 100644 app/views/orders/new.html.erb
 create mode 100644 app/views/orders/show.html.erb
 create mode 100644 db/migrate/20230128143626_article.rb
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 16, done.
Counting objects: 100% (16/16), done.
Delta compression using up to 8 threads
Compressing objects: 100% (11/11), done.
Writing objects: 100% (11/11), 1.18 KiB | 602.00 KiB/s, done.
Total 11 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   13a134a..e0cb9ed  main -> main
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
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  db/migrate/20230130054701_comment.rb
  db/migrate/20230130072444_order.rb
  lib/20230124/30.01.23/
  lib/20230124/6:6pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add db/migrate/20230130054701_comment.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added new record"
[main 8002ee3] added new record
 1 file changed, 11 insertions(+)
 create mode 100644 db/migrate/20230130054701_comment.rb
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 8, done.
Counting objects: 100% (8/8), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 631 bytes | 631.00 KiB/s, done.
Total 5 (delta 2), reused 0 (delta 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To https://github.com/codenote51/blog_application.git
   e0cb9ed..8002ee3  main -> main
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
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  db/migrate/20230130072444_order.rb
  lib/20230124/30.01.23/
  lib/20230124/6:6pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add db/migrate/20230130072444_order.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added record"
[main 445be35] added record
 1 file changed, 11 insertions(+)
 create mode 100644 db/migrate/20230130072444_order.rb
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 8, done.
Counting objects: 100% (8/8), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 594 bytes | 594.00 KiB/s, done.
Total 5 (delta 2), reused 0 (delta 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To https://github.com/codenote51/blog_application.git
   8002ee3..445be35  main -> main
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
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  lib/20230124/30.01.23/
  lib/20230124/6:6pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ mn_null :products, :name, false
mn_null: command not found
nancy@Nancy:~/nancy/ror/blog_application$ git add 
db/  lib/ 
nancy@Nancy:~/nancy/ror/blog_application$ git add lib/20230124/30.01.23/ 
db/  lib/ 
nancy@Nancy:~/nancy/ror/blog_application$ git add lib/20230124/30.01.23/ lib/20230124/6:6pm.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "rails & git practice"
[main d267309] rails & git practice
 3 files changed, 569 insertions(+)
 create mode 100644 lib/20230124/30.01.23/12:49pm.rb
 create mode 100644 lib/20230124/30.01.23/1:17pm.rb
 create mode 100644 lib/20230124/6:6pm.rb
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 10, done.
Counting objects: 100% (10/10), done.
Delta compression using up to 8 threads
Compressing objects: 100% (7/7), done.
Writing objects: 100% (7/7), 4.47 KiB | 2.23 MiB/s, done.
Total 7 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 2 local objects.
To https://github.com/codenote51/blog_application.git
   445be35..d267309  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ 

