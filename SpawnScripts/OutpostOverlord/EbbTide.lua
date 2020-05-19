--[[
	Script Name	: SpawnScripts/OutpostOverlord/EbbTide.lua
	Script Purpose	: Ebb Tide <General Goods>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Got any goods for sale from your adventures?", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Welcome to Ebb Tide's Alehouse.", "", 1689589577, 4560189, Spawn)
	else
                PlayFlavor(NPC, "", "If you can trade it, I can buy it." "", 1689589577, 4560189, Spawn)
	end

end

