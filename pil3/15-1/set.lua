-- Programming in Lua, Third Edition
-- Exercise 15.1: Rewrite the code in Listing 13.1 as a proper module

-- module setup
local set = {}

-- Import Section:
-- declare everything this module needs from outside
local pairs = pairs
local ipairs = ipairs
local print = print
local table = table

-- no more external access after this point
_ENV = nil

-- create a new set with the values of a given list
function set.new( a_list )
	local l_set = {}
	for _, v in ipairs( a_list ) do l_set[v] = true end
	return l_set
end

function set.union( a, b )
	local res = set.new{}
	for k in pairs( a ) do res[k] = true end
	for k in pairs( b ) do res[k] = true end
	return res
end

function set.intersection( a, b )
	local res = set.new{}
	for k in pairs( a ) do
		res[k] = b[k]
	end
	return res
end

-- presents a set as a string
function set.tostring( a_set )
	local l = {}  -- list to pull all elements from the set
	for e in pairs( a_set ) do
		l[#l + 1] = e
	end
	return "{" .. table.concat( l, ", " ) .. "}"
end

-- print a set
function set.print( a_set )
	print( set.tostring( a_set ) )
end

return set
