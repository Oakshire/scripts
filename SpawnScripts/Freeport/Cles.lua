--[[
    Script Name    : SpawnScripts/Freeport/Cles.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.21 04:08:51
    Script Purpose : 
                   : 
--]]

QUEST = 575


function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 4 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1032.mp3", "", "", 0, 0, Spawn)
    local  conversation = CreateConversation()
    AddConversationOption(conversation, "Listen to me?  I haven't tried to say anything yet!", "dlg01")
    StartConversation(conversation, NPC, Spawn, "You!  You can go away!  I do not need to listen to you!")
    else
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1032.mp3", "", "", 0, 0, Spawn)
end
   end


function dlg01(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayAnimation(NPC, 12028)
  local  conversation = CreateConversation()
  AddConversationOption(conversation, "You've heard voices speaking about the Dark Agenda?", "dlg02")
  StartConversation(conversation, NPC, Spawn, "Oh, but I hear your voice.  I've heard the whispers of the Dark Agenda!  You think you're going to wipe us all out, but you won't!  We'll get out of this city!  We'll go to Qeynos if we have to!")
  end

function dlg02(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  local  conversation = CreateConversation()
  AddConversationOption(conversation, "I promise I am not one of the roekillik followers.  I am here to help...", "progress")
  StartConversation(conversation, NPC, Spawn, "I have!  You don't think I can hear you, but I can!  You may fool others, but you'll never fool me!")
end


function progress(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  SetStepComplete(Spawn, QUEST, 4)
  PlayAnimation(NPC, 12182)
  local  conversation = CreateConversation()
  AddConversationOption(conversation, "I'll go then.  Farewell to you, Cles.")
  StartConversation(conversation, NPC, Spawn, "Just go!  I'll find a way out of this city, and I don't want you following me!")
end


function respawn(NPC)

end

