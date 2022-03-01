--[[
    Script Name    : SpawnScripts/Freeport/ZulaTazil.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.13 08:07:28
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "", "The stuff's over there.  Just let me know if you find anything you like.", "ponder", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "Are you going to buy anything today or am I just wasting my time?  This isn't a museum display you know!", "glare", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 1689589577, 4560189, Spawn)
end
   end

function respawn(NPC)

end

