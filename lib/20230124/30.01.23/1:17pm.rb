nancy@Nancy:~/nancy/ror/blog_application$ bin/rails db:migrate
== 20230130072444 Order: migrating ============================================
-- create_table(:orders)
   -> 0.0025s
== 20230130072444 Order: migrated (0.0026s) ===================================
nancy@Nancy:~/nancy/ror/blog_application$ rails c
Warning: the running version of Bundler (2.1.2) is older than the version that created the lockfile (2.3.26). We suggest you to upgrade to the version that created the lockfile by running `gem install bundler:2.3.26`.
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby, x86_64-linux but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
Loading development environment (Rails 7.0.4.1)
2.7.0 :001 > orders = Order.new()
 => #<Order:0x000055fac9c9ec48 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
2.7.0 :002 > orders = Order.new(name: "nancy", lastname: "kushwah", email: "nancyKushwah.ror@gmail.com")
 => #<Order:0x000055fac9c9d960 id: nil, name: "nancy", lastname: "kushwah", email: "nancyKushwah.ror@gmail.com", created_at: nil, updated_at: nil> 
2.7.0 :003 > orders.save
  TRANSACTION (0.1ms)  begin transaction
  Order Create (5.0ms)  INSERT INTO "orders" ("name", "lastname", "email", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["name", "nancy"], ["lastname", "kushwah"], ["email", "nancyKushwah.ror@gmail.com"], ["created_at", "2023-01-30 07:30:08.651946"], ["updated_at", "2023-01-30 07:30:08.651946"]]
  TRANSACTION (1.9ms)  commit transaction
 => true 
2.7.0 :004 > Order.all
  Order Load (0.2ms)  SELECT "orders".* FROM "orders"
 => 
[#<Order:0x00007f40c41ac578
  id: 1,
  name: "nancy",
  lastname: "kushwah",
  email: "nancyKushwah.ror@gmail.com",
  created_at: Mon, 30 Jan 2023 07:30:08.651946000 UTC +00:00,
  updated_at: Mon, 30 Jan 2023 07:30:08.651946000 UTC +00:00>] 
2.7.0 :005 > 
^C
2.7.0 :005 > 

