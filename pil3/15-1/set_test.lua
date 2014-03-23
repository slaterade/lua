-- test harness for module set.lua

local set = require "set"

local list_a = { "a", "b", "c" }
local list_b = { 1, 2, 3, "c" }

local set_a = set.new( list_a )
local set_b = set.new( list_b )

set.print( set_a )
set.print( set_b )

local union_a_b = set.union( set_a, set_b )
local intersection_a_b = set.intersection( set_a, set_b )

set.print( union_a_b )
set.print( intersection_a_b )
