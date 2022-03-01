--[[
    Script Name    : SpawnScripts/houseofroachie/MirrorofForgiveness.lua
    Script Author  : TyroneSWG
    Script Date    : 2021.02.14 06:02:43
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    
end

function hailed(NPC, Spawn)
    AddPrimaryEntityCommand(Spawn, NPC, "use")
end

function respawn(NPC)

end

