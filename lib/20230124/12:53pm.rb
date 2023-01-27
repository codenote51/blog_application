nancy@Nancy:~/nancy/ror/blog_application$ rvm use ruby-2.7.0
Using /home/nancy/.rvm/gems/ruby-2.7.0
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
  lib/20230124/2:05pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git satus
git: 'satus' is not a git command. See 'git --help'.

The most similar command is
  status
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/articles/index.html.erb
  modified:   app/views/articles/show.html.erb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  lib/20230124/10:19pm.rb
  lib/20230124/12:47pm.rb
  lib/20230124/2:05pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/articles/index.html.erb
  modified:   app/views/articles/show.html.erb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  lib/20230124/10:19pm.rb
  lib/20230124/12:47pm.rb
  lib/20230124/2:05pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/views/articles/index.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "added bold tag"
[main 3d77ede] added bold tag
 1 file changed, 2 insertions(+)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 551 bytes | 551.00 KiB/s, done.
Total 6 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   33ce033..3d77ede  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
(reverse-i-search)`': ^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/controllers/articles_controller.rb
  modified:   app/views/articles/show.html.erb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  lib/20230124/10:19pm.rb
  lib/20230124/12:47pm.rb
  lib/20230124/2:05pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add app/controllers/articles_controller.rb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove debugger"
[main 3f2f974] remove debugger
 1 file changed, 1 deletion(-)
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
   3d77ede..3f2f974  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/articles/new.html.erb
  modified:   app/views/articles/show.html.erb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  lib/20230124/10:19pm.rb
  lib/20230124/12:47pm.rb
  lib/20230124/2:05pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add   app/views/articles/new.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove console"
[main ec0ac9c] remove console
 1 file changed, 2 insertions(+)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 553 bytes | 553.00 KiB/s, done.
Total 6 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   3f2f974..ec0ac9c  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ bundle install
Using rake 13.0.6
Using concurrent-ruby 1.1.10
Using i18n 1.12.0
Using minitest 5.17.0
Using tzinfo 2.0.5
Using activesupport 7.0.4.1
Using builder 3.2.4
Using erubi 1.12.0
Using racc 1.6.2
Using nokogiri 1.14.0 (x86_64-linux)
Using rails-dom-testing 2.0.3
Using crass 1.0.6
Using loofah 2.19.1
Using rails-html-sanitizer 1.5.0
Using actionview 7.0.4.1
Using rack 2.2.6.2
Using rack-test 2.0.2
Using actionpack 7.0.4.1
Using nio4r 2.5.8
Using websocket-extensions 0.1.5
Using websocket-driver 0.7.5
Using actioncable 7.0.4.1
Using globalid 1.0.1
Using activejob 7.0.4.1
Using activemodel 7.0.4.1
Using activerecord 7.0.4.1
Using marcel 1.0.2
Using mini_mime 1.1.2
Using activestorage 7.0.4.1
Using date 3.3.3
Using timeout 0.3.1
Using net-protocol 0.2.1
Using net-imap 0.3.4
Using net-pop 0.1.2
Using net-smtp 0.3.3
Using mail 2.8.0.1
Using actionmailbox 7.0.4.1
Using actionmailer 7.0.4.1
Using actiontext 7.0.4.1
Using public_suffix 5.0.1
Using addressable 2.8.1
Using bindex 0.8.1
Using msgpack 1.6.0
Using bootsnap 1.15.0
Using bundler 2.3.26
Using matrix 0.4.2
Using regexp_parser 2.6.2
Using xpath 3.2.0
Using capybara 3.38.0
Using io-console 0.6.0
Using reline 0.3.2
Using irb 1.6.2
Using debug 1.7.1
Using method_source 1.0.0
Using thor 1.2.1
Using zeitwerk 2.6.6
Using railties 7.0.4.1
Using importmap-rails 1.1.5
Using jbuilder 2.11.5
Using puma 5.6.5
Using rails 7.0.4.1
Using rexml 3.2.5
Using rubyzip 2.3.2
Using websocket 1.2.9
Using selenium-webdriver 4.7.1
Using sprockets 4.2.0
Using sprockets-rails 3.4.2
Using sqlite3 1.6.0 (x86_64-linux)
Using stimulus-rails 1.2.1
Using turbo-rails 1.3.2
Using web-console 4.2.0
Using webdrivers 5.2.0
Bundle complete! 15 Gemfile dependencies, 72 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
nancy@Nancy:~/nancy/ror/blog_application$ 
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   Gemfile
  modified:   Gemfile.lock
  modified:   app/views/articles/new.html.erb
  modified:   app/views/articles/show.html.erb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  lib/20230124/10:19pm.rb
  lib/20230124/12:47pm.rb
  lib/20230124/2:05pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add  Gemfile
nancy@Nancy:~/nancy/ror/blog_application$ git commit "open dubug"
error: pathspec 'open dubug' did not match any file(s) known to git
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "gem dubug"
[main 6e81699] gem dubug
 1 file changed, 1 insertion(+), 1 deletion(-)
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
  modified:   Gemfile.lock
  modified:   app/views/articles/new.html.erb
  modified:   app/views/articles/show.html.erb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  lib/20230124/10:19pm.rb
  lib/20230124/12:47pm.rb
  lib/20230124/2:05pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add Gemfile.lock
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "merge pr #46594"
[main 38c2dc8] merge pr #46594
 1 file changed, 5 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 620 bytes | 620.00 KiB/s, done.
Total 6 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 3 local objects.
To https://github.com/codenote51/blog_application.git
   ec0ac9c..38c2dc8  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/articles/show.html.erb
  deleted:    lib/24/2:42.rb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  lib/20230124/10:19pm.rb
  lib/20230124/12:47pm.rb
  lib/20230124/2:05pm.rb

no changes added to commit (use "git add" and/or "git commit -a")
nancy@Nancy:~/nancy/ror/blog_application$ git add  app/views/articles/show.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "remove inspect"
[main 02a4f9b] remove inspect
 1 file changed, 3 insertions(+), 2 deletions(-)
nancy@Nancy:~/nancy/ror/blog_application$ git push 
fatal: The current branch main has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin main

nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
Password for 'https://codenote51@github.com': 
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 551 bytes | 551.00 KiB/s, done.
Total 6 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/codenote51/blog_application.git
   38c2dc8..02a4f9b  main -> main
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ 

