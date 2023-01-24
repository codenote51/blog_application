nancy@Nancy:~/nancy/ror/blog_application$ rvm use ruby-2.7.0
Using /home/nancy/.rvm/gems/ruby-2.7.0
nancy@Nancy:~/nancy/ror/blog_application$ ls
app  bin  config  config.ru  db  Gemfile  Gemfile.lock  lib  log  public  Rakefile  README.md  storage  test  tmp  vendor
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
  new file:   .gitattributes
  new file:   .gitignore
  new file:   .ruby-version
  new file:   README.md
  new file:   app/controllers/comments_controller.rb
  new file:   app/models/comment.rb
  new file:   app/models/concerns/visible.rb
  modified:   app/views/comments/_comment.html.erb
  new file:   db/migrate/20230123075001_create_articles.rb
  new file:   db/migrate/20230123125050_create_comments.rb
  new file:   db/migrate/20230123125156_add_status_to_articles.rb
  new file:   db/migrate/20230123125157_add_status_to_comments.rb
  new file:   db/schema.rb

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   app/views/articles/index.html.erb

Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/helpers/articles_helper.rb
  app/helpers/comments_helper.rb
  public/
  storage/
  test/controllers/articles_controller_test.rb
  test/controllers/comments_controller_test.rb
  test/fixtures/articles.yml
  test/fixtures/comments.yml
  test/models/article_test.rb
  test/models/comment_test.rb

nancy@Nancy:~/nancy/ror/blog_application$ git add  app/views/articles/index.html.erb
nancy@Nancy:~/nancy/ror/blog_application$ git commit -m "practic 2.37"
[main f9a9b39] practic 2.37
 14 files changed, 185 insertions(+), 7 deletions(-)
 create mode 100644 .gitattributes
 create mode 100644 .gitignore
 create mode 100644 .ruby-version
 create mode 100644 README.md
 create mode 100644 app/controllers/comments_controller.rb
 create mode 100644 app/models/comment.rb
 create mode 100644 app/models/concerns/visible.rb
 create mode 100644 db/migrate/20230123075001_create_articles.rb
 create mode 100644 db/migrate/20230123125050_create_comments.rb
 create mode 100644 db/migrate/20230123125156_add_status_to_articles.rb
 create mode 100644 db/migrate/20230123125157_add_status_to_comments.rb
 create mode 100644 db/schema.rb
nancy@Nancy:~/nancy/ror/blog_application$ git push origin main
fatal: 'origin' does not appear to be a git repository
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/helpers/articles_helper.rb
  app/helpers/comments_helper.rb
  public/
  storage/
  test/controllers/articles_controller_test.rb
  test/controllers/comments_controller_test.rb
  test/fixtures/articles.yml
  test/fixtures/comments.yml
  test/models/article_test.rb
  test/models/comment_test.rb

nothing added to commit but untracked files present (use "git add" to track)
nancy@Nancy:~/nancy/ror/blog_application$ git reset /app/views/articles/index.html.erb
fatal: ambiguous argument '/app/views/articles/index.html.erb': unknown revision or path not in the working tree.
Use '--' to separate paths from revisions, like this:
'git <command> [<revision>...] -- [<file>...]'
nancy@Nancy:~/nancy/ror/blog_application$ git status
On branch main
Untracked files:
  (use "git add <file>..." to include in what will be committed)
  app/helpers/articles_helper.rb
  app/helpers/comments_helper.rb
  public/
  storage/
  test/controllers/articles_controller_test.rb
  test/controllers/comments_controller_test.rb
  test/fixtures/articles.yml
  test/fixtures/comments.yml
  test/models/article_test.rb
  test/models/comment_test.rb

nothing added to commit but untracked files present (use "git add" to track)
nancy@Nancy:~/nancy/ror/blog_application$ git remote -v
url https://github.com/codenote51/blog_application.git (fetch)
url https://github.com/codenote51/blog_application.git (push)
nancy@Nancy:~/nancy/ror/blog_application$ git config user.name
Nancy Kushwah
nancy@Nancy:~/nancy/ror/blog_application$ git config user.email
nancykushwah.ror@gmail.com
nancy@Nancy:~/nancy/ror/blog_application$ gitk
^C
nancy@Nancy:~/nancy/ror/blog_application$ 

