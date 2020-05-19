--[[
	Script Name	: Quests/FrostfangSea/arygorrcenturion.lua 
	Script Purpose	: the spawn "a Ry'Gorr centurion"
	Script Author	: theFoof
	Script Date	: 2013.5.16
--]]

function spawn(NPC)	
	MovementLoopAddLocation(NPC, -304.78 + math.random(-7,7), 18.51, -611.98, 3, math.random(2,6))
    MovementLoopAddLocation(NPC, -321.28 + math.random(-7,7), 27.91, -659.17 + math.random(-7,7), 4, math.random(2,6))
    if GetSpawnLocationID(NPC) == 572680 or GetSpawnLocationID(NPC) == 572681 then
        MovementLoopAddLocation(NPC, -319.99, 33.45, -703.09, 7, math.random(3,4))
	    MovementLoopAddLocation(NPC, -312.91, 33.33, -707.07, 3, math.random(1,2))
	    MovementLoopAddLocation(NPC, -324.50, 33.89, -702.57, 3, math.random(4,7))
	    MovementLoopAddLocation(NPC, -312.91, 33.33, -707.07, 3, math.random(4,7))
    elseif GetSpawnLocationID(NPC) == 572682 or GetSpawnLocationID(NPC) == 572683 then
        MovementLoopAddLocation(NPC, -344.56, 33.45, -699.75, 7, math.random(3,4))
	    MovementLoopAddLocation(NPC, -338.27, 34.1, -701.33, 3, math.random(1,2))
	    MovementLoopAddLocation(NPC, -347.24, 32.61, -697.9, 3, math.random(4,7))
	    MovementLoopAddLocation(NPC, -360.37, 34.7, -702.44, 7, math.random(5,10))
	    MovementLoopAddLocation(NPC, -338.27, 34.1, -701.33, 3, math.random(4,7))
    elseif GetSpawnLocationID(NPC) == 572684 then
        MovementLoopAddLocation(NPC, -360.37, 34.7, -702.44, 7, math.random(5,20))
    end
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function death(NPC)
    SpawnByLocationID(GetZone(NPC), GetSpawnLocationID(NPC))
end