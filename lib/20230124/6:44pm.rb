nancy@Nancy:~/nancy/ror/blog_application$ bin/rails generate controller Users text
      create  app/controllers/users_controller.rb
       route  get 'users/text'
      invoke  erb
      create    app/views/users
      create    app/views/users/text.html.erb
      invoke  test_unit
      create    test/controllers/users_controller_test.rb
      invoke  helper
      create    app/helpers/users_helper.rb
      invoke    test_unit
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails generate model Users name:"string", lastName: "text"
Could not generate field 'name' with unknown type 'string,'.
nancy@Nancy:~/nancy/ror/blog_application$ bin/rails generate model Users usrsName:"string", userlatname: "text"
Could not generate field 'usrsName' with unknown type 'string,'.
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/articles/_form.html.erb
  modified:   config/routes.rb
  modified:   db/schema.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/controllers/users_controller.rb
  app/helpers/persons_helper.rb
  app/helpers/simple_helper.rb
  app/helpers/users_helper.rb
  lib/20230124/
  public/
  storage/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add  app/views/articles/_form.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove text render"
[main 69a8a6d] remove text render
 1 file changed, 1 insertion(+), 1 deletion(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 527 bytes | 527.00 KiB/s, done.
Total 6 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   9353f2d..69a8a6d  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   config/routes.rb
  modified:   db/schema.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/controllers/users_controller.rb
  app/helpers/persons_helper.rb
  app/helpers/simple_helper.rb
  app/helpers/users_helper.rb
  lib/20230124/
  public/
  storage/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add config/routes.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "end tag remove"
[main b40cee9] end tag remove
 1 file changed, 2 insertions(+)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 8 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 397 bytes | 397.00 KiB/s, done.
Total 4 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   69a8a6d..b40cee9  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   db/schema.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/controllers/users_controller.rb
  app/helpers/persons_helper.rb
  app/helpers/simple_helper.rb
  app/helpers/users_helper.rb
  lib/20230124/
  public/
  storage/

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add  db/schema.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove persons model migrate"
[main 4784902] remove persons model migrate
 1 file changed, 1 insertion(+), 3 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 8 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 426 bytes | 426.00 KiB/s, done.
Total 4 (delta 2), reused 0 (delta 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To https://github.com/codenote51/blog_application.git
   b40cee9..4784902  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk


