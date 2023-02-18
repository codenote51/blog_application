nancy@Nancy:~$ rvm use ruby-2.7.0
Using /home/nancy/.rvm/gems/ruby-2.7.0
nancy@Nancy:~$ irb
2.7.0 :001 > a1 = [34, 322, 43242,"sgsdi", "dsdhsdh"]
 => [34, 322, 43242, "sgsdi", "dsdhsdh"] 
2.7.0 :002 > a2 = [334, "jdffh", "ssdhsad", "adew"]
2.7.0 :003 > a1.assoc(34)
2.7.0 :004 > a1.assoc(322)
2.7.0 :005 > a1
2.7.0 :006 > a1 << nil
2.7.0 :007 > a1.compact
2.7.0 :008 > a1.concat(a2)
2.7.0 :009 > a1.fetch(3)
2.7.0 :010 > a2.fill(322)
2.7.0 :011 > a1
2.7.0 :012 > a2
2.7.0 :013 > a2.fill {|index|}
2.7.0 :014 > a2
2.7.0 :015 > a1.first
2.7.0 :016 > a1.flatten
2.7.0 :017 > a1.forzen?
  21: from /home/nancy/.rvm/gems/ruby-2.7.0/bin/ruby_executable_hooks:24:in `<main>'
  20: from /home/nancy/.rvm/gems/ruby-2.7.0/bin/ruby_executable_hooks:24:in `eval'
  19: from /home/nancy/.rvm/gems/ruby-2.7.0/bin/irb:23:in `<main>'
  18: from /home/nancy/.rvm/gems/ruby-2.7.0/bin/irb:23:in `load'
  17: from /home/nancy/.rvm/gems/ruby-2.7.0/gems/irb-1.6.2/exe/irb:11:in `<top (required)>'
(irb):17:in `<main>': undefined method `forzen?' for #<Array:0x000056073b266a68> (NoMethodError)
Did you mean?  frozen?
2.7.0 :018 > a1.frozen?
2.7.0 :019 > a1.hash
2.7.0 :020 > a1.include?(34)
2.7.0 :021 > a1.index(334)
2.7.0 :022 > a1.insert(3, 43242)
2.7.0 :023 > a1.insert(7, "gdsagd")
2.7.0 :024 > a1.inspect
 => "[34, 322, 43242, 43242, \"sgsdi\", \"dsdhsdh\", nil, \"gdsagd\", 334, \"jdffh\", \"ssdhsad\", \"adew\"]" 
2.7.0 :025 > a1.join(sep = $,)
 => "343224324243242sgsdidsdhsdhgdsagd334jdffhssdhsadadew" 
2.7.0 :026 > a1.last
 => "adew" 
2.7.0 :027 > a1.length
 => 12 
2.7.0 :028 > a1.map{|i|}
 => [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil] 
2.7.0 :029 > a1
 => [34, 322, 43242, 43242, "sgsdi", "dsdhsdh", nil, "gdsagd", 334, "jdffh", "ssdhsad", "adew"] 
2.7.0 :030 > a1.reverse
 => ["adew", "ssdhsad", "jdffh", 334, "gdsagd", nil, "dsdhsdh", "sgsdi", 43242, 43242, 322, 34] 
2.7.0 :031 > a1.reverse_each{|i|}
 => [34, 322, 43242, 43242, "sgsdi", "dsdhsdh", nil, "gdsagd", 334, "jdffh", "ssdhsad", "adew"] 
2.7.0 :032 > a1.slice(5)
 => "dsdhsdh" 
2.7.0 :033 > a1.sort
Traceback (most recent call last):
  22: from /home/nancy/.rvm/gems/ruby-2.7.0/bin/ruby_executable_hooks:24:in `<main>'
  21: from /home/nancy/.rvm/gems/ruby-2.7.0/bin/ruby_executable_hooks:24:in `eval'
  20: from /home/nancy/.rvm/gems/ruby-2.7.0/bin/irb:23:in `<main>'
  19: from /home/nancy/.rvm/gems/ruby-2.7.0/bin/irb:23:in `load'
  18: from /home/nancy/.rvm/gems/ruby-2.7.0/gems/irb-1.6.2/exe/irb:11:in `<top (required)>'
   1: from (irb):33:in `<main>'
