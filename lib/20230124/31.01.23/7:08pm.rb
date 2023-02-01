nancy@Nancy:~/nancy/ror/blog_application$ rvm use ruby-2.7.0
Using /home/nancy/.rvm/gems/ruby-2.7.0
nancy@Nancy:~/nancy/ror/blog_application$ rails c
at created the lockfile by running `gem install bundler:2.3.26`.
dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
Loading development environment (Rails 7.0.4.1)
2.7.0 :001 > o = Order.new
2.7.0 :002 > o = Order.valid?
Traceback (most recent call last):
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `valid?' for #<
Did you mean?  validate
2.7.0 :003 > Order.valid?
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `valid?' for #<
Did you mean?  validate
 => #<Order:0x000055c0f0b39208 id: nil, name: "nancy", lastname: nil, email: nil, created_at: nil, updated_at: nil> 
Traceback (most recent call last):
Class:0x00007f8bf477f998> (NoMethodError)
2.7.0 :006 > Order.errors.full_messages
/home/nancy/.rvm/gems/ruby-2.7.0/gems/activerecord-7.0.4.1/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined method `errors' for #<
2.7.0 :007 > person = Person.new
(irb):7:in `<main>': uninitialized constant Person (NameError)
 => false 
 => #<Order:0x000055c0f07a8c88 id: nil, name: nil, lastname: nil, email: nil, created_at: nil, updated_at: nil> 
 => false 
 => ["Name can't be blank", "Lastname can't be blank", "Email can't be blank"] 
 => #<Order:0x000055c0f0a3a578 id: nil, name: "nancy", lastname: nil, email: nil, created_at: nil, updated_at: nil> 
 => false 
 => ["Lastname can't be blank", "Email can't be blank"] 
2.7.0 :015 > o.errors[:name]
2.7.0 :016 > o = Order.new(name: "jd")
 => #<Order:0x00007f8bf42ea310 id: nil, name: "jd", lastname: nil, email: nil, created_at: nil, updated_at: nil> 
 => false 
2.7.0 :018 > o.errors[:name]
2.7.0 :019 > o.errors[:name]
 => [] 
 => [] 
2.7.0 :021 > o.errors.where(:name, :too_short)
2.7.0 :022 > error = o.errors.where(:name).last
2.7.0 :023 > error.attribute
(irb):23:in `<main>': undefined method `attribute' for nil:NilClass (NoMethodError)
Traceback (most recent call last):
2.7.0 :025 > error.message
(irb):25:in `<main>': undefined method `message' for nil:NilClass (NoMethodError)
Traceback (most recent call last):
2.7.0 :027 > o.errors.where(:name).first.full_message
(irb):27:in `<main>': undefined method `full_message' for nil:NilClass (NoMethodError)
2.7.0 :028 > o.errors.empty?
 => false 
2.7.0 :029 > o.errors.clear
 => [] 
2.7.0 :030 > o.errors.empty?
 => true 
2.7.0 :031 > o.save
 => false 
2.7.0 :032 > o.errors.empty?
 => false 
2.7.0 :033 > o.errors.size
 => 2 
2.7.0 :034 > o = Order.new(name: "nancy", lastname: "kushwah", email: "nancy9ku@gmail.com")
 => #<Order:0x000055c0f0938f08 id: nil, name: "nancy", lastname: "kushwah", email: "nancy9ku@gmail.com", created_at: nil, updated_at: nil> 
2.7.0 :035 > o.valid?
 => true 
2.7.0 :036 > o.errors.size
 => 0 
2.7.0 :037 > 
