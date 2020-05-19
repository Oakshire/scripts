--[[
	Script Name		:	SpawnScripts/QueensColony/ataintedSapswillambusher.lua
	Script Purpose	:	Path the ambushers to their doom
	Script Author	:	Jabantiz
	Script Date		:	9/11/2016
	Script Notes	:	
--]]

function spawn(NPC)
	if GetSpawnLocationID(NPC) == 429588 then
		MoveToLocation(NPC, -51.9, 2.03, -152.31, 3)
	elseif GetSpawnLocationID(NPC) == 429491 then
		MovementLoopAddLocation(NPC, -85.97, 1.67, -183.84, 3)
		MovementLoopAddLocation(NPC, -70, 2.1, -178.69, 3)
		MovementLoopAddLocation(NPC, -51.42, 2.13, -165, 3)
		MovementLoopAddLocation(NPC, -51.97, 2.03, -152.1, 3, 60)
	elseif GetSpawnLocationID(NPC) == 429508 then
		MovementLoopAddLocation(NPC, -71.15, 3.24, -194.55, 3)
		MovementLoopAddLocation(NPC, -59.29, 3.78, -181.34, 3)
		MovementLoopAddLocation(NPC, -48.83, 2.38, -155.41, 3)
		MovementLoopAddLocation(NPC, -52.89, 2.03, -152.21, 3, 60)
	elseif GetSpawnLocationID(NPC) == 429657 then
		MovementLoopAddLocation(NPC, 18.29, 3.25, -222.27, 3)
		MovementLoopAddLocation(NPC, 4.28, 2.29, -207.62, 3)
		MovementLoopAddLocation(NPC, -5.31, 2.44, -183.86, 3)
		MovementLoopAddLocation(NPC, -13.56, 4.14, -174.91, 3)
		MovementLoopAddLocation(NPC, -27.47, 3.49, -168.66, 3)
		MovementLoopAddLocation(NPC, -45.68, 2.12, -159.96, 3)
		MovementLoopAddLocation(NPC, -52.86, 2.03, -150.91, 3, 60)
	end
end

function respawn(NPC)
	spawn(NPC)
end