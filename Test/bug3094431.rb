#
# ""for .. in .. do" improperly enters 2 scopes -- actually, "do" used as a
# delimiter improperly starts a new scope"
#
# ctags -f - bug3094431.rb should output:
#
# classes:
#   Foo
#
# methods:
#   Foo.a
#   Foo.b
#   Foo.c
#   Foo.d
#   Foo.e
#   Foo.f
#   Foo.g
#   Foo.h
#   Foo.i
#

class Foo
  
  def a
    for i in [1, 2, 3] do
      print i, "\n"
    end
  end
  
  def b
    for i in [1, 2, 3]
      print i, "\n"
    end
  end
  
  def c
    for i in [1, 2, 3]; print i, "\n"; end
  end
  
  def d
    [1, 2, 3].each do |i|
      print i, "\n"
    end
  end
  
  def e
    i = 0
    until i == 3
      i += 1
      print i, "\n"
    end
  end
  
  def f
    i = 0
    until i == 3 do
      i += 1
      print i, "\n"
    end
  end
  
  def g
    i = 0
    while i < 3
      i += 1
      print i, "\n"
    end
  end
  
  def h
    i = 0
    while i < 3 do
      i += 1
      print i, "\n"
    end
  end
  
  def i
  end
end

f = Foo.new
f.a
f.b
f.c
f.d
f.e
f.f
f.g
f.h
f.i
