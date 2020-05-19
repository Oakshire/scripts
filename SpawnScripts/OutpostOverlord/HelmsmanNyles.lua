--[[
	Script Name	: SpawnScripts/OutpostOverlord/HelmsmanNyles.lua
	Script Purpose	: Helmsman Nyles 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Crazy!  What are you talking about?", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Land!  I see land!", "", 1689589577, 4560189, Spawn)
	else
	end

end

