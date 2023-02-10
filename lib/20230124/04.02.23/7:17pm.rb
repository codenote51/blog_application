Using /home/nancy/.rvm/gems/ruby-2.7.0
nancy@Nancy:~/nancy/ror/blog_application$ rails c
at created the lockfile by running `gem install bundler:2.3.26`.
dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
2.7.0 :001 > order = order.create
(irb):1:in `<main>': undefined method `create' for nil:NilClass (NoMethodError)
2.7.0 :002 > order = Order.create
2.7.0 :003 > oorder.valid?(:account_setup)
(irb):3:in `<main>': undefined local variable or method `oorder' for main:Object (NameError)
Did you mean?  order
2.7.0 :004 > order.valid?(:account_setup)
  Order Exists? (0.2ms)  SELECT 1 AS one FROM "orders" WHERE "orders"."email" IS NULL LIMIT ?  [["LIMIT", 1]]
 => false 
2.7.0 :005 > order.errors.messages
 => {:name=>["can't be blank"], :lastname=>["can't be blank"]} 
2.7.0 :006 > order.errors
]> 
 => #<Order:0x0000562b6674ea40 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil, amount: nil, status: nil> 
 => #<ActiveModel::Errors [#<ActiveModel::Error attribute=name, type=blank, options={}>, #<ActiveModel::Error attribute=lastname, type=blank, options={}>]> 
 => ["Name can't be blank", "Lastname can't be blank"] 
2.7.0 :010 > order = Order.create(name: "nashdbfde", lastname: "sahshaash", email: "sdshada")
  TRANSACTION (0.1ms)  begin transaction
  Order Create (0.4ms)  INSERT INTO "orders" ("name", "lastname", "email", "created_at", "updated_at", "amount", "status") VALUES (?, ?, ?, ?, ?, ?, ?)  
5.850953"], ["amount", nil], ["status", nil]]
  TRANSACTION (7.0ms)  commit transaction
#<Order:0x0000562b66920508
... 
2.7.0 :011 > order.save
2.7.0 :012 > order.valid?
 => true 
2.7.0 :013 > reload!
Reloading...
 => true 
2.7.0 :014 > o = Order.create()
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `is_admin?' for #<Order:0x00007fdfb8463e40> (NoMethodError)
Did you mean?  is_a?
2.7.0 :015 > reload!
Reloading...
 => true 
2.7.0 :016 > o = Order.create()
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activesupport-7.0.4.1/lib/active_support/callbacks.rb:400:in `is_a?': wrong number of arguments (given 0, expected 1) (ArgumentError)
2.7.0 :017 > exit
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
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
nancy@Nancy:~/nancy/ror/blog_application$ git add  app/controllers/comments_controller.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "change comments"
[main d8b3694] change comments
 1 file changed, 1 insertion(+)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 423 bytes | 423.00 KiB/s, done.
