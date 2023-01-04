--[[
    Script Name    : SpawnScripts/SummonerPets/Bubbles.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.27 03:11:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    
end

function attacked(NPC)
    
    
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end



function respawn(NPC)
	spawn(NPC)
end