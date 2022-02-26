--[[
    Script Name    : SpawnScripts/ForestRuins/aBlackfurlswabbie.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.26 05:02:55
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
   ChooseMovement(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end


function Action(NPC)
    local choice = MakeRandomInt(1, 3)
    if choice == 1 then
        PlayFlavor(NPC, "", "", "peer", 0, 0, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "yawn", 0, 0, Spawn)
    end
end

function ChooseMovement(NPC)
      if GetSpawnLocationID(NPC)== 133772824 then
	local choice = math.random(1, 4)
	if choice == 1 then
		clockwise1(NPC)
	elseif choice == 2 then
		clockwise2(NPC)
	elseif choice == 3 then
               counter_clockwise1(NPC)
	elseif choice == 4 then
               counter_clockwise2(NPC)
	end
end
end

function respawn(NPC)
	spawn(NPC)
end


function clockwise1(NPC)
	local x = GetX(NPC)
	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x + 1.5 , y, z - 2 , 2, math.random(2, 9))
	MovementLoopAddLocation(NPC, x - .5 , y, z - 3, 2, math.random(2, 9))
	MovementLoopAddLocation(NPC, x - 3, y, z + 2.5 , 2, math.random(2, 9))
		MovementLoopAddLocation(NPC, x     , y, z , 0 , math.random(5, 9))
	MovementLoopAddLocation(NPC, x + .5 , y, z + 2 , 2, math.random(2, 9))

end

function clockwise2(NPC)
	local x = GetX(NPC)
 	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x + 1 , y, z - 2 , 2, math.random(2, 9))
	MovementLoopAddLocation(NPC, x - 3.5 , y, z - .5 , 2, math.random(2, 9))
	MovementLoopAddLocation(NPC, x     , y, z + 1 , 2, math.random(2, 9))
		MovementLoopAddLocation(NPC, x     , y, z , 0 , math.random(5, 15),"Action")
	MovementLoopAddLocation(NPC, x + 2.5 , y, z + .5 , 2, math.random(2, 9))
end

function counter_clockwise1(NPC)
	local x = GetX(NPC)
	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x - 1.5 , y, z + 1 , 2, math.random(2, 15),"Action")
	MovementLoopAddLocation(NPC, x     , y, z , 0 , math.random(5, 9))
	MovementLoopAddLocation(NPC, x + .5 , y, z + 3, 2, math.random(2, 9))
	MovementLoopAddLocation(NPC, x + 2, y, z - 2.5 , 2, math.random(2, 10))
	MovementLoopAddLocation(NPC, x - .5 , y, z - 2 , 2, math.random(2, 10))
end

function counter_clockwise2(NPC)
	local x = GetX(NPC)
	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x - 1 , y, z + 2 , 2, math.random(2, 10))
	MovementLoopAddLocation(NPC, x + 1.5 , y, z + .5 , 2, math.random(2, 9))
	MovementLoopAddLocation(NPC, x     , y, z - 1 , 2, math.random(2, 15),"Action") 
	MovementLoopAddLocation(NPC, x     , y, z , 0 ,2, math.random(5, 10))
	MovementLoopAddLocation(NPC, x - 2.5 , y, z - .5 , 2, math.random(2, 10))
end

