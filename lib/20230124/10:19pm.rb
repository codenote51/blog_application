nancy@Nancy:~$ rvm use ruby-2.7.0
Using /home/nancy/.rvm/gems/ruby-2.7.0
nancy@Nancy:~$ cd /home/nancy/nancy/ror/blog_application/
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/controllers/users_controller.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ cat app/controllers/users_controller.rb
class UsersController < ApplicationController
  def text
  end
end
nancy@Nancy:~/nancy/ror/blog_application$ dir
app  bin  config  config.ru  db  Gemfile  Gemfile.lock  lib  log  public  Rakefile  README.md  storage  test  tmp  vendor
nancy@Nancy:~/nancy/ror/blog_application$ git log
commit c3aeb328069f3ffc2bf8fbc948dcc6ef33f9afe4 (HEAD -> main, origin/main)
Author: Nancy Kushwah <nancykushwah.ror@gmail.com>
Date:   Tue Jan 24 19:32:08 2023 +0530

    remove heading tag

commit 4784902447cd445772fb1e6550c5787e8fe8a312
Author: Nancy Kushwah <nancykushwah.ror@gmail.com>
Date:   Tue Jan 24 18:42:17 2023 +0530

    remove persons model migrate

commit b40cee9990e70411896c8d78c51ce40b9edb2d4f
Author: Nancy Kushwah <nancykushwah.ror@gmail.com>
Date:   Tue Jan 24 18:39:33 2023 +0530

    end tag remove

commit 69a8a6dd7b1a86fc11eb6d5dccd13cf211115a90
Author: Nancy Kushwah <nancykushwah.ror@gmail.com>
Date:   Tue Jan 24 18:36:53 2023 +0530

    remove text render

commit 9353f2df0e866f91035c68101c005b7b0f4e33bd
Author: Nancy Kushwah <nancykushwah.ror@gmail.com>
Date:   Tue Jan 24 18:00:29 2023 +0530

    remove migrate

commit af62d719478881ec8cd89592a78d4f58b67bf038
Author: Nancy Kushwah <nancykushwah.ror@gmail.com>
Date:   Tue Jan 24 17:58:08 2023 +0530

    remove simple root, resources

commit 2e207fcdcfe2c7e0cdc0addae1c02534da282d3b
Author: Nancy Kushwah <nancykushwah.ror@gmail.com>
Date:   Tue Jan 24 17:54:46 2023 +0530

    remove text, simp methods

commit 9c1b37d7078615a6289769c5428227f8eb0d3e6d
Author: Nancy Kushwah <nancykushwah.ror@gmail.com>
Date:   Tue Jan 24 17:52:03 2023 +0530

    remove render simp

commit a622a9b1e9f266ce1d2a81d159b92d836564bc02
Author: Nancy Kushwah <nancykushwah.ror@gmail.com>
Date:   Tue Jan 24 17:49:47 2023 +0530

    text render remove

commit f6c4840bbf268a567ac8119be9f5c76250c5f702
Author: Nancy Kushwah <nancykushwah.ror@gmail.com>
Date:   Tue Jan 24 17:34:38 2023 +0530

    next line li tag

commit efd69390cb4e5bb2322d5a5044b23449dfbdf5a3
Author: Nancy Kushwah <nancykushwah.ror@gmail.com>
Date:   Tue Jan 24 14:51:35 2023 +0530

    gdfhkl

commit e5a1556cfc48483ca8636b41c257699650631d1e
Author: Nancy Kushwah <nancykushwah.ror@gmail.com>
Date:   Tue Jan 24 14:45:51 2023 +0530

    Remove test files

commit f9a9b39fa500e3b312dd4c506869e01106258840
Author: Nancy Kushwah <nancykushwah.ror@gmail.com>
Date:   Tue Jan 24 14:37:32 2023 +0530

    practic 2.37


[1]+  Stopped                 git log
nancy@Nancy:~/nancy/ror/blog_application$ git log --oneline
c3aeb32 (HEAD -> main, origin/main) remove heading tag
4784902 remove persons model migrate
b40cee9 end tag remove
69a8a6d remove text render
9353f2d remove migrate
af62d71 remove simple root, resources
2e207fc remove text, simp methods
9c1b37d remove render simp
a622a9b text render remove
f6c4840 next line li tag
efd6939 gdfhkl
e5a1556 Remove test files
f9a9b39 practic 2.37
6a51cff correct indentation
3761092 fix indentation
4bf53ad remove image tag
c267587 change body length minimum 20
4e5056c fix indentation
aedf80a remove h1 tage
236af50 add edit update destroy
c905505 fix indentation
af523b5 remove the p tage
c936f37 remove pink color
nancy@Nancy:~/nancy/ror/blog_application$ git log --oneline -3
c3aeb32 (HEAD -> main, origin/main) remove heading tag
4784902 remove persons model migrate
b40cee9 end tag remove
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git remote -v
origin  https://codenote51@github.com/codenote51/blog_application.git (fetch)
origin  https://codenote51@github.com/codenote51/blog_application.git (push)
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git remote
origin
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/controllers/users_controller.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/articles/_form.html.erb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/controllers/users_controller.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add  app/views/articles/_form.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "new line added"
[main 8d2c80d] new line added
 1 file changed, 6 insertions(+), 2 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 554 bytes | 554.00 KiB/s, done.
Total 6 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   c3aeb32..8d2c80d  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/controllers/users_controller.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ 

