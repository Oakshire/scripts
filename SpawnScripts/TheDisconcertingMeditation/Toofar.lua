--[[
    Script Name    : SpawnScripts/TheDisconcertingMeditation/Toofar.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.21 05:11:29
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end


function InRange(NPC,Spawn)
SendPopUpMessage(Spawn,"You have stepped beyond the meditation and are awakened.",255,255,255)
SendMessage(Spawn,"You have stepped beyond the meditation and are awakened.","white")
    NQ = GetZone("northqeynos")
       Zone(NQ,Spawn,281.55, -13.58, 97.29, 283.43)
SpawnSet(Player,"visual_state",0)
end



function respawn(NPC)
	spawn(NPC)
end