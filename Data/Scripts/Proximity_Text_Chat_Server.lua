local distance = script:GetCustomProperty("distance")

Chat.receiveMessageHook:Connect(function(speaker, opts)
	local the_message = opts.message
	local speaker_pos = speaker:GetWorldPosition()

	opts.message = ""

	local in_range = {}

	for i, p in ipairs(Game.GetPlayers()) do
		local dist = (speaker_pos - p:GetWorldPosition()).size / 100

		if(dist <= distance) then
			in_range[#in_range + 1] = p
		end
	end

	Chat.BroadcastMessage("[All] " .. speaker.name .. ": " .. the_message, { players = in_range })
end)