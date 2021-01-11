--[[
    Script Name    : SpawnScripts/Commonlands/amysteriouscontact.lua
    Script Author  : Premierio015
    Script Date    : 2021.01.10 06:01:22
    Script Purpose : 
                   : 
--]]

local SmugglersSecrets = 452


function spawn(NPC)
AddSpawnAccess(NPC, NPC)
SetPlayerProximityFunction(NPC, 20, "SpawnAccess", "SpawnAccess")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "tapfoot", 0, 0, Spawn)
    if HasQuest(Spawn, SmugglersSecrets) and GetQuestStep(Spawn, SmugglersSecrets) == 4 and HasSpellEffect(Spawn, 5459) then
    conversation = CreateConversation()
    AddConversationOption(conversation, "Sorry.  I was held up by some snooping Buccaneer.", "dlg2")
    AddConversationOption(conversation, "My apologies.  Do what you will with me, the scroll is the important item.", "dlg1")
    StartConversation(conversation, NPC, Spawn, "Hmm.  The time had past.  Luck is that I am forgiving.")
end
    end

function dlg1(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "I shall carry that message.", "dlg3")
  StartConversation(conversation, NPC, Spawn, "A point of such truths.  I am to relay that the next shipment is ready.")
end

function dlg2(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayAnimation(NPC, 13056)
conversation = CreateConversation()
AddConversationOption(conversation, "My apologies.  Do what you will with me, the scroll is the important item.", "dlg3")
StartConversation(conversation, NPC, Spawn, "Excuses do not flatter you.")
end

function dlg3(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, SmugglersSecrets, 4)
conversation = CreateConversation()
AddConversationOption(conversation, "Best of my ability.", "poof")
StartConversation(conversation, NPC, Spawn, "Good.  So far, the leader has been impressed.  Do see that it continues.")
end

function poof(NPC, Spawn)
 RemoveSpawnAccess(NPC, Spawn)
end




function respawn(NPC)
spawn(NPC)
end

function SpawnAccess(NPC, Spawn)
  if GetQuestStep(Spawn, SmugglersSecrets) == 4 then
   AddSpawnAccess(NPC, Spawn)
  elseif not HasQuest(Spawn, SmugglersSecrets) and not GetQuestStep(Spawn,SmugglersSecrets) == 4 then
  RemoveSpawnAccess(NPC, Spawn)
  end
end
