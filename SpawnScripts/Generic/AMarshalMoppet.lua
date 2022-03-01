--[[
    Script Name    : SpawnScripts/Generic/AMarshalMoppet.lua
    Script Author  : gloat
    Script Date    : 2019.03.13 11:03:53
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	MoveToLocation(NPC, -136.47, -27.87, 13.31)
	MoveToLocation(NPC, -120.72, -28.06, 31.08)
	MoveToLocation(NPC, -91.15, -27.36, 47.19)
	MoveToLocation(NPC, -75.40, -26.23, 49.19)
	MoveToLocation(NPC, -55.98, -23.94, 45.09)
	MoveToLocation(NPC, -46.13, -23.79, 35.59)
	MoveToLocation(NPC, -31.83, -22.88, -2.92)
	MoveToLocation(NPC, -28.87, -21.93, -17.82)
	MoveToLocation(NPC, -40.12, -24.66, -51.76)
	MoveToLocation(NPC, -79.19, -26.26, -78.91)
	MoveToLocation(NPC, -93.12, -26.65, -78.88)
	MoveToLocation(NPC, -121.52, -25.67, -73.38)
	MoveToLocation(NPC, -152.29, -25.14, -44.26)
	MoveToLocation(NPC, -148.48, -27.50, -5.96)
	MoveToLocation(NPC, -142.61, -27.77, 5.95)
	MoveToLocation(NPC, -139.73, -27.82, 10.20)
	
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

