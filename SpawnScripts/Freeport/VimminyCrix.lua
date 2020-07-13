--[[
    Script Name    : SpawnScripts/Freeport/VimminyCrix.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.13 09:07:34
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Don't want none of you! Only out on official business of the Overlord!","no", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