(irb):33:in `sort': comparison of Integer with String failed (ArgumentError)
2.7.0 :034 > a1.to_a
 => [34, 322, 43242, 43242, "sgsdi", "dsdhsdh", nil, "gdsagd", 334, "jdffh", "ssdhsad", "adew"] 
2.7.0 :035 > a1.to_ary
 => [34, 322, 43242, 43242, "sgsdi", "dsdhsdh", nil, "gdsagd", 334, "jdffh", "ssdhsad", "adew"] 
2.7.0 :036 > a1.to_s
 => "[34, 322, 43242, 43242, \"sgsdi\", \"dsdhsdh\", nil, \"gdsagd\", 334, \"jdffh\", \"ssdhsad\", \"adew\"]" 
2.7.0 :037 > a1 
 => [34, 322, 43242, 43242, "sgsdi", "dsdhsdh", nil, "gdsagd", 334, "jdffh", "ssdhsad", "adew"] 
2.7.0 :038 > a1 << 34
 => [34, 322, 43242, 43242, "sgsdi", "dsdhsdh", nil, "gdsagd", 334, "jdffh", "ssdhsad", "adew", 34] 
2.7.0 :039 > a1.uniq
 => [34, 322, 43242, "sgsdi", "dsdhsdh", nil, "gdsagd", 334, "jdffh", "ssdhsad", "adew"] 
2.7.0 :040 > 

2.7.0 :001 > "sadhsdd".present?
 => false 
2.7.0 :003 > "sdgssds".presence
2.7.0 :004 > flase.presence || "sdihas"
(irb):4:in `<main>': undefined local variable or method `flase' for main:Object (NameError)
Did you mean?  false
2.7.0 :005 > false.presence || "sdihas"
 => "sfdua" 
2.7.0 :010 > false.presence || "assdaga" "asagsd"

/-----------------------------------------------------------------------------------------------------------//


