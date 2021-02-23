--[[
    Script Name    : SpawnScripts/Commonlands/OrwenNeovra.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.21 09:02:56
    Script Purpose : 
                   : 
--]]

local TheSearchForArianna = 5211

function spawn(NPC)
ProvidesQuest(NPC, TheSearchForArianna)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if not HasQuest(Spawn, TheSearchForArianna) and not HasCompletedQuest(Spawn, TheSearchForArianna) then
    PlayFlavor(NPC, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra001.mp3", "", "", 1077223898, 923115266, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Who are you talking about?", "dlg1")
    AddConversationOption(conversation, "I'll stay out of your way.")
    StartConversation(conversation, NPC, Spawn, "She's gone! There was nothing I could do. Once I finish this cutter, that will all change. I got a few scars that I need to return to their dealers.")
elseif GetQuestStep(Spawn, TheSearchForArianna) == 1 then
   conversation = CreateConversation()
   PlayFlavor(NPC, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra004.mp3", "", "", 4138977626, 707724934, Spawn)
   AddConversationOption(conversation, "I'll return when I know more.")
 StartConversation(conversation, NPC, Spawn, "What word have you of my wife?  Why do you return?  Don't toy with me, less you wish I test my blade on your flesh.")
elseif GetQuestStep(Spawn, TheSearchForArianna) == 2 then
     conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra005.mp3", "", "", 3462277209, 3891009395, Spawn)
     AddConversationOption(conversation, "I have some news regarding Ariana.", "dlg2")
      StartConversation(conversation, NPC, Spawn, "That look on your face ... I fear what news you bear. ")
elseif HasCompletedQuest(Spawn, TheSearchForArianna) then
    completed(NPC, Spawn)
end
   end
  

function dlg1(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra002.mp3", "", "", 3552530226, 2927764176, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Maybe I could help look for her while you finish your weapon?", "offer")
 AddConversationOption(conversation, "I'll stay out of your way.")
StartConversation(conversation, NPC, Spawn, "My wife, Ariana.  Bleeding in the dust, I watched the orcs drag her away. But when I finish this blade, I'll retrieve her from the grasp of those evil orcs!")
end


function dlg2(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, TheSearchForArianna, 2)
PlayFlavor(NPC, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra006.mp3", "", "", 3164653633, 3625417674, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Thank you and good luck to you.")
 StartConversation(conversation, NPC, Spawn, "My beloved Ariana, she was a wonderful woman. I'll keep her memories along with this necklace. Now that she is gone, I have no need for this blade.  Here, take it with you.  Maybe it will serve you a better fate than it served me.")
end


function completed(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra007.mp3", "", "", 525715332, 1987571715, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Be at peace Orwen.")
 StartConversation(conversation, NPC, Spawn, "Leave me to grieve in peace. ")
end

function offer(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 OfferQuest(NPC, Spawn, TheSearchForArianna)
end

function respawn(NPC)

end