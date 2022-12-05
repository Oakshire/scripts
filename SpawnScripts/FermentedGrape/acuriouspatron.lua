--[[
    Script Name    : SpawnScripts/FermentedGrape/acuriouspatron.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.04 03:12:25
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
    local check = MakeRandomInt(1,2) 
    if check == 1 then
    PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_hail_gm_34b03729.mp3", "I'm sure we've met some place before.  You look so familiar!", "ponder", 1550233671, 4104979611, Spawn)
    elseif check == 2 then	
    PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_hail_gm_74b0fd50.mp3", "A good joke deserves a good audiance I always say.", "agree", 95315026, 2602312757, Spawn)
    end
	else
   PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_cf902b40.mp3", "Get on now!  There is plenty of work to be done.  Maybe you should lend a hand if you feel up to it.", "point", 1396062221, 310311489, Spawn)
end
end

function respawn(NPC)
	spawn(NPC)
end