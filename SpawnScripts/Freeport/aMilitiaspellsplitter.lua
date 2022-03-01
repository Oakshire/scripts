--[[
    Script Name    : SpawnScripts/Freeport/aMilitiaspellsplitter.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 08:08:48
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 4)
    if choice == 1 then
    PlayFlavor(NPC, "", "She was sadly mistaken if she thought she could retreat to the protection of Queen Thex.", "", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "Darkbriar will pay for her crimes against the state.", "", 1689589577, 4560189, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "", "Neriak was more than willing to hand over this traitor as part of the ''treaty.''", "", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "It was Darkbriar's hastily hidden trail that led us right to Neriak's doorstep.", "", 1689589577, 4560189, Spawn)
end
   end

function respawn(NPC)

end

