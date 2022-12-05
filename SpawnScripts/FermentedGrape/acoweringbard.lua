--[[
    Script Name    : SpawnScripts/FermentedGrape/acoweringbard.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.04 02:12:23
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

   local greetingsTable = { "voiceover/english/voice_emotes/greetings/greetings_1_1011.mp3",
    						 "voiceover/english/voice_emotes/greetings/greetings_2_1011.mp3",
    						 "voiceover/english/voice_emotes/greetings/greetings_3_1011.mp3"};

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
    PlayFlavor(NPC,greetingsTable[math.random(#greetingsTable)]," Oh thank you so much! I was afraid they were going to kill me!","thanks",0,0,Spawn)
else
    PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 623352569, 1914748091, Spawn, 0)
end
end

function respawn(NPC)
	spawn(NPC)
end