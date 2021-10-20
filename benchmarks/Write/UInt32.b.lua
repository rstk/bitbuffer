local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BitBuffer = require(ReplicatedStorage.Packages.BitBuffer)

return function(b)
	local buffer = BitBuffer.new()

	b.start()
	for i = 1, 2^14 do
		buffer:WriteUInt(32, i)
	end
	b.done()
end