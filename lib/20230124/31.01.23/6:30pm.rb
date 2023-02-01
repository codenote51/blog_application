nancy@Nancy:~/nancy/ror/blog_application$ rvm use ruby-2.7.0
Using /home/nancy/.rvm/gems/ruby-2.7.0
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/controllers/comments_controller.rb
  modified:   app/controllers/orders_controller.rb
  modified:   app/models/article.rb
  modified:   app/models/order.rb
  modified:   app/views/articles/show.html.erb
  modified:   app/views/orders/index.html.erb
  modified:   app/views/orders/new.html.erb
  modified:   app/views/orders/show.html.erb
  deleted:    db/migrate/20230123075001_create_articles.rb
  deleted:    db/migrate/20230123125050_create_comments.rb
  deleted:    db/migrate/20230123125156_add_status_to_articles.rb
  deleted:    db/migrate/20230123125157_add_status_to_comments.rb
  modified:   db/schema.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/models/persons.rb
  app/views/orders/_text.html.erb
  app/views/orders/edit.html.erb
  lib/20230124/30.01.23/6:31pm.rb
  lib/20230124/31.01.23/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git add  app/views/articles/show.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove debug"
[main a77a176] remove debug
 1 file changed, 1 insertion(+), 2 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 564 bytes | 564.00 KiB/s, done.
Total 6 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   d267309..a77a176  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk

^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/controllers/comments_controller.rb
  modified:   app/controllers/orders_controller.rb
  modified:   app/models/article.rb
  modified:   app/models/order.rb
  modified:   app/views/orders/index.html.erb
  modified:   app/views/orders/new.html.erb
  modified:   app/views/orders/show.html.erb
  deleted:    db/migrate/20230123075001_create_articles.rb
  deleted:    db/migrate/20230123125050_create_comments.rb
  deleted:    db/migrate/20230123125156_add_status_to_articles.rb
  deleted:    db/migrate/20230123125157_add_status_to_comments.rb
  modified:   db/schema.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/models/persons.rb
  app/views/orders/_text.html.erb
  app/views/orders/edit.html.erb
  lib/20230124/30.01.23/6:31pm.rb
  lib/20230124/31.01.23/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/controllers/comments_controller.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove create comment"
[main 2de70c3] remove create comment
 1 file changed, 1 insertion(+), 1 deletion(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 429 bytes | 429.00 KiB/s, done.
Total 5 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   a77a176..2de70c3  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/controllers/orders_controller.rb
  modified:   app/models/article.rb
  modified:   app/models/order.rb
  modified:   app/views/orders/index.html.erb
  modified:   app/views/orders/new.html.erb
  modified:   app/views/orders/show.html.erb
  deleted:    db/migrate/20230123075001_create_articles.rb
  deleted:    db/migrate/20230123125050_create_comments.rb
  deleted:    db/migrate/20230123125156_add_status_to_articles.rb
  deleted:    db/migrate/20230123125157_add_status_to_comments.rb
  modified:   db/schema.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/views/orders/_text.html.erb
  app/views/orders/edit.html.erb
  lib/20230124/30.01.23/6:31pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ rails c
at created the lockfile by running `gem install bundler:2.3.26`.
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby, x86_64-linux but the 
-mswin32 x64-mingw32 java`.
Loading development environment (Rails 7.0.4.1)
2.7.0 :001 > o = Order.create(name: "").valid?
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `email_confirma
2.7.0 :002 > Order.create(name: "").valid?
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `email_confirmation' for #<Order:0x000055f98692d940> (NoMethodError)
Traceback (most recent call last):
tion' for #<Order:0x000055f986af0368> (NoMethodError)
2.7.0 :004 > Topic.create(title: "").valid?
Traceback (most recent call last):
(irb):4:in `<main>': uninitialized constant Topic (NameError)
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `email_confirmation' for #<Order:0x00007f73f87c3a30> (NoMethodError)
 => #<Order:0x000055f98642bb68 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
Traceback (most recent call last):
Class:0x000055f9866085d0> (NoMethodError)
Did you mean?  validate
2.7.0 :008 > Article.new()
2.7.0 :009 > Article.valid?
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `valid?' for #<
Did you mean?  validate
Traceback (most recent call last):
Class:0x000055f985898f30> (NoMethodError)
2.7.0 :011 > order = Order.new()
 => #<Order:0x000055f98642f128 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
 => #<Order:0x000055f985dd7730 id: nil, name: "nancy", lastname: "kushwah", email: "nancy9ku@gmail.com", created_at: nil, updated_at: nil> 
2.7.0 :013 > order.save
Traceback (most recent call last):
tion' for #<Order:0x000055f985dd7730> (NoMethodError)
2.7.0 :014 > order.save
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `email_confirmation' for #<Order:0x000055f985dd7730> (NoMethodError)
2.7.0 :015 > o = Order.new()
 => #<Order:0x000055f9867b8d80 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
2.7.0 :016 > o =  Order.new(name: "nancy", lastname: "kushwah", email: "nancy9ku@gmail.com")
 => #<Order:0x000055f9863d4340 id: nil, name: "nancy", lastname: "kushwah", email: "nancy9ku@gmail.com", created_at: nil, updated_at: nil> 
2.7.0 :017 > o.save
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `email_confirmation' for #<Order:0x000055f9863d4340> (NoMethodError)
2.7.0 :018 > o.valid?(:account_setup)
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `email_confirmation' for #<Order:0x000055f9863d4340> (NoMethodError)
2.7.0 :019 > o.valid?(:account_setup)
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activemodel-7.0.4.1/lib/active_model/attribute_methods.rb:458:in `method_missing': undefined method `email_confirmation' for #<Order:0x000055f9863d4340> (NoMethodError)
2.7.0 :020 > 

