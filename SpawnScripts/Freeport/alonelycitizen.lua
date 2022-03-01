--[[
    Script Name    : SpawnScripts/Freeport/alonelycitizen.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.20 07:07:39
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    choice = math.random(1, 2)
    if choice == 1 then
    PlayFlavor(NPC, "", "Leave me be. I wish to sulk alone.", "", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "I'm at this table alone for a reason. Now leave me be!", "", 1689589577, 4560189, Spawn)
end
   end

function respawn(NPC)

end

