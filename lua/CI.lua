language = {}
language["python"] = true, "python3"


local function Interpret()
	local filetype = vim.bo.filetype
	IsInter, Prog = language[filetype] 
	if language[filetype] ~= nil and IsInter then
		local command = ':call jobsend(b:terminal_job_id, "' .. Prog .. " " .. vim.fn.expand("%:p") .. '\\n")'
		print(command)
		vim.cmd(command)
	else
		print("Language not supported")
	end
end
