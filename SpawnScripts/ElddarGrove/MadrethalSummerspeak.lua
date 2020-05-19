--[[
	Script Name	: SpawnScripts/ElddarGrove/MadrethalSummerspeak.lua
	Script Purpose	: Madrethal Summerspeak 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,6)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_13f00546.mp3", "Patience they say, is a virtue.  It has taken a lot of patience to rebuild our lives so far from home.", "nod", 1108677104, 3869422611, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_fcb14e3e.mp3", "We must remain steadfast and vigilant against tyranny.  This will allow nature to shape Norrath around us.   ", "shakefist", 3130983522, 101511459, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_62f30b60.mp3", "The Elddar Grove is truly a marvel in these troubled times.  ", "sigh", 303722838, 1259846495, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_1568024c.mp3", "I see that you have many adventures ahead of you.  This era of darkness is coming to a close.", "ponder", 3567183056, 3400757896, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_75b61001.mp3", "Don't let the nice day fool you.  My knee is acting up, a storm is brewing.  I can smell it.", "stretch", 3641086231, 3980350899, Spawn)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_a2427d62.mp3", "They say time and nature heal all wounds.  Still, some wrongs can never be forgotten.", "sad", 2603397723, 1316741802, Spawn)
	else
	end

end

