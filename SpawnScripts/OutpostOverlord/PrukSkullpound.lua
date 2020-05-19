--[[
	Script Name	: SpawnScripts/OutpostOverlord/PrukSkullpound.lua
	Script Purpose	: Pruk Skullpound <Guard>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Burn the tents!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Bring em back!  We'll pound em into the dirt.", "", 1689589577, 4560189, Spawn)
	else
	end

end

