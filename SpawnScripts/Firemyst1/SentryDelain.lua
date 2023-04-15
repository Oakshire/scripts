--[[
    Script Name    : SpawnScripts/Firemyst1/SentryDelain.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.15 10:04:59
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
end

function respawn(NPC)
	spawn(NPC)
end

function movement_script(NPC, Spawn)
MovementLoopAddLocation(NPC, -1,088.97, -20.34, 744.10, 92.17, 2,  MakeRandomInt(10, 24))
	MovementLoopAddLocation(NPC,  -1,083.25, -19.47, 744.76, 143.77, 2,  MakeRandomInt(10, 24))
	MovementLoopAddLocation(NPC,  -1,085.06, -19.43, 747.45, 146.06, 2, MakeRandomInt(10, 24))
		MovementLoopAddLocation(NPC,  -1,097.65, -21.34, 748.57, 42.09, 2, MakeRandomInt(10, 24))
		MovementLoopAddLocation(NPC,  -1,098.46, -21.67, 746.02, 322.19, 2, MakeRandomInt(10, 24))
		MovementLoopAddLocation(NPC,  -1,097.30, -21.66, 743.78, 274.94, 2, MakeRandomInt(10, 24))
				MovementLoopAddLocation(NPC,  -1,091.18, -20.63, 744.73, 291.75, 2, MakeRandomInt(10, 24))
				MovementLoopAddLocation(NPC,  -1,086.03, -19.81, 744.93, 252.01, 2, MakeRandomInt(10, 24))
					MovementLoopAddLocation(NPC,  -1,083.46, -19.32, 745.92, 245.72, 2, MakeRandomInt(10, 24))
					MovementLoopAddLocation(NPC,  -1,095.30, -21.18, 745.68, 290.84, 2, MakeRandomInt(10, 24))
				MovementLoopAddLocation(NPC,  -1,098.28, -22.15, 740.17, 8.52, 2, MakeRandomInt(10, 24))
				MovementLoopAddLocation(NPC,  -1,098.28, -22.15, 740.17, 8.52, 2)
		
end