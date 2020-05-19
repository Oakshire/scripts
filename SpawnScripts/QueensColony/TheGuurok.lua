--[[
	Script Name	:	SpawnScripts/QueensColony/TheGuurok.lua
	Script Purpose	:	
	Script Author	:	
	Script Date	:	17.05.2020
	Script Notes	:	
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end
