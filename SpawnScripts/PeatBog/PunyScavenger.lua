--[[
    Script Name    : SpawnScripts/PeatBog/PunyScavenger.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.05.18 04:05:17
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
   
end

function ChooseMovement(NPC)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC, Spawn)
	elseif route == 2 then
	    RouteTwo(NPC, Spawn)
	elseif route == 3 then
	    RouteThree(NPC, Spawn)
	elseif route == 4 then
	    RouteFour(NPC, Spawn)
	end
end



function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end