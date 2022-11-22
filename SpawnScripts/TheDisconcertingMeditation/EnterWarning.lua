--[[
    Script Name    : SpawnScripts/TheDisconcertingMeditation/EnterWarning.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.21 04:11:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
SetTempVariable(NPC, "Enter", "true")
end

function InRange(NPC,Spawn,Zone)
if GetTempVariable(NPC,"Enter")=="true" then
   SetTempVariable(NPC, "Enter", "false")
 
AddTimer(NPC,15000,"FirstWarning",1,Spawn)
AddTimer(NPC,60000,"SecondWarning",1,Spawn)
AddTimer(NPC,75000,"ThirdWarning",1,Spawn)
AddTimer(NPC,90000,"FourthWarning",1,Spawn)
AddTimer(NPC,91000,"Ending",1,Spawn)
end
end

function FirstWarning(Zone,Spawn)
    SendMessage(Spawn, "You begin to feel the meditation wane...","yellow")
    SendPopUpMessage(Spawn, "You begin to feel the meditation wane...",250,250,250)
    zone = GetZone(Spawn)
    SpawnByLocationID(zone,133780775)
    SpawnByLocationID(zone,133780776)
end

function SecondWarning(Zone,Spawn)
    SendMessage(Spawn, "Only a short time remains before you return to your body...","yellow")
    SendPopUpMessage(Spawn, "Only a short time remains before you return to your body...",250,250,250)
    zone = GetZone(Spawn)
    SpawnByLocationID(zone,133780777)
    SpawnByLocationID(zone,133780778)
    PlaySound(Spawn,"sounds/ui/ui_warning.wav", GetX(Spawn), GetY(Spawn), GetZ(Spawn))
end

function ThirdWarning(Zone,Spawn)
    SendMessage(Spawn, "Only a short time remains before you return to your body...","yellow")
    SendPopUpMessage(Spawn, "Only a short time remains before you return to your body...",250,250,250)
    zone = GetZone(Spawn)
    SpawnByLocationID(zone,133780779)
    SpawnByLocationID(zone,133780780)
    PlaySound(Spawn,"sounds/ui/ui_warning.wav", GetX(Spawn), GetY(Spawn), GetZ(Spawn))
end

function FourthWarning(Zone,Spawn)
    SendMessage(Spawn, "The mediation ends.","yellow")
    SendPopUpMessage(Spawn, "The mediation ends.",250,250,250)
end

function Ending(NPC,Spawn)
    NQ = GetZone("northqeynos")
       Zone(NQ,Spawn,281.55, -13.58, 97.29, 283.43)
        SpawnSet(Player,"visual_state",0)
end

function respawn(NPC)
	spawn(NPC)
end