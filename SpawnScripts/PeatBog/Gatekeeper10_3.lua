--[[
    Script Name    : SpawnScripts/PeatBog/Gatekeeper10_3.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.05.17 06:05:35
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    
    

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end