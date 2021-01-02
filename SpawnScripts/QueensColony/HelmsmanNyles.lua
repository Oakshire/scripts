--[[
    Script Name    : SpawnScripts/QueensColony/HelmsmanNyles.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.27
    Script Purpose : Helmsman Nyles dialog
                   : 
--]]

function spawn(NPC)
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    choice = math.random(1,3)
    if choice == 1 then
        PlayFlavor(NPC, "", "Land!  I see land!", "", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
        Say(NPC, "Ale salts! We're havin' rudder storm!")
    else
        PlayFlavor(NPC, "", "Crazy!  What are you talking about?", "", 1689589577, 4560189, Spawn)
    end
end