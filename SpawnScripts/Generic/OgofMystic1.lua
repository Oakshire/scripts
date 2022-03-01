--[[
   Script Name    : SpawnScripts/Generic/OgofMystic1.lua
    Script Author  : gloat
    Script Date    : 2019.02.03 01:02:21
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	AddTimer(NPC, 900, "follow_Ogof")

end

function follow_Ogof(NPC)
	local zone = GetZone(NPC)
	local captOgof = GetSpawnByLocationID(zone, 1585710)
	local whoAmI = GetSpawnLocationID(NPC)
	
	local ogofX = GetX(captOgof)
	local ogofY = GetY(captOgof)
	local ogofZ = GetZ(captOgof)
	local speed = 2
	
	if whoAmI == 1585709 then
		if GetDistance(NPC, captOgof) >= 5 then
				speed = 5
				MoveToLocation(NPC, ogofX + 4, ogofY, ogofZ + 4, speed)
		else
				speed = 2
				MoveToLocation(NPC, ogofX + 4, ogofY, ogofZ + 4, speed)
			end
	end
    speed = 2
	AddTimer(NPC, 1500, "follow_Ogof")	
end


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end