--[[
    Script Name    : SpawnScripts/Generic/faytangleroot.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.05.24 10:05:39
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