--[[
    Script Name    : SpawnScripts/TheDisconcertingMeditation/AWarning.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.21 05:11:47
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end


function InRange(NPC,Spawn,Zone)
SendPopUpMessage(Spawn,"Stay back! You are near the edge of the vision.",255,0,0)
SendMessage(Spawn,"Stay back! You are near the edge of the vision.","red")
PlaySound(Spawn,"sounds/ui/ui_warning.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
end

function respawn(NPC)
	spawn(NPC)
end