--[[
    Script Name    : SpawnScripts/Freeport/aFreeportdweller.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.11 08:07:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if GetRace(NPC) == 14 and GetGender(NPC) == 1 then
    local choice = math.random(1, 7)
    if choice == 1 then
    PlayFlavor(NPC, "", "Me have many pieces of rat fur.  I is richest troll ever.", "yeah", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "Ripping and tearing, ripping and tearing, ripping and tearing, ripping...", "happy", 1689589577, 4560189, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "", "If I eats you now, I wouldn't know what you were going to say.", "wink", 1689589577, 4560189, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "", "Friends are good until you don't need them anymore.", "glare", 1689589577, 4560189, Spawn)
    elseif choice == 5 then
    PlayFlavor(NPC, "", "Me likes it when they are scared.  It tastes better that way.", "thanks", 1689589577, 4560189, Spawn)
    elseif choice == 6 then
    PlayFlavor(NPC, "", "OWW!!  Head hurts when I do that thing with my brain!  OW!!", "confused", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "The Overlord needs to let trolls eat more people.  He won't miss them.", "pout", 1689589577, 4560189, Spawn)
end
   end
      end

function respawn(NPC)

end

