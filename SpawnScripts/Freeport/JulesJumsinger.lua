--[[
    Script Name    : SpawnScripts/Freeport/JulesJumsinger.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.06 07:08:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 4)
    if choice == 1 then
    PlayFlavor(NPC, "", "Get on with your business or watch out for your ankles is all I'll say.", "", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "What are you looking at, tallstuff?  Never seen a halfling in Freeport before?", "",  1689589577, 4560189, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "", "I can handle all your banking needs, big or small.", "", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "Welcome to the Coalition of Tradesfolke.  What's your business?", "", 1689589577, 4560189, Spawn)
  end
end

function respawn(NPC)

end

