function createDir (dirname)
	os.execute("mkdir " .. dirname)
end

function removeDir (dirname) 
	os.execute "rm -r " .. dirname)
end

function entriesDir (dirname)
	local f = io.popen("ls -1" .. dirname, "r")
	dir = {}
	for entry in f:lines() do 
		dir[#dir + 1] = entry
	end
	return dir
end
