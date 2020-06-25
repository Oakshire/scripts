--[[
    Script Name    : SpawnScripts/OutpostOverlord/CharlesArkerNook.lua
    Script Author  : Premierio015
    Script Date    : 2020.05.19 04:05:26
    Script Purpose : 
                   : 
--]]

local TheTunarianPlot = 491

function spawn(NPC)
AddSpawnAccess(NPC, NPC)
SetPlayerProximityFunction(NPC, 10, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
         spawn(NPC)
end

function SpawnAccess(NPC, Spawn)
  if GetQuestStep(Spawn, TheTunarianPlot) == 6 then
   AddSpawnAccess(NPC, Spawn)
  elseif GetQuestStep(Spawn, TheTunarianPlot) == 7 then
  RemoveSpawnAccess(NPC, Spawn)
  end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local conversation = CreateConversation()
    if GetQuestStep(Spawn, TheTunarianPlot) == 7 then
    PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker015.mp3", "", "beckon", 211277175, 1991489725, Spawn)
    AddConversationOption(conversation, "Except for the pieces I gave you earlier.", "dlg_01")
    AddConversationOption(conversation, "I don't know what you mean.")
    StartConversation(conversation, NPC, Spawn, "That note...do you have all of it?")
end
   end

function dlg_01(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   local conversation = CreateConversation()
   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker016.mp3", "", "", 3260893813, 1611040301, Spawn)
   AddConversationOption(conversation, "Aha! So you killed her.", "dlg_02")
   StartConversation(conversation, NPC, Spawn, "Good. I wrote this note -- that's probably what puzzled you. It contained a hidden message to Laena. I was...planning to meet her secretly.Then I realized how foolish that would be,but I had already sent her the note.")
end

function dlg_02(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   local conversation = CreateConversation()
   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker017.mp3", "", "no", 3523349076, 951813783, Spawn)
   AddConversationOption(conversation, "So you killed him?", "dlg_03")
   StartConversation(conversation, NPC, Spawn, "By the Overlord, no! I waited for her here, as pre-arranged.  She did not come and next thing you know, one of the other men gave me part of the note and told me to investigate the Tunarians.  I couldn't tell if he knew my secret or not.")
end

function dlg_03(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   local conversation = CreateConversation()
   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker018.mp3", "", "frustrated", 1033892853, 1591130234, Spawn)
   AddConversationOption(conversation, "Then who killed Laena?", "dlg_04")
   StartConversation(conversation, NPC, Spawn, "What is it with you and killing?  No! I was grateful for the chance to find the rest of my note and destroy it before anyone else realized I had signed it! I thought Laena might still have the rest of it...and you proved that she at least had some of it still.")
end


function dlg_04(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  SetStepComplete(Spawn, TheTunarianPlot, 6)
  local conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker019.mp3", "", "", 3736842700, 1947055506, Spawn)
  AddConversationOption(conversation, "I'll take care of this.")
  StartConversation(conversation, NPC, Spawn, "Perhaps a jealous lover, or maybe she was torn apart by the wilderbears.  You must keep this secret.  My family will never understand the...indiscretion...I showed.  Nothing happened between Laena and me, so it's best forgotten.  Get rid of these scraps for me.  I must go back before I'm missed.")
end
