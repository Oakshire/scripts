--[[
    Script Name    : SpawnScripts/WailingCaves/LordRee.lua
    Script Author  : premierio015
    Script Date    : 2020.06.30 09:06:01
    Script Purpose : 
                   : 
--]]



blackguard3_ID = 133769612
blackguard4_ID = 133769613
blackguard1_ID = 404841
blackguard2_ID = 404844

function spawn(NPC)
SetAggroRadius(NPC, 20, true)    
SetTempVariable(NPC, "HAILED1", "true") -- IMPORTANT, USED TO RESTRICT PLAYERS TO TALK WITH BOSS AND LAUNCH THE BOSS SCRIPT AGAIN UNTIL HE RESPAWNS
if GetTempVariable(NPC, "HAILED1") == "false" then
AddTimer(NPC, 1800000, "reset")
end
   end

function reset(NPC, Spawn)
SetTempVariable(NPC, "HAILED1", "true")
end

function hailed(NPC, Spawn)
    if GetTempVariable(NPC, "HAILED1")  == "true" then  -- IMPORTANT, USED TO RESTRICT PLAYERS TO TALK WITH BOSS AND LAUNCH THE BOSS SCRIPT AGAIN UNTIL HE RESPAWNS
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "lord_ree/wailingcaves/lord_ree/lord_ree000.mp3", "", "", 376398214, 2276802800, Spawn)
    AddConversationOption(conversation, "Your threats don't scare me!", "Phase1")
    AddConversationOption(conversation, "Yeah, good idea.")
    StartConversation(conversation, NPC, Spawn, "You are puny and weak!  Leave now or feel my wrath!")
  
end
   end


function respawn(NPC)
         spawn(NPC)
end

function Phase1(NPC, Spawn) 
SetTempVariable(NPC, "HAILED1", "false") -- IMPORTANT, USED TO RESTRICT PLAYERS TO TALK WITH BOSS AND LAUNCH THE BOSS SCRIPT AGAIN UNTIL HE RESPAWNS
local door = GetSpawn(NPC, 2580105)
CloseDoor(door)
PlayFlavor(NPC, "", "Ha ha ha!  Blackguards, take care of this rodent!", "cackle", 1689589577, 4560189, Spawn)

-- BELOW SPAWNS BLACKGUARDS AFTER THE SPEECH
local zone = GetZone(NPC)
blackguard1 = SpawnByLocationID(zone, blackguard1_ID)
blackguard2 = SpawnByLocationID(zone, blackguard2_ID)
blackguard3 = SpawnByLocationID(zone, blackguard3_ID)   
blackguard4 = SpawnByLocationID(zone, blackguard4_ID)
AddTimer(NPC, 3000,  "blackguard_attack", 1, Spawn)
end

function blackguard_attack(NPC, Spawn)
local zone = GetZone(NPC)
local blackguard1 = GetSpawnByLocationID(zone, blackguard1_ID)
local blackguard2 = GetSpawnByLocationID(zone, blackguard2_ID)
local blackguard3 = GetSpawnByLocationID(zone, blackguard3_ID)   
local blackguard4 = GetSpawnByLocationID(zone, blackguard4_ID)
Attack(blackguard1, Spawn)
Attack(blackguard2, Spawn)
Attack(blackguard3, Spawn)
Attack(blackguard4, Spawn)
end
   

-- BELOW MAKES CONCUBINE ATTACKABLE AND CHANGE THEIR APPEARANCE
function FinalPhase(NPC, Spawn)
local zone = GetZone(NPC)
local Concubine1 = GetSpawnByLocationID(zone, 404836)
local Concubine2 = GetSpawnByLocationID(zone, 133769549)
local Concubine3 = GetSpawnByLocationID(zone, 133769550)
local Concubine4 = GetSpawnByLocationID(zone, 133769551)
if Concubine1 ~= nil then
SpawnSet(Concubine1, "model_type", "2901")
SpawnSet(Concubine1, "attackable", "1")
SpawnSet(Concubine1, "show_level", "1")
SpawnSet(Concubine1, "faction", "1")
SpawnSet(Concubine2, "model_type", "2901")
SpawnSet(Concubine2, "attackable", "1")
SpawnSet(Concubine2, "show_level", "1")
SpawnSet(Concubine2, "faction", "1")
SpawnSet(Concubine3, "model_type", "2901")
SpawnSet(Concubine3, "attackable", "1")
SpawnSet(Concubine3, "show_level", "1")
SpawnSet(Concubine3, "faction", "1")
SpawnSet(Concubine4, "model_type", "2901")
SpawnSet(Concubine4, "attackable", "1" )
SpawnSet(Concubine4, "show_level", "1")
SpawnSet(Concubine4, "faction", "1")
SpawnSet(NPC, "attackable", "1")
SpawnSet(NPC, "show_level", "1")
SpawnSet(NPC, "faction", "1")
SendUpdateDefaultCommand(NPC,10000,"attack")
end
   end



