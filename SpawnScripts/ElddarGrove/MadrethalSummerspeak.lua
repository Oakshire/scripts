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

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 648.84, -18.91, -234.92, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 646.07, -18.74, -257.91, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 606.34, -20.89, -257.81, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 642.56, -18.86, -258.37, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.43, -21.07, -288.05, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.37, -21.69, -293.22, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 651.99, -21.73, -305.33, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 647.05, -19.16, -323.38, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 647.29, -11.71, -388.38, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 658.21, -10.61, -396.95, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 680.99, -11.78, -392.94, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 697.53, -14.19, -410.92, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 701.38, -16.57, -426.35, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 709.3, -20.04, -448.29, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 712.45, -20.97, -456.77, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 744.98, -22.31, -472.95, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 768.56, -21.8, -495.14, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 780.53, -21.99, -508.32, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 803.66, -21.61, -551.4, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 780.53, -21.99, -508.32, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 768.56, -21.8, -495.14, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 744.98, -22.31, -472.95, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 712.45, -20.97, -456.77, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 709.3, -20.04, -448.29, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 701.38, -16.57, -426.35, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 697.53, -14.19, -410.92, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 680.99, -11.78, -392.94, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 658.21, -10.61, -396.95, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 647.29, -11.71, -388.38, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 647.05, -19.16, -323.38, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 651.99, -21.73, -305.33, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.37, -21.69, -293.22, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.43, -21.07, -288.05, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 642.56, -18.86, -258.37, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 606.34, -20.89, -257.81, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 646.07, -18.74, -257.91, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 648.84, -18.91, -234.92, 2, math.random(0,8))
end


