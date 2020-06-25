--[[
    Script Name    : SpawnScripts/Commonlands/Smedley.lua
    Script Author  : TyroneSWG
    Script Date    : 2020.06.14 11:06:13
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Say(NPC, "You dare try to interrupt my plans?!")
end

function respawn(NPC)

end

