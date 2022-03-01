--[[
    Script Name    : SpawnScripts/Commonlands/WoundedScout.lua
    Script Author  : Premierio015
    Script Date    : 2020.11.07 06:11:25
    Script Purpose : Gives the quest "The Search for Bloodskull Valley(582)"
                   : 
--]]

local TheSearchForBloodskullValley = 582

function spawn(NPC)
ProvidesQuest(NPC, TheSearchForBloodskullValley)
SetPlayerProximityFunction(NPC, 15, "InRange", "LeaveRange", Spawn)
end

function InRange(NPC, Spawn)
FaceTarget(NPC, Spawn)
if not HasQuest(Spawn, TheSearchForBloodskullValley) and not HasCompletedQuest(Spawn, TheSearchForBloodskullValley) then
PlayFlavor(NPC, "", "All of them dead... we never had a chance...", "", 1689589577, 4560189, Spawn)
end
  end


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
if not HasQuest(Spawn, TheSearchForBloodskullValley) and not HasCompletedQuest(Spawn, TheSearchForBloodskullValley) then
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
AddConversationOption(conversation, "What choker?", "offer")
AddConversationOption(conversation, "I'm not interested.")
StartConversation(conversation, NPC, Spawn, "The orcs got everyone... the whole expedition was wiped out... I'm all that's left of a score of soldiers.  You've got to get this magic band to the others.... my wounds are too great for me to travel much longer...")
elseif HasQuest(Spawn, TheSearchForBloodskullValley) then
PlayFlavor(NPC, "", "Go... go tell them that we found Bloodskull Valley...", "", 1689589577, 4560189, Spawn)
end
   end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, TheSearchForBloodskullValley)
end

  

function respawn(NPC)

end

