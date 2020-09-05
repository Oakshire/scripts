--[[
    Script Name    : SpawnScripts/BeggarsCourt2/HanneSleetsaber.lua
    Script Author  : Premierio015
    Script Date    : 2020.09.02 04:09:41
    Script Purpose : 
                   : 
--]]


local QUEST = 579
local Pup1LocationID = 133770922
local Pup2LocationID = 133770923
local HubbyID = 133770925

function spawn(NPC)

end




function hailed(NPC, Spawn)
    SetTempVariable(NPC, "HAILED1", "true")  
    FaceTarget(NPC, Spawn)
 if GetQuestStep(Spawn, QUEST) == 5 and GetTempVariable(NPC, "HAILED1")  == "true" then
  local conversation = CreateConversation()
  PlayFlavor(NPC, "hanne_sleetsaber/freeport_combined/quest/racial/barbarian/hanne_sleetsaber_001.mp3", "", "", 503980699, 1320517162, Spawn)
  AddConversationOption(conversation, "Your husband needs to convince our brethren to stay within Freeport.", "pups")
  StartConversation(conversation, NPC, Spawn, "Who are you?!  What do you want?")
  elseif GetQuestStep(Spawn, QUEST) == 6 then
  PlayFlavor(NPC, "", "You killed them!  You killed my pups, you monster!", "cry", 1689589577, 4560189, Spawn)
end
   end


function pups(NPC, Spawn)
SetTempVariable(NPC, "HAILED1", "false")
SetStepComplete(Spawn, QUEST, 5)
PlayFlavor(NPC, "", "You won't come into my house and threaten us, without a fight!  Attack them, my pups!", "point", 1689589577, 4560189, Spawn)
local zone = GetZone(NPC)
local Wife = GetSpawnByLocationID(zone, NPC)
if Wife ~= nil then
local Pup1 = SpawnByLocationID(zone, Pup1LocationID)
local Pup2 = SpawnByLocationID(zone, Pup2LocationID)
local Hubby = SpawnByLocationID(zone, HubbyID)
end
   end




function respawn(NPC)

end
