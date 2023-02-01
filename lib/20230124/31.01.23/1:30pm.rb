.7.0 :013 > o.errors.size
 => 0 
2.7.0 :014 > o.valid?
 => false 
2.7.0 :015 > o.errors.objects.first.full_message
 => "Name can't be blank" 
2.7.0 :016 > a = Article.new()
2.7.0 :017 > a = Article.new(title: "hello world", body: "i am rails")
2.7.0 :018 > a.save
  Article Create (0.3ms)  INSERT INTO "articles" ("title", "body", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["title", "hello world"], ["body", "
  TRANSACTION (7.2ms)  commit transaction
2.7.0 :019 > Article.all
  Article Load (0.2ms)  SELECT "articles".* FROM "articles"
 => 
  id: 1,
  title: "hello world",
  body: "i am rails",
  updated_at: Tue, 31 Jan 2023 05:56:40.335331000 UTC +00:00>] 
2.7.0 :020 > o = Order.new(name: "john Doe")
 => #<Order:0x00007f0b007d3680 id: nil, name: "john Doe", lastname: nil, email: nil, created_at: nil, updated_at: nil> 
 => true 
 => false 
2.7.0 :023 > o.new_record?
 => true 
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/validations.rb:80:in `raise_validation_error': Validation failed: Lastname c
2.7.0 :025 > o = Order.decrement_counter(name: "jhon Doe")
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/counter_cache.rb:159:in `decrement_counter': wrong number of arguments (give
2.7.0 :026 > o = Order.create!(name: "nancy")
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/validations.rb:80:in `raise_validation_error': Validation failed: Lastname c
2.7.0 :027 > o = Order.
2.7.0 :027 > o = Order.decrement_counter(0)
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/counter_cache.rb:159:in `decrement_counter': wrong number of arguments (give
2.7.0 :028 > o = order.new()
(irb):28:in `<main>': undefined method `new' for []:Array (NoMethodError)
 => #<Order:0x000055825f175ac0 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
 => false 
2.7.0 :031 > o.save!
Traceback (most recent call last):
 be blank, Lastname can't be blank, Email can't be blank (ActiveRecord::RecordInvalid)
 => 3 
2.7.0 :033 > o.valid?
2.7.0 :034 > o.errors.objects.first.full_message
2.7.0 :035 > o = Order.create
2.7.0 :036 > o.errors.objects.first.full_message
 => "Name can't be blank" 
2.7.0 :037 > o.save
 => false 
2.7.0 :038 > o.save!
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/validations.rb:80:in `raise_validation_error': Validation failed: Name can't be blank, Lastname can't be blank, Email can't be blank (ActiveRecord::RecordInvalid)
2.7.0 :039 > Order.new.errors[:name].any?
 => false 
2.7.0 :040 > Order.create[:name].any?
Traceback (most recent call last):
(irb):40:in `<main>': undefined method `any?' for nil:NilClass (NoMethodError)
2.7.0 :041 > Order.create.errors[:name].any?
 => true 
2.7.0 :042 > o = Order.new(name: "Jhon", lastname: "Doe", email: "jhonDoe@gmail.com")
 => #<Order:0x000055825fa9b460 id: nil, name: "Jhon", lastname: "Doe", email: "jhonDoe@gmail.com", created_at: nil, updated_at: nil> 
2.7.0 :043 > o.save
  TRANSACTION (0.1ms)  begin transaction
  Order Create (0.3ms)  INSERT INTO "orders" ("name", "lastname", "email", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["name", "Jhon"], ["lastname", "Doe"], ["email", "jhonDoe@gmail.com"], ["created_at", "2023-01-31 06:30:49.425296"], ["updated_at", "2023-01-31 06:30:49.425296"]]
  TRANSACTION (8.6ms)  commit transaction
 => true 
2.7.0 :044 > Order.all
  Order Load (0.1ms)  SELECT "orders".* FROM "orders"
 => 
[#<Order:0x000055825f91b9a0
  id: 1,
  name: "Jhon",
  lastname: "Doe",
  email: "jhonDoe@gmail.com",
  created_at: Tue, 31 Jan 2023 06:30:49.425296000 UTC +00:00,
  updated_at: Tue, 31 Jan 2023 06:30:49.425296000 UTC +00:00>] 
2.7.0 :045 > 

