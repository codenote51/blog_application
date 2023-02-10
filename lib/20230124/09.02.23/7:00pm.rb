nancy@Nancy:~/nancy/ror/blog_application$ rvm use ruby-2.7.0
Using /home/nancy/.rvm/gems/ruby-2.7.0
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   Gemfile.lock
  modified:   app/controllers/orders_controller.rb
  modified:   app/models/order.rb
  modified:   app/views/articles/show.html.erb
  modified:   app/views/layouts/application.html.erb
  deleted:    app/views/orders/_text.html.erb
  modified:   app/views/orders/index.html.erb
  modified:   app/views/orders/show.html.erb
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
  0.0181s
  0.0184s
  app/controllers/banks_controller.rb
  app/controllers/customers_controller.rb
  app/controllers/transactions_controller.rb
  app/helpers/customers_helper.rb
  app/helpers/transactions_helper.rb
  app/models/bank.rb
  app/models/customer.rb
  app/models/transaction.rb
  app/views/banks/
  app/views/customers/
  app/views/layouts/_header.html.erb
  app/views/layouts/banks.html.erb
  app/views/layouts/special.html.erb
  app/views/orders/_form.html.erb
  app/views/transactions/
  db/migrate/20230202112829_create_customers.rb
  db/migrate/20230203062252_add_status_to_articles.rb
  db/migrate/20230203062254_add_status_to_comments.rb
  db/migrate/20230203081218_add_status_to_order.rb
  db/migrate/20230203081318_add_status_to_customer.rb
  db/migrate/20230203165855_create_banks.rb
  db/migrate/20230208102652_create_transactions.rb
  def
  end
  exit
  lib/20230124/01.02.23/5:30pm.rb
  lib/20230124/04.02.23/
  lib/20230124/09.02.23/
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add ^C
nancy@Nancy:~/nancy/ror/blog_application$ git add Gemfile.lock
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added gemfile.lock"
[main 925d071] added gemfile.lock
 1 file changed, 5 insertions(+)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 8 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 370 bytes | 370.00 KiB/s, done.
