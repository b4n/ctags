#
# "keywords followed by a semicolon aren't recognized"
#
# ctags -f - bug2130612.rb should output:
#
# functions:
#   a
#   b
#   c
#   d
#   e
#   f
#   g
#   h
#   i
#

def a; yield nil; end; a {|a| fail unless (a == nil)}
def b; yield 1; end; b {|a| fail unless (a == 1)}
def c; yield []; end; c {|a| fail unless (a == [])}
def d; yield [1]; end; d {|a| fail unless (a == [1])}
def e; yield [nil]; end; e {|a| fail unless (a == [nil])}
def f; yield [[]]; end; f {|a| fail unless (a == [[]])}
def g; yield [*[]]; end; g {|a| fail unless (a == [])}
def h; yield [*[1]]; end; h {|a| fail unless (a == [1])}
def i; yield [*[1,2]]; end; i {|a| fail unless (a == [1,2])}
