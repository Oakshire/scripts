--[[
    Script Name    : SpawnScripts/Freeport/SidoniusBaro.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.22 08:07:12
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 4)
    if choice == 1 then
    PlayFlavor(NPC, "", "Poison testers, it's been my biggest seller for the past several months.  Of course poison was a close second. ", "ponder", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "Let me guess, you're looking for poison right?", "wink", 1689589577, 4560189, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "", "Be careful what you touch in here.  You're liable to kill us all!", "tapfoot",  1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "I need to get some eye of griffin, a bears paw, the heart of an innocent man.  That'll be tough in this city!", "confused", 1689589577, 4560189, Spawn) 
end
   end

function respawn(NPC)
         spawn(NPC)
end

