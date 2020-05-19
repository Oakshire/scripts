--[[
	Script Name	: SpawnScripts/OutpostOverlord/JonasRollings.lua
	Script Purpose	: Jonas Rollings <Guard>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Maybe I shouldn't have drank so much last night.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "One too many Coagulated Surprises last night is my guess.", "", 1689589577, 4560189, Spawn)
	else
	end

end

