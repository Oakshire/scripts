--[[
    Script Name    : SpawnScripts/Freeport/Bullseye.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.10 08:08:39
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "", "I did not sign up for ANY of this!", "heckno", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "This is NOT the sort of trajectory analysis I thought we were conducting", "doh", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "The things a gnome has to do for research funding!", "sigh", 1689589577, 4560189, Spawn)
   end
end

function respawn(NPC)

end