Total 3 (delta 2), reused 0 (delta 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To https://github.com/codenote51/blog_application.git
   edbac17..925d071  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/controllers/orders_controller.rb
  modified:   app/models/order.rb
  modified:   app/views/articles/show.html.erb
  modified:   app/views/layouts/application.html.erb
  deleted:    app/views/orders/_text.html.erb
  modified:   app/views/orders/index.html.erb
  modified:   app/views/orders/show.html.erb
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
  0.0181s
  0.0184s
  app/controllers/banks_controller.rb
  app/controllers/customers_controller.rb
  app/controllers/transactions_controller.rb
  app/helpers/customers_helper.rb
  app/helpers/transactions_helper.rb
  app/models/bank.rb
  app/models/customer.rb
  app/models/transaction.rb
  app/views/banks/
  app/views/customers/
  app/views/layouts/_header.html.erb
  app/views/layouts/banks.html.erb
  app/views/layouts/special.html.erb
  app/views/orders/_form.html.erb
  app/views/transactions/
  db/migrate/20230202112829_create_customers.rb
  db/migrate/20230203062252_add_status_to_articles.rb
  db/migrate/20230203062254_add_status_to_comments.rb
  db/migrate/20230203081218_add_status_to_order.rb
  db/migrate/20230203081318_add_status_to_customer.rb
  db/migrate/20230203165855_create_banks.rb
  db/migrate/20230208102652_create_transactions.rb
  def
  end
  exit
  lib/20230124/01.02.23/5:30pm.rb
  lib/20230124/04.02.23/
  lib/20230124/09.02.23/
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add  app/controllers/orders_controller.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove layouts "
[main 5087f41] remove layouts
 1 file changed, 4 insertions(+), 1 deletion(-)
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
   925d071..5087f41  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/models/order.rb
  modified:   app/views/articles/show.html.erb
  modified:   app/views/layouts/application.html.erb
  deleted:    app/views/orders/_text.html.erb
  modified:   app/views/orders/index.html.erb
  modified:   app/views/orders/show.html.erb
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
  0.0181s
  0.0184s
  app/controllers/banks_controller.rb
  app/controllers/customers_controller.rb
  app/controllers/transactions_controller.rb
  app/helpers/customers_helper.rb
  app/helpers/transactions_helper.rb
  app/models/bank.rb
  app/models/customer.rb
  app/models/transaction.rb
  app/views/banks/
  app/views/customers/
  app/views/layouts/_header.html.erb
  app/views/layouts/banks.html.erb
  app/views/layouts/special.html.erb
  app/views/orders/_form.html.erb
  app/views/transactions/
  db/migrate/20230202112829_create_customers.rb
  db/migrate/20230203062252_add_status_to_articles.rb
  db/migrate/20230203062254_add_status_to_comments.rb
  db/migrate/20230203081218_add_status_to_order.rb
  db/migrate/20230203081318_add_status_to_customer.rb
  db/migrate/20230203165855_create_banks.rb
  db/migrate/20230208102652_create_transactions.rb
  def
  end
  exit
  lib/20230124/01.02.23/5:30pm.rb
  lib/20230124/04.02.23/
  lib/20230124/09.02.23/
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add  app/models/order.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove the locking column"
[main 9fb48a3] remove the locking column
 1 file changed, 6 insertions(+), 2 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git pus origin main
git: 'pus' is not a git command. See 'git --help'.

The most similar commands are
  push
  pull
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 584 bytes | 584.00 KiB/s, done.
Total 5 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   5087f41..9fb48a3  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git add  app/views/articles/show.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git add "fix indecation"
fatal: pathspec 'fix indecation' did not match any files
nancy@Nancy:~/nancy/ror/blog_application$ git commit "fix indecation"
error: pathspec 'fix indecation' did not match any file(s) known to git
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "fix indentation"
[main 474acfd] fix indentation
 1 file changed, 1 insertion(+), 6 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 556 bytes | 556.00 KiB/s, done.
Total 6 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   9fb48a3..474acfd  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/layouts/application.html.erb
  deleted:    app/views/orders/_text.html.erb
  modified:   app/views/orders/index.html.erb
  modified:   app/views/orders/show.html.erb
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
  0.0181s
  0.0184s
  app/controllers/banks_controller.rb
  app/controllers/customers_controller.rb
  app/controllers/transactions_controller.rb
  app/helpers/customers_helper.rb
  app/helpers/transactions_helper.rb
  app/models/bank.rb
  app/models/customer.rb
  app/models/transaction.rb
  app/views/banks/
  app/views/customers/
  app/views/layouts/_header.html.erb
  app/views/layouts/banks.html.erb
  app/views/layouts/special.html.erb
  app/views/orders/_form.html.erb
  app/views/transactions/
  db/migrate/20230202112829_create_customers.rb
  db/migrate/20230203062252_add_status_to_articles.rb
  db/migrate/20230203062254_add_status_to_comments.rb
  db/migrate/20230203081218_add_status_to_order.rb
  db/migrate/20230203081318_add_status_to_customer.rb
  db/migrate/20230203165855_create_banks.rb
  db/migrate/20230208102652_create_transactions.rb
  def
  end
  exit
  lib/20230124/01.02.23/5:30pm.rb
  lib/20230124/04.02.23/
  lib/20230124/09.02.23/
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/views/layouts/application.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove the heding tag"
[main b4885ba] remove the heding tag
 1 file changed, 1 deletion(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 561 bytes | 561.00 KiB/s, done.
Total 6 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   474acfd..b4885ba  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  deleted:    app/views/orders/_text.html.erb
  modified:   app/views/orders/index.html.erb
  modified:   app/views/orders/show.html.erb
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
  0.0181s
  0.0184s
  app/controllers/banks_controller.rb
  app/controllers/customers_controller.rb
  app/controllers/transactions_controller.rb
  app/helpers/customers_helper.rb
  app/helpers/transactions_helper.rb
  app/models/bank.rb
  app/models/customer.rb
  app/models/transaction.rb
  app/views/banks/
  app/views/customers/
  app/views/layouts/_header.html.erb
  app/views/layouts/banks.html.erb
  app/views/layouts/special.html.erb
  app/views/orders/_form.html.erb
  app/views/transactions/
  db/migrate/20230202112829_create_customers.rb
  db/migrate/20230203062252_add_status_to_articles.rb
  db/migrate/20230203062254_add_status_to_comments.rb
  db/migrate/20230203081218_add_status_to_order.rb
  db/migrate/20230203081318_add_status_to_customer.rb
  db/migrate/20230203165855_create_banks.rb
  db/migrate/20230208102652_create_transactions.rb
  def
  end
  exit
  lib/20230124/01.02.23/5:30pm.rb
  lib/20230124/04.02.23/
  lib/20230124/09.02.23/
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add  app/views/orders/index.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove render"
[main 757b132] remove render
 1 file changed, 15 insertions(+), 13 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
remote: Invalid username or password.
fatal: Authentication failed for 'https://github.com/codenote51/blog_application.git/'
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
remote: Invalid username or password.
fatal: Authentication failed for 'https://github.com/codenote51/blog_application.git/'
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 532 bytes | 532.00 KiB/s, done.
Total 6 (delta 5), reused 0 (delta 0)
remote: Resolving deltas: 100% (5/5), completed with 5 local objects.
To https://github.com/codenote51/blog_application.git
   b4885ba..757b132  main -> main
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
  modified:   db/schema.rb
  deleted:    lib/20230124/6:02pm.rb
  deleted:    lib/20230124/6:6pm.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  0.0181s
  0.0184s
  app/controllers/banks_controller.rb
  app/controllers/customers_controller.rb
  app/controllers/transactions_controller.rb
  app/helpers/customers_helper.rb
  app/helpers/transactions_helper.rb
  app/models/bank.rb
  app/models/customer.rb
  app/models/transaction.rb
  app/views/banks/
  app/views/customers/
  app/views/layouts/_header.html.erb
  app/views/layouts/banks.html.erb
  app/views/layouts/special.html.erb
  app/views/orders/_form.html.erb
  app/views/transactions/
  db/migrate/20230202112829_create_customers.rb
  db/migrate/20230203062252_add_status_to_articles.rb
  db/migrate/20230203062254_add_status_to_comments.rb
  db/migrate/20230203081218_add_status_to_order.rb
  db/migrate/20230203081318_add_status_to_customer.rb
  db/migrate/20230203165855_create_banks.rb
  db/migrate/20230208102652_create_transactions.rb
  def
  end
  exit
  lib/20230124/01.02.23/5:30pm.rb
  lib/20230124/04.02.23/
  lib/20230124/09.02.23/
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/controllers/banks_controller.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove the layouts tag"
[main 24f40e4] remove the layouts tag
 1 file changed, 62 insertions(+)
 create mode 100644 app/controllers/banks_controller.rb
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 8, done.
Counting objects: 100% (8/8), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 791 bytes | 791.00 KiB/s, done.
Total 5 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   757b132..24f40e4  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
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
  modified:   db/schema.rb
  deleted:    lib/20230124/6:02pm.rb
  deleted:    lib/20230124/6:6pm.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  0.0181s
  0.0184s
  app/controllers/customers_controller.rb
  app/controllers/transactions_controller.rb
  app/helpers/customers_helper.rb
  app/helpers/transactions_helper.rb
  app/models/bank.rb
  app/models/customer.rb
  app/models/transaction.rb
  app/views/banks/
  app/views/customers/
  app/views/layouts/_header.html.erb
  app/views/layouts/banks.html.erb
  app/views/layouts/special.html.erb
  app/views/orders/_form.html.erb
  app/views/transactions/
  db/migrate/20230202112829_create_customers.rb
  db/migrate/20230203062252_add_status_to_articles.rb
  db/migrate/20230203062254_add_status_to_comments.rb
  db/migrate/20230203081218_add_status_to_order.rb
  db/migrate/20230203081318_add_status_to_customer.rb
  db/migrate/20230203165855_create_banks.rb
  db/migrate/20230208102652_create_transactions.rb
  def
  end
  exit
  lib/20230124/01.02.23/5:30pm.rb
  lib/20230124/04.02.23/
  lib/20230124/09.02.23/
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/views/orders/show.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "renove render action"
[main 30273b2] renove render action
 1 file changed, 3 insertions(+), 7 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 498 bytes | 498.00 KiB/s, done.
Total 6 (delta 5), reused 0 (delta 0)
remote: Resolving deltas: 100% (5/5), completed with 5 local objects.
To https://github.com/codenote51/blog_application.git
   24f40e4..30273b2  main -> main
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
  modified:   db/schema.rb
  deleted:    lib/20230124/6:02pm.rb
  deleted:    lib/20230124/6:6pm.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  0.0181s
  0.0184s
  app/controllers/customers_controller.rb
  app/controllers/transactions_controller.rb
  app/helpers/customers_helper.rb
  app/helpers/transactions_helper.rb
  app/models/bank.rb
  app/models/customer.rb
  app/models/transaction.rb
  app/views/banks/
  app/views/customers/
  app/views/layouts/_header.html.erb
  app/views/layouts/banks.html.erb
  app/views/layouts/special.html.erb
  app/views/orders/_form.html.erb
  app/views/transactions/
  db/migrate/20230202112829_create_customers.rb
  db/migrate/20230203062252_add_status_to_articles.rb
  db/migrate/20230203062254_add_status_to_comments.rb
  db/migrate/20230203081218_add_status_to_order.rb
  db/migrate/20230203081318_add_status_to_customer.rb
  db/migrate/20230203165855_create_banks.rb
  db/migrate/20230208102652_create_transactions.rb
  def
  end
  exit
  lib/20230124/01.02.23/5:30pm.rb
  lib/20230124/04.02.23/
  lib/20230124/09.02.23/
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add  config/routes.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove action"
[main b386bd4] remove action
 1 file changed, 8 insertions(+), 6 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin  main
Password for 'https://codenote51@github.com': 
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 8 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 409 bytes | 409.00 KiB/s, done.
Total 4 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   30273b2..b386bd4  main -> main
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
  modified:   db/schema.rb
  deleted:    lib/20230124/6:02pm.rb
  deleted:    lib/20230124/6:6pm.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  0.0181s
  0.0184s
  app/controllers/customers_controller.rb
  app/controllers/transactions_controller.rb
  app/helpers/customers_helper.rb
  app/helpers/transactions_helper.rb
  app/models/bank.rb
  app/models/customer.rb
  app/models/transaction.rb
  app/views/banks/
  app/views/customers/
  app/views/layouts/_header.html.erb
  app/views/layouts/banks.html.erb
  app/views/layouts/special.html.erb
  app/views/orders/_form.html.erb
  app/views/transactions/
  db/migrate/20230202112829_create_customers.rb
  db/migrate/20230203062252_add_status_to_articles.rb
  db/migrate/20230203062254_add_status_to_comments.rb
  db/migrate/20230203081218_add_status_to_order.rb
  db/migrate/20230203081318_add_status_to_customer.rb
  db/migrate/20230203165855_create_banks.rb
  db/migrate/20230208102652_create_transactions.rb
  def
  end
  exit
  lib/20230124/01.02.23/5:30pm.rb
  lib/20230124/04.02.23/
  lib/20230124/09.02.23/
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/views/layouts/banks.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added heading tag"
[main aeae274] added heading tag
 1 file changed, 18 insertions(+)
 create mode 100644 app/views/layouts/banks.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 10, done.
Counting objects: 100% (10/10), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 774 bytes | 774.00 KiB/s, done.
Total 6 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   b386bd4..aeae274  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ 

