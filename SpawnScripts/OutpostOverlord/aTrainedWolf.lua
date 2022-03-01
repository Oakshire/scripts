--[[
    Script Name    : SpawnScripts/OutpostOverlord/aTrainedWolf.lua
    Script Author  : Cynnar
    Script Date    : 2017.01.17 12:01:01
    Script Purpose : Follow a Tunarian Wolfmaster
                   : 
--]]



function spawn(NPC)
	AddTimer(NPC, 500, "followmaster")
end

function followmaster(NPC, Spawn)
	local zone = GetZone(NPC)
	local wolfmasterplacement = GetSpawnByLocationID(zone, 394954)
	local sli = GetSpawnLocationID(NPC)
    if sli == 394887 then
		SetFollowTarget(NPC, wolfmasterplacement)
		if not IsFollowing(NPC) then
			SetSpeed(NPC , 1)
			ToggleFollow(NPC)
		end
    end
	
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	
end

function respawn(NPC)

end

