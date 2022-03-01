--[[
    Script Name    : SpawnScripts/Freeport/GrandDukeLazarusHazran.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 06:08:03
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "", "If people were still worrying about survival, then they wouldn't be riled up about laws, now would they?!", "", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "Anyone that questions the law here in Freeport has something to hide, if you ask me.", "", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "Being kept safe doesn't stop some of these dim-witted citizens from getting their robes all up in a twist over our enforcement of law and order.", "", 1689589577, 4560189, Spawn)
    end 
end

function respawn(NPC)

end

