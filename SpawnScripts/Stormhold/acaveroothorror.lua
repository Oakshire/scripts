--[[
    Script Name    : SpawnScripts/Stormhold/acaveroothorror.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.24 12:03:44
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