nancy@Nancy:~/nancy/ror/blog_application$ cd .
nancy@Nancy:~/nancy/ror/blog_application$ gitk
nancy@Nancy:~/nancy/ror/blog_application$ cd .
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   Gemfile
  modified:   app/assets/stylesheets/application.css
  modified:   app/controllers/banks_controller.rb
  modified:   app/views/layouts/banks.html.erb
  deleted:    app/views/orders/_text.html.erb
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
  0.0181s
  0.0184s
  app/assets/javascript/
  app/assets/stylesheets/main.css
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
  lib/20230124/31.01.23/4:10pm.erb
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git branch 
* main
nancy@Nancy:~/nancy/ror/blog_application$ ps -aef | grep 3000
nancy      20989   10981  2 16:17 pts/0    00:00:02 puma 5.6.5 (tcp://localhost:3000) [blog_application]
nancy      21157   19589  0 16:19 pts/2    00:00:00 grep --color=auto 3000
nancy@Nancy:~/nancy/ror/blog_application$ kill -9 20989
nancy@Nancy:~/nancy/ror/blog_application$ ps -aef | grep 3000
nancy      21607   10981  0 16:21 pts/0    00:00:02 puma 5.6.5 (tcp://localhost:3000) [blog_application]
nancy      21840   19589  0 16:30 pts/2    00:00:00 grep --color=auto 3000
nancy@Nancy:~/nancy/ror/blog_application$ kill -9 21607
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   Gemfile
  modified:   app/assets/stylesheets/application.css
  modified:   app/controllers/banks_controller.rb
  modified:   app/views/layouts/banks.html.erb
  deleted:    app/views/orders/_text.html.erb
  modified:   app/views/orders/show.html.erb
  modified:   config/initializers/assets.rb
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
  app/assets/images/PK.jpg
  app/assets/images/download.jpeg
  app/assets/images/rails.png
  app/assets/javascript/
  app/assets/stylesheets/main.css
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
  lib/20230124/31.01.23/4:10pm.erb
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add  Gemfile
nancy@Nancy:~/nancy/ror/blog_application$ git commit  -m "comment pry"
[main e3c42a4] comment pry
 1 file changed, 1 insertion(+), 1 deletion(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 8 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 298 bytes | 298.00 KiB/s, done.
Total 3 (delta 2), reused 0 (delta 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To https://github.com/codenote51/blog_application.git
   aeae274..e3c42a4  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/assets/stylesheets/application.css
  modified:   app/controllers/banks_controller.rb
  modified:   app/views/layouts/banks.html.erb
  deleted:    app/views/orders/_text.html.erb
  modified:   app/views/orders/show.html.erb
  modified:   config/initializers/assets.rb
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
  app/assets/images/PK.jpg
  app/assets/images/download.jpeg
  app/assets/images/rails.png
  app/assets/javascript/
  app/assets/stylesheets/main.css
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
  lib/20230124/31.01.23/4:10pm.erb
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add ^C
nancy@Nancy:~/nancy/ror/blog_application$ git add app/assets/stylesheets/application.css
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added stylesheets file"
[main ba6d842] added stylesheets file
 1 file changed, 2 insertions(+)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (6/6), 484 bytes | 484.00 KiB/s, done.
Total 6 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   e3c42a4..ba6d842  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/controllers/banks_controller.rb
  modified:   app/views/layouts/banks.html.erb
  deleted:    app/views/orders/_text.html.erb
  modified:   app/views/orders/show.html.erb
  modified:   config/initializers/assets.rb
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
  app/assets/images/PK.jpg
  app/assets/images/download.jpeg
  app/assets/images/rails.png
  app/assets/javascript/
  app/assets/stylesheets/main.css
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
  lib/20230124/31.01.23/4:10pm.erb
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/controllers/banks_controller.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove layout"
[main fc4e914] remove layout
 1 file changed, 7 insertions(+), 13 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 501 bytes | 501.00 KiB/s, done.
Total 5 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   ba6d842..fc4e914  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/layouts/banks.html.erb
  deleted:    app/views/orders/_text.html.erb
  modified:   app/views/orders/show.html.erb
  modified:   config/initializers/assets.rb
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
  app/assets/images/PK.jpg
  app/assets/images/download.jpeg
  app/assets/images/rails.png
  app/assets/javascript/
  app/assets/stylesheets/main.css
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
  lib/20230124/31.01.23/4:10pm.erb
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add  app/views/layouts/banks.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added image tag"
[main ff97e67] added image tag
 1 file changed, 6 insertions(+), 4 deletions(-)
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
remote: Invalid username or password.
fatal: Authentication failed for 'https://github.com/codenote51/blog_application.git/'
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 726 bytes | 726.00 KiB/s, done.
Total 6 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   fc4e914..ff97e67  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/layouts/banks.html.erb
  deleted:    app/views/orders/_text.html.erb
  modified:   app/views/orders/show.html.erb
  modified:   config/initializers/assets.rb
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
  app/assets/images/PK.jpg
  app/assets/images/download.jpeg
  app/assets/images/rails.png
  app/assets/javascript/
  app/assets/stylesheets/main.css
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
  lib/20230124/31.01.23/4:10pm.erb
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add  app/views/orders/show.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove bank action"
[main a54a9a6] remove bank action
 1 file changed, 1 insertion(+), 1 deletion(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 490 bytes | 490.00 KiB/s, done.
Total 6 (delta 5), reused 0 (delta 0)
remote: Resolving deltas: 100% (5/5), completed with 5 local objects.
To https://github.com/codenote51/blog_application.git
   ff97e67..a54a9a6  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/layouts/banks.html.erb
  deleted:    app/views/orders/_text.html.erb
  modified:   config/initializers/assets.rb
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
  app/assets/images/PK.jpg
  app/assets/images/download.jpeg
  app/assets/images/rails.png
  app/assets/javascript/
  app/assets/stylesheets/main.css
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
  lib/20230124/31.01.23/4:10pm.erb
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add config/initializers/assets.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added js & css action"
[main 9dddff3] added js & css action
 1 file changed, 3 insertions(+), 1 deletion(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 474 bytes | 474.00 KiB/s, done.
Total 5 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   a54a9a6..9dddff3  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/layouts/banks.html.erb
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
  app/assets/images/PK.jpg
  app/assets/images/download.jpeg
  app/assets/images/rails.png
  app/assets/javascript/
  app/assets/stylesheets/main.css
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
  lib/20230124/31.01.23/4:10pm.erb
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/assets/images/PK.jpg
nancy@Nancy:~/nancy/ror/blog_application$ git add app/assets/images/download.jpeg app/assets/images/rails.png 
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added images"
[main 4460af9] added images
 3 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 app/assets/images/PK.jpg
 create mode 100644 app/assets/images/download.jpeg
 create mode 100644 app/assets/images/rails.png
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 12, done.
Counting objects: 100% (12/12), done.
Delta compression using up to 8 threads
Compressing objects: 100% (8/8), done.
Writing objects: 100% (8/8), 37.76 KiB | 9.44 MiB/s, done.
Total 8 (delta 2), reused 0 (delta 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To https://github.com/codenote51/blog_application.git
   9dddff3..4460af9  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/layouts/banks.html.erb
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
  app/assets/javascript/
  app/assets/stylesheets/main.css
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
  lib/20230124/31.01.23/4:10pm.erb
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/assets/javascript/
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added js file"
[main 9fb3611] added js file
 3 files changed, 7 insertions(+)
 create mode 100644 app/assets/javascript/application.js
 create mode 100644 app/assets/javascript/columns.js
 create mode 100644 app/assets/javascript/main.js
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (8/8), 701 bytes | 701.00 KiB/s, done.
Total 8 (delta 2), reused 0 (delta 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To https://github.com/codenote51/blog_application.git
   4460af9..9fb3611  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/layouts/banks.html.erb
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
  app/assets/stylesheets/main.css
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
  lib/20230124/31.01.23/4:10pm.erb
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/assets/stylesheets/main.css
nancy@Nancy:~/nancy/ror/blog_application$ git push commit -m "tages style"
error: unknown switch `m'
usage: git push [<options>] [<repository> [<refspec>...]]

    -v, --verbose         be more verbose
    -q, --quiet           be more quiet
    --repo <repository>   repository
    --all                 push all refs
    --mirror              mirror all refs
    -d, --delete          delete refs
    --tags                push tags (can't be used with --all or --mirror)
    -n, --dry-run         dry run
    --porcelain           machine-readable output
    -f, --force           force updates
    --force-with-lease[=<refname>:<expect>]
                          require old value of ref to be at this value
    --recurse-submodules[=(check|on-demand|no)]
                          control recursive pushing of submodules
    --thin                use thin pack
    --receive-pack <receive-pack>
                          receive pack program
    --exec <receive-pack>
                          receive pack program
    -u, --set-upstream    set upstream for git pull/status
    --progress            force progress reporting
    --prune               prune locally removed refs
    --no-verify           bypass pre-push hook
    --follow-tags         push missing but relevant tags
    --signed[=(yes|no|if-asked)]
                          GPG sign the push
    --atomic              request atomic transaction on remote side
    -o, --push-option <server-specific>
                          option to transmit
    -4, --ipv4            use IPv4 addresses only
    -6, --ipv6            use IPv6 addresses only

nancy@Nancy:~/nancy/ror/blog_application$ git commit - m "tages style"
error: pathspec '-' did not match any file(s) known to git
error: pathspec 'm' did not match any file(s) known to git
error: pathspec 'tages style' did not match any file(s) known to git
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "style tag"
[main 197d81f] style tag
 1 file changed, 32 insertions(+)
 create mode 100644 app/assets/stylesheets/main.css
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 10, done.
Counting objects: 100% (10/10), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 682 bytes | 682.00 KiB/s, done.
Total 6 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   9fb3611..197d81f  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/layouts/banks.html.erb
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
  lib/20230124/31.01.23/4:10pm.erb
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/controllers/customers_controller.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove customer action"
[main 6875e41] remove customer action
 1 file changed, 12 insertions(+)
 create mode 100644 app/controllers/customers_controller.rb
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 8, done.
Counting objects: 100% (8/8), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 598 bytes | 598.00 KiB/s, done.
Total 5 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   197d81f..6875e41  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/layouts/banks.html.erb
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
  app/controllers/transactions_controller.rb
  app/helpers/customers_helper.rb
  app/helpers/transactions_helper.rb
  app/models/bank.rb
  app/models/customer.rb
  app/models/transaction.rb
  app/views/banks/
  app/views/customers/
  app/views/layouts/_header.html.erb
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
  lib/20230124/31.01.23/4:10pm.erb
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/controllers/transactions_controller.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added bank action"
[main 029db3c] added bank action
 1 file changed, 8 insertions(+)
 create mode 100644 app/controllers/transactions_controller.rb
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 8, done.
Counting objects: 100% (8/8), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 558 bytes | 558.00 KiB/s, done.
Total 5 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   6875e41..029db3c  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ git add app/views/banks/
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added link tag"
[main cb93462] added link tag
 10 files changed, 142 insertions(+)
 create mode 100644 app/views/banks/_empty_list.html.erb
 create mode 100644 app/views/banks/_form.html.erb
 create mode 100644 app/views/banks/_style.html.erb
 create mode 100644 app/views/banks/edit.html.erb
 create mode 100644 app/views/banks/index.html.erb
 create mode 100644 app/views/banks/new.html.erb
 create mode 100644 app/views/banks/regular_show.html.erb
 create mode 100644 app/views/banks/show.html.erb
 create mode 100644 app/views/banks/special_show.html.erb
 create mode 100644 app/views/banks/texts.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 18, done.
Counting objects: 100% (18/18), done.
Delta compression using up to 8 threads
Compressing objects: 100% (11/11), done.
Writing objects: 100% (15/15), 1.78 KiB | 607.00 KiB/s, done.
Total 15 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   029db3c..cb93462  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/layouts/banks.html.erb
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
  app/helpers/customers_helper.rb
  app/helpers/transactions_helper.rb
  app/models/bank.rb
  app/models/customer.rb
  app/models/transaction.rb
  app/views/customers/
  app/views/layouts/_header.html.erb
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
  lib/20230124/31.01.23/4:10pm.erb
  rename_column

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add lib/20230124/01.02.23/5:30pm.rb lib/20230124/04.02.23/ lib/20230124/09.02.23/ lib/20230124/31.01.23/4:10pm.erb 
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "rails paractice"
[main 7d23d0d] rails paractice
 7 files changed, 2219 insertions(+)
 create mode 100644 lib/20230124/01.02.23/5:30pm.rb
 create mode 100644 lib/20230124/04.02.23/4:00pm.rb
 create mode 100644 lib/20230124/04.02.23/6:06pm.rb
 create mode 100644 lib/20230124/04.02.23/7:17pm.rb
 create mode 100644 lib/20230124/09.02.23/5:43pm.rb
 create mode 100644 lib/20230124/09.02.23/7:00pm.rb
 create mode 100644 lib/20230124/31.01.23/4:10pm.erb
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 20, done.
Counting objects: 100% (20/20), done.
Delta compression using up to 8 threads
Compressing objects: 100% (15/15), done.
Writing objects: 100% (15/15), 9.97 KiB | 928.00 KiB/s, done.
Total 15 (delta 8), reused 0 (delta 0)
remote: Resolving deltas: 100% (8/8), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   cb93462..7d23d0d  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ 

