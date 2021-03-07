--[[
	Script Name		:	kelin.lua
	Script Purpose	:	Waypoint Path for kelin.lua
	Script Author	:	Devn00b
	Script Date		:	04/10/2020 04:25:35 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_hail_gf_910f06b6.mp3", "Tunare blesses those who remain faithful and trust in her return.", "", 2463890902, 2461742088, Spawn)
end

function respawn(NPC)
		spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 471.49, -11.52, 134.86, 2, 30)
	MovementLoopAddLocation(NPC, 492.73, -11.49, 142.63, 2, 0)
	MovementLoopAddLocation(NPC, 504.77, -11.33, 145.99, 2, 0)
	MovementLoopAddLocation(NPC, 541.76, -10.51, 150.92, 2, 0)
	MovementLoopAddLocation(NPC, 586.69, -10.45, 147.52, 2, 0)
	MovementLoopAddLocation(NPC, 617.7, -12.23, 145.18, 2, 0)
	MovementLoopAddLocation(NPC, 620.47, -16.55, 199.88, 2, 0)
	MovementLoopAddLocation(NPC, 681.38, -19.48, 184.04, 2, 0)
	MovementLoopAddLocation(NPC, 686.95, -19.55, 218.23, 2, 0)
	MovementLoopAddLocation(NPC, 633.6, -19.01, 232.23, 2, 0)
	MovementLoopAddLocation(NPC, 606.54, -18.21, 238.08, 2, 0)
	MovementLoopAddLocation(NPC, 568.86, -17.84, 244.62, 2, 0)
	MovementLoopAddLocation(NPC, 553.3, -17.73, 245.85, 2, 0)
	MovementLoopAddLocation(NPC, 507.03, -19.41, 244.95, 2, 0)
	MovementLoopAddLocation(NPC, 457.02, -22.22, 237.59, 2, 0)
	MovementLoopAddLocation(NPC, 467.51, -21.44, 207.57, 2, 0)
	MovementLoopAddLocation(NPC, 494.69, -11.72, 143.66, 2, 0)
	MovementLoopAddLocation(NPC, 530.06, -10.49, 150.63, 2, 0)
	MovementLoopAddLocation(NPC, 546.43, -10.22, 149.21, 2, 0)
	MovementLoopAddLocation(NPC, 546.74, -9.62, 141.81, 2, 0)
	MovementLoopAddLocation(NPC, 546.83, -9.56, 136.11, 2, 0)
	MovementLoopAddLocation(NPC, 558.08, -9.56, 134.2, 2, 0)
	MovementLoopAddLocation(NPC, 558.28, -9.56, 135.06, 2, 0)
	MovementLoopAddLocation(NPC, 558.55, -9.56, 136.18, 2, 0)
	MovementLoopAddLocation(NPC, 558.06, -9.56, 136.94, 2, 30)
	MovementLoopAddLocation(NPC, 558.55, -9.56, 136.18, 2, 0)
	MovementLoopAddLocation(NPC, 558.28, -9.56, 135.06, 2, 0)
	MovementLoopAddLocation(NPC, 558.08, -9.56, 134.2, 2, 0)
	MovementLoopAddLocation(NPC, 546.83, -9.56, 136.11, 2, 0)
	MovementLoopAddLocation(NPC, 546.74, -9.62, 141.81, 2, 0)
	MovementLoopAddLocation(NPC, 546.43, -10.22, 149.21, 2, 0)
	MovementLoopAddLocation(NPC, 530.06, -10.49, 150.63, 2, 0)
	MovementLoopAddLocation(NPC, 494.69, -11.72, 143.66, 2, 0)
	MovementLoopAddLocation(NPC, 467.51, -21.44, 207.57, 2, 0)
	MovementLoopAddLocation(NPC, 457.02, -22.22, 237.59, 2, 0)
	MovementLoopAddLocation(NPC, 507.03, -19.41, 244.95, 2, 0)
	MovementLoopAddLocation(NPC, 553.3, -17.73, 245.85, 2, 0)
	MovementLoopAddLocation(NPC, 568.86, -17.84, 244.62, 2, 0)
	MovementLoopAddLocation(NPC, 606.54, -18.21, 238.08, 2, 0)
	MovementLoopAddLocation(NPC, 633.6, -19.01, 232.23, 2, 0)
	MovementLoopAddLocation(NPC, 686.95, -19.55, 218.23, 2, 0)
	MovementLoopAddLocation(NPC, 681.38, -19.48, 184.04, 2, 0)
	MovementLoopAddLocation(NPC, 620.47, -16.55, 199.88, 2, 0)
	MovementLoopAddLocation(NPC, 617.7, -12.23, 145.18, 2, 0)
	MovementLoopAddLocation(NPC, 586.69, -10.45, 147.52, 2, 0)
	MovementLoopAddLocation(NPC, 541.76, -10.51, 150.92, 2, 0)
	MovementLoopAddLocation(NPC, 504.77, -11.33, 145.99, 2, 0)
	MovementLoopAddLocation(NPC, 492.73, -11.49, 142.63, 2, 0)
	MovementLoopAddLocation(NPC, 471.49, -11.52, 134.86, 2, 0)
end


