--[[
    Script Name    : SpawnScripts/SinkingSands/abarbedswordfish.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.06.09 10:06:38
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