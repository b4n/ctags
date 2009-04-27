#
# ctags -f - bug1742588.rb should output:
#
# classes:
#   A
#   B
#
# methods
#   A.a
#   A.b
#   B.b_a
#   B.b_c
#

class A
 def a()
  super(" do ")
 end
 def b()
 end
end

class B
  def b_a
    File.open("foo", "r") do |infile|
      infile.readline
    end
  end

  def b_c
    print "bar"
  end
end