Total 5 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   7f8e237..d8b3694  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
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
nancy@Nancy:~/nancy/ror/blog_application$ git add app/controllers/orders_controller.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added status"
[main 4016442] added status
 1 file changed, 1 insertion(+), 1 deletion(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push oringin main
fatal: 'oringin' does not appear to be a git repository
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 441 bytes | 441.00 KiB/s, done.
Total 5 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   d8b3694..4016442  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
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
nancy@Nancy:~/nancy/ror/blog_application$ git add app/models/article.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "include visible"
[main 91c25d9] include visible
 1 file changed, 2 insertions(+), 2 deletions(-)
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
   4016442..91c25d9  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
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
nancy@Nancy:~/nancy/ror/blog_application$ git add  app/models/comment.rb
nancy@Nancy:~/nancy/ror/blog_application$  app/models/comment.rb
bash: app/models/comment.rb: Permission denied
nancy@Nancy:~/nancy/ror/blog_application$ git add  app/models/comment.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "include visible"
[main 4ad7a96] include visible
 1 file changed, 1 insertion(+), 1 deletion(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 492 bytes | 492.00 KiB/s, done.
Total 5 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   91c25d9..4ad7a96  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ git add app/models/concerns/visible.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "include visible order & customers"
[main 292d1b7] include visible order & customers
 1 file changed, 2 insertions(+), 3 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 570 bytes | 570.00 KiB/s, done.
Total 6 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   4ad7a96..292d1b7  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
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
nancy@Nancy:~/nancy/ror/blog_application$ git add app/models/order.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove validates"
[main f080979] remove validates
 1 file changed, 6 insertions(+), 4 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 564 bytes | 564.00 KiB/s, done.
Total 5 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   292d1b7..f080979  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
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
nancy@Nancy:~/nancy/ror/blog_application$ git add app/views/articles/index.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "unless article"
[main 3e3bc16] unless article
 1 file changed, 3 insertions(+), 2 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 627 bytes | 627.00 KiB/s, done.
Total 6 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   f080979..3e3bc16  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
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
nancy@Nancy:~/nancy/ror/blog_application$ git add app/views/comments/_form.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added status"
[main 4acbef9] added status
 1 file changed, 1 insertion(+), 1 deletion(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 587 bytes | 587.00 KiB/s, done.
Total 6 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   3e3bc16..4acbef9  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
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
nancy@Nancy:~/nancy/ror/blog_application$ git add app/views/orders/edit.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "render action change"
[main 7e65cda] render action change
 1 file changed, 1 insertion(+), 1 deletion(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 500 bytes | 500.00 KiB/s, done.
Total 6 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   4acbef9..7e65cda  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git add app/views/orders/new.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m  "render action change"
[main f40238f] render action change
 1 file changed, 1 insertion(+), 1 deletion(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 496 bytes | 496.00 KiB/s, done.
Total 6 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   7e65cda..f40238f  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  deleted:    app/views/orders/_text.html.erb
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
nancy@Nancy:~/nancy/ror/blog_application$ git add app/views/orders/show.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "change render action"
[main 9924980] change render action
 1 file changed, 7 insertions(+)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 542 bytes | 542.00 KiB/s, done.
Total 6 (delta 5), reused 0 (delta 0)
remote: Resolving deltas: 100% (5/5), completed with 5 local objects.
To https://github.com/codenote51/blog_application.git
   f40238f..9924980  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  deleted:    app/views/orders/_text.html.erb
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
nancy@Nancy:~/nancy/ror/blog_application$ git add config/routes.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added resources :customers"
[main d459094] added resources :customers
 1 file changed, 3 insertions(+), 1 deletion(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 8 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 402 bytes | 402.00 KiB/s, done.
Total 4 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   9924980..d459094  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  deleted:    app/views/orders/_text.html.erb
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
nancy@Nancy:~/nancy/ror/blog_application$ git add db/schema.rb
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Everything up-to-date
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Everything up-to-date
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
remote: Permission to codenote51/blog_application.git denied to codenote51.
fatal: unable to access 'https://github.com/codenote51/blog_application.git/': The requested URL returned error: 403
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
  modified:   db/schema.rb

Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  deleted:    app/views/orders/_text.html.erb
  deleted:    db/migrate/20230123075001_create_articles.rb
  deleted:    db/migrate/20230123125050_create_comments.rb
  deleted:    db/migrate/20230123125156_add_status_to_articles.rb
  deleted:    db/migrate/20230123125157_add_status_to_comments.rb
  modified:   db/migrate/20230128143626_article.rb
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

nancy@Nancy:~/nancy/ror/blog_application$ git add db/migrate/20230128143626_article.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "add status"
[main 7be2b54] add status
 2 files changed, 19 insertions(+), 13 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
remote: Support for password authentication was removed on August 13, 2021.
remote: Please see https://docs.github.com/en/get-started/getting-started-with-git/about-remote-repositories#cloning-with-https-urls for information on currently recommended modes of authentication.
fatal: Authentication failed for 'https://github.com/codenote51/blog_application.git/'
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main 
Password for 'https://codenote51@github.com': 
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 586 bytes | 586.00 KiB/s, done.
Total 5 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   d459094..7be2b54  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ n

