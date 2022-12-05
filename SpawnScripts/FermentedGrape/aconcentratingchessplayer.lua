--[[
    Script Name    : SpawnScripts/FermentedGrape/aconcentratingchessplayer.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.04 03:12:23
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
local zone = GetZone(NPC)
local Pirate1 = GetSpawnByLocationID(zone, 133781037) --FIRSTMATE  
local Pirate2 = GetSpawnByLocationID(zone, 133781036) --CUTTER  
local Pirate3 = GetSpawnByLocationID(zone, 133781038)   
local Pirate4 = GetSpawnByLocationID(zone, 133781039)   
local Pirate5 = GetSpawnByLocationID(zone, 133781035)   
local Pirate6 = GetSpawnByLocationID(zone, 133781034)   
local Captain = GetSpawnByLocationID(zone, 133781033)

local Bartender = GetSpawnByLocationID(zone, 133781031)  
local Bard = GetSpawnByLocationID(zone, 133781032)  
local Bobick = GetSpawnByLocationID(zone, 133781027)  

if not IsAlive(Pirate1) and not IsAlive(Pirate2) and not IsAlive(Pirate3) and not IsAlive(Pirate4) and not IsAlive(Pirate5) and not IsAlive(Pirate6) and not IsAlive(Captain) then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/scribe_ommanoden/qey_village02/100_scribe_ommanoden_multhail1_becd50b2.mp3", "Can't you see I'm busy organizing my collections of wisdom? I've no time for chatting. Leave me alone!", "no", 3010394589, 1905118172, Spawn)
else
SendMessage(Spawn,"The chess player doesn't seem to acknowledge your pressence.")
end
end

function respawn(NPC)
	spawn(NPC)
end