--[[
	Script Name	: SpawnScripts/OutpostOverlord/OolarOmafa.lua
	Script Purpose	: Oolar Omafa <Guard>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "By will of the Overlord!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "A guard with brains and bite.  You'll definitely need me at some point.", "", 1689589577, 4560189, Spawn)
	else
	end

end

