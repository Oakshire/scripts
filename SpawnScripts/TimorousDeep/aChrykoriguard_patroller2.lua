--[[
	Script Name		: SpawnScripts/TimorousDeep/aChrykoriguard_patroller2.lua
	Script Purpose	: Roaming guards
	Script Author	: Scatman
	Script Date		: 2008-09-01
	Script Notes	: 
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -402.93, 1.80, -0.26, 2, 0)
	MovementLoopAddLocation(NPC, -447.74, 1.80, -0.42, 2, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	choice = math.random(1, 2)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/rok_questvo/a_chrykori_lookout/_exp04/exp04_rgn_timorous_deep/sarnak/sarnak_lookout_hail_a639754.mp3", "We can converse later if you like.", "", 2866606885, 2815871155, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/rok_questvo/a_chrykori_lookout/_exp04/exp04_rgn_timorous_deep/sarnak/sarnak_lookout_hail_dd9a183e.mp3", "Now is not the time.", "", 1408102759, 3899540373, Spawn)
	end
end

function respawn(NPC)
end
