function file_exists(file)
	local f = io.open(file, "rb")
	if f then f:close() end
	return f ~= nil
end

function include_dependencies(deplist, folder)
	file = '../' .. folder .. '/dependencies.txt'
	if not file_exists(file) then return end
	print('included ' .. folder)
	for linestring in io.lines(file) do
		for w in linestring:gmatch("%S+") do
			dep_path = w
		end
		if(not deplist[dep_path]) then
			include(dep_path)
			deplist[dep_path] = true
			print("New dependency '" .. dep_path .. "'")
			include_dependencies(deplist, dep_path)
		end
	end
end

include_dependencies({}, '.')
