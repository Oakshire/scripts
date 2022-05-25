--[[
    Script Name    : SpawnScripts/PeatBog/afaerieguardianstatic.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.05.25 12:05:37
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