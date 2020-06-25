--[[
	Script Name	: SpawnScripts/ElddarGrove/SolomenStormwatch.lua
	Script Purpose	: Solomen Stormwatch 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "To be among the highest leaves and branches of a tree is to feel free.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "I too long for my home in Faydark.  Someday I am sure Tunare will answer us.", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "The city is not the most beautiful place in Norrath, but it is at least familiar.", "", 1689589577, 4560189, Spawn)
	else
	end

end

