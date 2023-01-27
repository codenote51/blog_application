nancy@Nancy:~/nancy/ror/blog_application$ rvm use ruby-2.7.0
Using /home/nancy/.rvm/gems/ruby-2.7.0
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/articles/index.html.erb
  deleted:    config/environments/production.rb
  modified:   config/routes.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  lib/20230124/10:19pm.rb
  lib/20230124/12:47pm.rb
  lib/20230124/12:53pm.rb
  lib/20230124/2:05pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add config/environments/production.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added new file"
[main 18a4e4e] added new file
 1 file changed, 93 deletions(-)
 delete mode 100644 config/environments/production.rb
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
remote: Support for password authentication was removed on August 13, 2021.
remote: Please see https://docs.github.com/en/get-started/getting-started-with-git/about-remote-repositories#cloning-with-https-urls for information on currently recommended modes of authentication.
fatal: Authentication failed for 'https://github.com/codenote51/blog_application.git/'
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/articles/index.html.erb
  modified:   config/routes.rb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  lib/20230124/10:19pm.rb
  lib/20230124/12:47pm.rb
  lib/20230124/12:53pm.rb
  lib/20230124/2:05pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add config/routes.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove action"
[main 5a8b79b] remove action
 1 file changed, 4 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 12, done.
Counting objects: 100% (12/12), done.
Delta compression using up to 8 threads
Compressing objects: 100% (8/8), done.
Writing objects: 100% (8/8), 756 bytes | 756.00 KiB/s, done.
Total 8 (delta 5), reused 0 (delta 0)
remote: Resolving deltas: 100% (5/5), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   5b1d243..5a8b79b  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/articles/index.html.erb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  lib/20230124/10:19pm.rb
  lib/20230124/12:47pm.rb
  lib/20230124/12:53pm.rb
  lib/20230124/2:05pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add  app/views/articles/index.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added heading tag"
[main 5d6cf84] added heading tag
 1 file changed, 1 insertion(+)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 550 bytes | 550.00 KiB/s, done.
Total 6 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   5a8b79b..5d6cf84  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
nancy@Nancy:~/nancy/ror/blog_application$ rails c
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version that created the lockfile by running `gem install bundler:2.3.26`.
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby, x86_64-linux but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
Loading development environment (Rails 7.0.4.1)
2.7.0 :001 > Article.all
  Article Load (0.2ms)  SELECT "articles".* FROM "articles"
 => 
[#<Article:0x000055842ec47f90
  id: 1,
  title: "Hello Rails",
  body: "I am on Rails!",
  created_at: Mon, 23 Jan 2023 08:03:24.390412000 UTC +00:00,
  updated_at: Mon, 23 Jan 2023 08:03:24.390412000 UTC +00:00,
  status: nil>] 
2.7.0 :002 > article = Article.first
  Article Load (0.3ms)  SELECT "articles".* FROM "articles" ORDER BY "articles"."id" ASC LIMIT ?  [["LIMIT", 1]]
 => 
#<Article:0x000055842f4c3480
... 
2.7.0 :003 > Killed
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  lib/20230124/10:19pm.rb
  lib/20230124/12:47pm.rb
  lib/20230124/12:53pm.rb
  lib/20230124/2:05pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ 

