--[[
	Script Name		: SpawnScripts/TimorousDeep/aChrykoriguard_patroller1.lua
	Script Purpose	: Roaming guards
	Script Author	: Scatman
	Script Date		: 2008-09-01
	Script Notes	: 
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -291.45, 13.40, -26.39, 2, 0)
	MovementLoopAddLocation(NPC, -318.23, 13.18, -46.63, 2, 0)
	MovementLoopAddLocation(NPC, -340.02, 9.96, -50.15, 2, 0)
	MovementLoopAddLocation(NPC, -358.45, 7.20, -44.42, 2, 0)
	MovementLoopAddLocation(NPC, -372.86, 2.94, -34.74, 2, 0)
	MovementLoopAddLocation(NPC, -367.47, 2.96, -20.96, 2, 0)
	MovementLoopAddLocation(NPC, -358.31, 2.28, -14.16, 2, 0)
	MovementLoopAddLocation(NPC, -370.31, 3.35, -25.42, 2, 0)
	MovementLoopAddLocation(NPC, -372.35, 2.83, -38.54, 2, 0)
	MovementLoopAddLocation(NPC, -349.62, 8.50, -50.10, 2, 0)
	MovementLoopAddLocation(NPC, -305.64, 13.16, -41.70, 2, 0)
	MovementLoopAddLocation(NPC, -282.62, 16.61, -17.80, 2, 0)
	MovementLoopAddLocation(NPC, -279.62, 20.50, -9.87, 2, 0)
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
	spawn(NPC)
end