nancy@Nancy:~$ rvm use ruby-2.7.0
Using /home/nancy/.rvm/gems/ruby-2.7.0
nancy@Nancy:~$ irb
2.7.0 :001 > aFile = File.new("/home/nancy/nancy/ruby/loop.rb", "r")
2.7.0 :002 > if aFile
def text()
  h = {a
 => nil 
2.7.0 :008 > aFile = File.new("/home/nancy/nancy/ruby/loop.rb", "r")
 => #<File:/home/nancy/nancy/ruby/loop.rb> 
2.7.0 :009 > if aFile
2.7.0 :010 >    content = aFile.sysread(50)
2.7.0 :011 >    puts content
2.7.0 :012 > else
2.7.0 :013 >    puts "Unable to open file!"
2.7.0 :014 > end

def text()
  h = {a: "kjhkjhk", b: "hjhk", c: "fu
 => nil 
2.7.0 :015 > aFile = File.new("/home/nancy/nancy/ruby/loop.rb", "r")
 => #<File:/home/nancy/nancy/ruby/loop.rb> 
2.7.0 :016 > if aFile
2.7.0 :017 >   aFile.syswrite("ABCDEF")
2.7.0 :019 >   puts "Unable to open file!"
  18: from /home/nancy/.rvm/gems/ruby-2.7.0/gems/irb-1.6.2/exe/irb:11:in `<top (required)>'
   1: from (irb):17:in `<main>'
(irb):17:in `syswrite': not opened for writing (IOError)
2.7.0 :021 > aFile = File.new("/home/nancy/nancy/ruby/loop.rb", "r+")
 => #<File:/home/nancy/nancy/ruby/loop.rb> 
2.7.0 :022 > if aFile
2.7.0 :023 >    aFile.syswrite("ABCDEF")
2.7.0 :024 >    aFile.each_byte {|ch| putc ch; putc ?. }
2.7.0 :025 > else
2.7.0 :026 >    puts "Unable to open file!"
2.7.0 :027 > end
e.x.t.(.).
. . .h. .=. .{.a.:. .".k.j.h.k.j.h.k.".,. .b.:. .".h.j.h.k.".,. .c.:. .".f.u.e.g.f.e.".,. .d.:. .".f.e.w.c.f.e.r.".,. .e.:. .".g.v.f.d.r.e.".}.
. . .h...e.a.c.h. .d.o. .|.i.|.
. . . . .p.u.t.s. .i.
. . .e.n.d.
.e.n.d.
.t.e.x.t.
.
.d.e.f. .f.i.l.e.(.).
. . .h.1. .=. .{.a.:. .".k.j.h.k.j.h.k.".,. .b.:. .".h.j.h.k.".,. .c.:. .".f.u.e.g.f.e.".,. .d.:. .".f.e.w.c.f.e.r.".,. .e.:. .".g.v.f.d.r.e.".}.
. . .f.o.r. .i. .i.n. .h.1.
. . .e.n.d.
.e.n.d. .
.
.
2.7.0 :028 > aFile = File.new("/home/nancy/nancy/ruby/loop.rb", "r+")
 => #<File:/home/nancy/nancy/ruby/loop.rb> 
2.7.0 :029 > if aFile
2.7.0 :030 >    aFile.syswrite("ABCDEF")
2.7.0 :031 >    aFile.each_byte {|ch| putc ch; putc ?. }
2.7.0 :032 > else
2.7.0 :033 >    puts "Unable to open file!"
2.7.0 :034 > end
e.x.t.(.).
. . .h. .=. .{.a.:. .".k.j.h.k.j.h.k.".,. .b.:. .".h.j.h.k.".,. .c.:. .".f.u.e.g.f.e.".,. .d.:. .".f.e.w.c.f.e.r.".,. .e.:. .".g.v.f.d.r.e.".}.
. . .h...e.a.c.h. .d.o. .|.i.|.
. . . . .p.u.t.s. .i.
. . .e.n.d.
.e.n.d.
.t.e.x.t.
.
.
.d.e.f. .f.i.l.e.(.).
. . .h.1. .=. .{.a.:. .".k.j.h.k.j.h.k.".,. .b.:. .".h.j.h.k.".,. .c.:. .".f.u.e.g.f.e.".,. .d.:. .".f.e.w.c.f.e.r.".,. .e.:. .".g.v.f.d.r.e.".}.
. . . .p.u.t.s. .".V.a.l.u.e. .o.f. .l.o.c.a.l. .v.a.r.i.a.b.l.e. .i.s. .#.{.i.}.".
.e.n.d. .
.
. => #<File:/home/nancy/nancy/ruby/loop.rb> 
2.7.0 :035 > arr = IO.readlines("/home/nancy/nancy/ruby/loop.rb")
 => 
["ABCDEFext()\n",
... 
2.7.0 :036 > puts arr[0]
ABCDEFext()
 => nil 
2.7.0 :037 > puts arr[1]
  h = {a: "kjhkjhk", b: "hjhk", c: "fuegfe", d: "fewcfer", e: "gvfdre"}
 => nil 
2.7.0 :038 > IO.foreach("/home/nancy/nancy/ruby/loop.rb"){|i| puts i}
ABCDEFext()
  h = {a: "kjhkjhk", b: "hjhk", c: "fuegfe", d: "fewcfer", e: "gvfdre"}
  h.each do |i|
    puts i
  end
end
text


def file()
  h1 = {a: "kjhkjhk", b: "hjhk", c: "fuegfe", d: "fewcfer", e: "gvfdre"}
  for i in h1
   puts "Value of local variable is #{i}"
  end
end 
file


 => nil 
2.7.0 :039 > file = File.new("/home/nancy/nancy/ruby/loop.rb", "w")
 => #<File:/home/nancy/nancy/ruby/loop.rb> 
2.7.0 :040 > file.chmod( 0755 )
 => 0 
2.7.0 :041 > File::ctime("/home/nancy/nancy/ruby/loop.rb")
 => 2023-02-13 13:41:58.563176956 +0530 
2.7.0 :042 > File::mtime("/home/nancy/nancy/ruby/loop.rb")
 => 2023-02-13 13:41:51.883025069 +0530 
2.7.0 :043 > 

