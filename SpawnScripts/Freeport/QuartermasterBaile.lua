--[[
    Script Name    : SpawnScripts/Freeport/QuartermasterBaile.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.13 08:07:07
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "",  "Someone needs to ensure that the Seafury's are well fed and have plenty to drink while on voyage.  It's my job to make sure they have what they need.", "agree", 1689589577, 4560189, Spawn) 
end

function respawn(NPC)

end

