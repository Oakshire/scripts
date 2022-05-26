--[[
    Script Name    : SpawnScripts/PeatBog/afaeriegatekeeper.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.05.25 02:05:36
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