--[[
    Script Name    : SpawnScripts/antonica/Amysteriousentrance.lua
    Script Author  : TyroneSWG
    Script Date    : 2020.06.14 10:06:42
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
Say(NPC, "-the hatch appears to be locked...-")
end

function respawn(NPC)
end

function used(NPC, Spawn)
Zone(1, Spawn, 0, 0, 0)
end

