--[[
    Script Name    : SpawnScripts/Freeport/NaltarNXaana.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 07:07:53
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "", "They say Professor Romiak was slaughtered, however no one mentions anything about his family. I wonder if any of them survived.", "", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "Is it possible for an illusionist to get stuck in an illusion?", "ponder", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "I wonder if I'll be allowed to learn a Teir'Dal illusion. Would Queen Cristanos be mad if I do?", "ponder", 1689589577, 4560189, Spawn)
    end
end

function respawn(NPC)

end

