--[[
    Script Name    : SpawnScripts/SerpentSewer/HiredGuardGazzuk.lua
    Script Author  : premierio015
    Script Date    : 2020.06.16 12:06:11
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = MakeRandomInt(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "", "Excuse... Me nasty!", "sorry", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "Me no eat things in here anymore... Tummy no feel good.", "", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "Mmm... Me no feel good.", "", 1689589577, 4560189, Spawn)
end
   end

function respawn(NPC)

end

