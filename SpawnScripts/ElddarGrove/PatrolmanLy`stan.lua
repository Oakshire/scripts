--[[
	Script Name	: SpawnScripts/ElddarGrove/PatrolmanLy`stan.lua
	Script Purpose	: Patrolman Ly`stan <Guard>
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_1568024c.mp3", "I see that you have many adventures ahead of you.  This era of darkness is coming to a close.", "ponder", 3567183056, 3400757896, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_27a6d736.mp3", "I find that a change in attitude often helps me steer through a difficult situation.", "agree", 1273495476, 2557846709, Spawn)
	else
	end

end

