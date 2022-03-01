--[[
	Script Name	: SpawnScripts/QueensColony/aTaintedSapswillInvader.lua
	Script Purpose	: a Tainted Sapswill Invader
	Script Author	: John Adams
	Script Date	: 2008.10.27
	Script Notes	: 6 wandering sapswills, random destination coords
--]]

function spawn(NPC)
	local dest = math.random(1,3)
	if dest == 1 then
		MovementLoopAddLocation(NPC, 61.3, -4.2, 180.5, 2, 1)
		MovementLoopAddLocation(NPC, 64.5, -4, 193, 2, 1)
		MovementLoopAddLocation(NPC, 78, -4.3, 182.4, 2, 10)
	elseif dest == 2 then
		MovementLoopAddLocation(NPC, 75.9, -4.4, 160.5, 2, 1)
		MovementLoopAddLocation(NPC, 73.6, -4.3, 170.8, 2, 1)
		MovementLoopAddLocation(NPC, 81.2, -4.5, 172.4, 2, 10)
	else
		MovementLoopAddLocation(NPC, 75, -4, 171, 2, 10)
	end
end

function respawn(NPC)
	spawn(NPC)
end 