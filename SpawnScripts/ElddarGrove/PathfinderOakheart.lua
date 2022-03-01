--[[
	Script Name	: SpawnScripts/ElddarGrove/PathfinderOakheart.lua
	Script Purpose	: Pathfinder Oakheart <Guard>
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_1568024c.mp3", "I see that you have many adventures ahead of you.  This era of darkness is coming to a close.", "ponder", 3567183056, 3400757896, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_fcb14e3e.mp3", "We must remain steadfast and vigilant against tyranny.  This will allow nature to shape Norrath around us.   ", "shakefist", 3130983522, 101511459, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Can you see the Elddar?  Its spirit can be felt in the beauty of the grove before you.", "", 1689589577, 4560189, Spawn)
	else
	end

end

