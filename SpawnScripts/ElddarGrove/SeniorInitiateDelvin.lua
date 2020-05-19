--[[
	Script Name	: SpawnScripts/ElddarGrove/SeniorInitiateDelvin.lua
	Script Purpose	: Senior Initiate Delvin 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "I wish I had the ability to keep the plants in my home happy.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Almost time to stop and have an ale, isn't it?", "wink", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Oh, my aching back!  As good a time to stop and chat as any, I say.", "yawn", 1689589577, 4560189, Spawn)
	else
	end

end

