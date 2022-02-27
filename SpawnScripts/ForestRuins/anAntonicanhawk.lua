--[[
    Script Name    : SpawnScripts/ForestRuins/anAntonicanhawk.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.26 04:02:53
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
ChoosePath(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function ChoosePath(NPC)
  	local route = math.random(1,2)
	if route == 1 then
	    RouteOne(NPC, Spawn)
	elseif route == 2 then
	    RouteTwo(NPC, Spawn)
	end
end

function RouteOne(NPC, Spawn)	
   x = GetX(NPC)
   y = GetY(NPC)
   z = GetZ(NPC)
   MovementLoopAddLocation(NPC, x - 7 , 0, z + 8 , 2, math.random(5, 45))
   MovementLoopAddLocation(NPC, x + 5 , 0, z + 10, 2, math.random(5, 45))
   MovementLoopAddLocation(NPC, x + 10, 0, z - 9 , 2, math.random(5, 45))
   MovementLoopAddLocation(NPC, x - 5 , 0, z - 8 , 2, math.random(5, 45))
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
   MovementLoopAddLocation(NPC, x - 5 , 0, z - 8 , 2, math.random(5, 45))	
   MovementLoopAddLocation(NPC, x + 10, 0, z - 9 , 2, math.random(5, 45))	
    MovementLoopAddLocation(NPC, x + 5 , 0, z + 10, 2, math.random(5, 45))
   MovementLoopAddLocation(NPC, x - 7 , 0, z + 8 , 2, math.random(5, 45))
  end
