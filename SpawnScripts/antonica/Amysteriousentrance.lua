--[[
    Script Name    : SpawnScripts/antonica/Amysteriousentrance.lua
    Script Author  : TyroneSWG
    Script Date    : 2020.07.02 03:07:48
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function used(NPC, Spawn)
    Say(NPC, "-wind whistles through the entrance-")
    Zone(Spawn, "antonica", 0, 0, 0)
end

function respawn(NPC)

end

