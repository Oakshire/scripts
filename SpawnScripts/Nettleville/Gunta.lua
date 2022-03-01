--[[
	Script Name	: SpawnScripts/Nettleville/Gunta.lua
	Script Purpose	: Gunta <Assistant Alchemist>
	Script Author	: Scatman
	Script Date	: 2009.08.21
	Script Notes	: 
--]]

-- Quest ID's
local CURIOUS_FINDINGS = 301

function spawn(NPC)
end

function respawn(NPC)
   spawn(NPC)
end

function hailed(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   if HasCompletedQuest(Spawn, CURIOUS_FINDINGS) then
         Say(NPC, "I'm sorry but I'm still too busy to help.")
   elseif HasQuest(Spawn, CURIOUS_FINDINGS) then
      if GetQuestStep(Spawn, CURIOUS_FINDINGS) == 2 then
         INeedHelp(NPC, Spawn)
      else
         Say(NPC, "I'm sorry but I'm still too busy to help.")
      end
   else
      	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/gunta/qey_village01/qst_assistant_gunta_notonquest_8aefe111.mp3", "I am very, very busy.", "", 3535297404, 3189268893, Spawn)
   end
end

function INeedHelp(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/gunta/qey_village01/quests/assistant_gunta/assistant_gunta001.mp3", "", "", 1890824744, 2425957227, Spawn)
   AddConversationOption(conversation, "I need your help identifying a substance.", "dlg_21_1")
   StartConversation(conversation, NPC, Spawn, "I'm very busy right now.")
end

function dlg_21_1(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/gunta/qey_village01/quests/assistant_gunta/assistant_gunta002.mp3", "", "", 3053564610, 3469356584, Spawn)
   AddConversationOption(conversation, "But this is very important.", "dlg_21_2")
   StartConversation(conversation, NPC, Spawn, "I'm very busy sorting and labeling, sorry.")
end

function dlg_21_2(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/gunta/qey_village01/quests/assistant_gunta/assistant_gunta003.mp3", "", "", 1473302109, 3079393007, Spawn)
   AddConversationOption(conversation, "Is there nothing you can do to help me?", "dlg_21_3")
   StartConversation(conversation, NPC, Spawn, "So is this. If I don't get this done soon I may not be an assistant anymore!")
end

function dlg_21_3(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/gunta/qey_village01/quests/assistant_gunta/assistant_gunta004.mp3", "", "", 1009574595, 614031457, Spawn)
   AddConversationOption(conversation, "What about the Alchemist?", "dlg_21_4")
   StartConversation(conversation, NPC, Spawn, "Sorry, no!")
end

function dlg_21_4(NPC, Spawn)
   SetStepComplete(Spawn, CURIOUS_FINDINGS, 2)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/gunta/qey_village01/quests/assistant_gunta/assistant_gunta005.mp3", "", "", 4103083518, 610136263, Spawn)
   AddConversationOption(conversation, "Well... thanks, I guess.")
   StartConversation(conversation, NPC, Spawn, "I wouldn't bother talking to him. He has problems of his own to worry about.")
end