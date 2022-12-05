--[[
    Script Name    : SpawnScripts/FermentedGrape/apirateswabby.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.04 01:12:40
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function aggro(NPC,Spawn)
local zone = GetZone(NPC)
local Pirate1 = GetSpawnByLocationID(zone, 133781037) --FIRSTMATE  
local Pirate2 = GetSpawnByLocationID(zone, 133781036) --CUTTER  
local Pirate3 = GetSpawnByLocationID(zone, 133781038)   
local Pirate4 = GetSpawnByLocationID(zone, 133781039)   
local Pirate5 = GetSpawnByLocationID(zone, 133781035)   
local Pirate6 = GetSpawnByLocationID(zone, 133781034)   
local Captain = GetSpawnByLocationID(zone, 133781033)  

Attack(Pirate1,Spawn)
Attack(Pirate2,Spawn)
Attack(Pirate3,Spawn)
Attack(Pirate4,Spawn)
Attack(Pirate5,Spawn)
Attack(Pirate6,Spawn)
Attack(Captain,Spawn)
if GetRace(NPC)== 9 and GetGender(NPC)==1 then
	PlayFlavor(NPC, "voiceover/english/human_eco_farsea_1/ft/service/guard/human_guard_service_farsea_1_hail_gm_990c7e98.mp3", "What do you think you're looking at?", "", 2597948053, 2836713373, Spawn, 0)
end
end


function death(NPC,Spawn)
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
    if HasQuest(Spawn,5784) then
    SetStepComplete(Spawn,5784,1)
    end
SpawnSet(Bartender,"name","a relieved bartender")
SpawnSet(Bartender,"mood_state",0)
SpawnSet(Bartender,"action_state",11214)
SpawnSet(Bard,"name","a thankful bard")
SpawnSet(Bard,"mood_state",11854)
SpawnSet(Bard,"action_state",0)
SpawnSet(Bobick,"action_state",11422)
SpawnSet(Bobick,"name","a satisfied patron")
end
end
