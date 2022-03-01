--[[
	Script Name	: SpawnScripts/GreaterFaydark/GrullSilverstump.lua
	Script Purpose	: Grull Silverstump <Mender>
	Script Author	: John Adams
	Script Date	: 2009.02.05
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/mender_grull_silverstump/_exp03/exp03_rgn_greater_faydark/quest/nursery_mender_grull_silverstump_hello_ea00152d.mp3", "Ah used to be an adventurer like ye, but ah lost me leg ta a cranky bugbear and had ta give up the profession.  Luckily, ah could fall back on me smithy skills for a new stomper and livelihood!  Haha!", "converse_male01", 42384471, 1863204866, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/mender_grull_silverstump/_exp03/exp03_rgn_greater_faydark/quest/nursery_mender_grull_silverstump_hello_5c10e9eb.mp3", "Ah'll be takin' care o' any dings 'r dents ye get in yer gear.  Just bring 'em ta me!", "hello", 441968040, 2307457527, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/mender_grull_silverstump/_exp03/exp03_rgn_greater_faydark/quest/nursery_mender_grull_silverstump_hello_8d3b3b74.mp3", "The wee fae are pretty acceptin' o' outsiders if ye be respectful to 'em.  They really dunnae like the orcs, tho', which is jus' fine by me!", "hello", 1095614171, 2889548526, Spawn)
	else
	end

end

