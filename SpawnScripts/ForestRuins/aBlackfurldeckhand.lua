--[[
    Script Name    : SpawnScripts/ForestRuins/aBlackfurldeckhand.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.26 01:02:01
    Script Purpose : Boat Pirate Script
                   : 
--]]

function spawn(NPC)
waypoints(NPC) 
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end



function waypoints(NPC)  
    
    if GetSpawnLocationID(NPC)== 133772812 then
	MovementLoopAddLocation(NPC, 964.49, -23.74, -951.31, 2, 2)
	MovementLoopAddLocation(NPC, 964.49, -23.74, -951.31, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 964.51, -23.73, -950.64, 2, 0)
	MovementLoopAddLocation(NPC, 984.10, -26.43, -966.72, 2, 0)
	MovementLoopAddLocation(NPC, 974.65, -26.44, -970.40, 2, 0)
	
	elseif GetSpawnLocationID(NPC) ==133772813 then
	MovementLoopAddLocation(NPC, 986.56, -23.19, -970.14, 2, 2)
	MovementLoopAddLocation(NPC, 986.56, -23.19, -970.14, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 987.42, -23.17, -967.87, 2, 0)
	MovementLoopAddLocation(NPC, 992.01, -23.14, -975.06, 2, 0)	    
	
end
end


function Action(NPC)
    local choiceA = MakeRandomInt(1, 4)
    if choiceA == 1 then
        PlayFlavor(NPC, "", "", "peer", 0, 0, Spawn)
    elseif choiceA == 2 then
        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    elseif choiceA == 3 then
        PlayFlavor(NPC, "", "", "confused", 0, 0, Spawn)
     elseif choiceA == 4 then
        PlayFlavor(NPC, "", "", "wave", 0, 0, Spawn)
    end
end
