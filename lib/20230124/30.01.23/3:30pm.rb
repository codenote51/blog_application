Using /home/nancy/.rvm/gems/ruby-2.7.0
nancy@Nancy:~/nancy/ror/blog_application$ rails c
at created the lockfile by running `gem install bundler:2.3.26`.
dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86
Loading development environment (Rails 7.0.4.1)
2.7.0 :001 > Order.create(name: "John Doe").valid?
2.7.0 :002 > Order.create(name: nil).valid?
2.7.0 :003 > order = Order.new(name: "Jhon")
 => #<Order:0x0000561539835118 id: nil, name: "Jhon", lastname: nil, email: nil, created_at: nil, updated_at: nil> 
2.7.0 :004 > order.new_record?
2.7.0 :005 > order.save
2.7.0 :006 > order.new_record?
 => true 
2.7.0 :007 > order = Order.new(name: "sona")
 => #<Order:0x00007fd8fc44aed0 id: nil, name: "sona", lastname: nil, email: nil, created_at: nil, updated_at: nil> 
2.7.0 :008 > order.new_record?
 => true 
2.7.0 :009 > order.save
 => false 
2.7.0 :010 > order.save!
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/validations.rb:80:in `raise_validation_error': Validation failed: Lastname can't be blank (ActiveRecord::RecordInvalid)
2.7.0 :011 > Order.create(name: "John Doe").valid?
 => false 
2.7.0 :012 >  Order.create(name: nil).valid?
 => false 
2.7.0 :013 > order = Order.new
 => #<Order:0x00005615389cb398 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
2.7.0 :014 > order.errors.size
 => 0 
2.7.0 :015 > order.valid?
 => false 
2.7.0 :016 > order.errors.objects.first.full_message
 => "Name can't be blank" 
2.7.0 :017 > order = Order.create
 => #<Order:0x0000561539586660 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
2.7.0 :018 > p.save
Traceback (most recent call last):
(irb):18:in `<main>': undefined method `save' for nil:NilClass (NoMethodError)
2.7.0 :019 > order.save
 => false 
2.7.0 :020 > order.save!
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/validations.rb:80:in `raise_validation_error': Validation failed: Name can't be blank, Name is too short (minimum is 3 characters), Lastname can't be blank (ActiveRecord::RecordInvalid)
2.7.0 :021 > Order.new.errors[:name].any?
 => false 
2.7.0 :022 > Order.create.errors[:name].any?
 => true 
2.7.0 :023 > 

