--[[
    Script Name    : SpawnScripts/Commonlands/SpiritofRaegnir.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.27 09:02:32
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "", "My pain is eternal.", "", 0, 0, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "Rest comes not.", "", 0, 0, Spawn)
    else
     PlayFlavor(NPC, "", "It is missing.", "", 0, 0, Spawn)    
end
   end

function respawn(NPC)

end

