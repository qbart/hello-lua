--[[
 comment block
]]

--[===[
	custom comment block
	a[b[x]]
--]===]

-- comment

print "Hello world"

-- iterate some data
for i = 1,100 do
	local s = "Lua " .. i
	io.write(s)
	io.write(", len: " .. #s .. "\n")
end

print(s)

-- using table
h = {}
h.x = 10
h.y = 20

for key, value in pairs(h) do
	print(key, " => ", value)
end


stdin = {}

print "type two numbers"

for i = 0,1 do stdin[i] = io.read() end

-- convert to numbers
for i = 0,1 do
	stdin[i] = tonumber(stdin[i]) or -1
end

print(
	"You've passed following numbers\n",
	"Number #1", stdin[0], "\n",
	"Number #2", stdin[1], "\n"
)

print "Trying to add:"
print("Sum = " .. (stdin[0] + stdin[1]))


-- string operations

s = "Lua Lua Lua Lua Lua Lua Lua Lua Lua Lua Lua"
print(s)

-- print vertical letters
for i = 1, #s do
	local single_character = s:sub(i,i)
	print(single_character)
end



function recursive_factorial(number)
	if number <= 1 then
		return 1
	else
		return number * recursive_factorial(number-1)
	end
end

print( string.format("5! = %d", recursive_factorial(5)) );


arr = {}
arr[0] = 'a'
arr[3] = 'b'
arr[10] = 'c'

for i=0, table.maxn(arr) do
	local tmp = arr[i]
	if tmp == nil then
		tmp = "nil"
	end

	print( string.format("a[%d] = %s", i, tmp) );
end


print("len " .. table.maxn(arr) + 1)


-- operators

for i = 1, 10 do
	if i % 2 == 0 then
		print( "even number is " .. i );
	end
end

step = 2
for i = 2, 10, step do
	print( "even number is " .. i );
end



print( "math.pi = " .. math.pi )
print( "math.floor(2.15) = " .. math.floor(2.15) )
print( "math.ceil(2.15) = " .. math.ceil(2.15) )
print( "math.abs(-2.15) = " .. math.abs(-2.15) )
print( "2^5 = " .. 2^5 )

print( "fractional part of PI = " .. math.pi%1 )
print( "integer part of PI = " .. math.pi - math.pi%1 )
print( "two decimal number = " .. math.pi - math.pi%0.01 )


