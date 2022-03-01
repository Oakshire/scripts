--[[
    Script Name    : SpawnScripts/OutpostOverlord/aFieldInvestigator.lua
    Script Author  : premierio015
    Script Date    : 2020.05.19 10:05:44
    Script Purpose :  Zherran Tzizzink Investigator dialogue
                   : 
--]]

local TheTunarianPlot = 491
local CheckingOnCharles = 492

function spawn(NPC)
 AddSpawnAccess(NPC, NPC)
 SetPlayerProximityFunction(NPC, 15, "SpawnAccess", "SpawnAccess")
end

function SpawnAccess(NPC, Spawn)
  if HasCompletedQuest(Spawn, TheTunarianPlot) then
   AddSpawnAccess(NPC, Spawn)
   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_field_investigator/tutorial_island02_evil_revamp/quest/quest_zherran_tzizzink_callout_c03cb9c5.mp3", "You! I saw you put something into the fire! Come here!", "beckon", 1912960740, 848089373, Spawn)
 end
 if HasCompletedQuest(Spawn, CheckingOnCharles) then
   RemoveSpawnAccess(NPC, Spawn)
  end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local conversation = CreateConversation()
    if HasQuest(Spawn, CheckingOnCharles) and  GetQuestStep(Spawn, CheckingOnCharles) == 9 then
    AddConversationOption(conversation, "Good news: no one has even heard of Charles Arker.", "dlg_04")
    end
    if HasQuest(Spawn, CheckingOnCharles) then
    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_field_investigator/tutorial_island02_evil_revamp/quests/quest_zherran_tzizzink/zherran_tzizzink005.mp3", "", "", 2545265170, 1627911122, Spawn)
    AddConversationOption(conversation, "Not much.")
    StartConversation(conversation, NPC, Spawn, "What have you discovered?")
    end
    if not HasQuest(Spawn, CheckingOnCharles) and not HasCompletedQuest(Spawn, CheckingOnCharles) then
    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_field_investigator/tutorial_island02_evil_revamp/quests/quest_zherran_tzizzink/zherran_tzizzink001.mp3", "", "", 365850280, 1133468256, Spawn)
    AddConversationOption(conversation, "What are you talking about?", "dlg_01")
    AddConversationOption(conversation, "I don't know what you're talking about.")
    StartConversation(conversation, NPC, Spawn, "The fire burns hot, hiding all tracesss of what's inssside.")
    if HasCompletedQuest(Spawn, CheckingOnCharles) then
    PlayFlavor(NPC, "", "", "hello", 0 , 0, Spawn)
    end
      end
         end
    

function dlg_01(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_field_investigator/tutorial_island02_evil_revamp/quests/quest_zherran_tzizzink/zherran_tzizzink002.mp3", "", "", 3815675891, 3542744928, Spawn)
    AddConversationOption(conversation, "What of it?", "dlg_02")
    StartConversation(conversation, NPC, Spawn, "Just curious.  I know you've been ssssseen ssspeaking with Charlesss Arker lately.")
end

function dlg_02(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 local conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_field_investigator/tutorial_island02_evil_revamp/quests/quest_zherran_tzizzink/zherran_tzizzink003.mp3", "", "", 2101302763, 2956830664, Spawn)
 AddConversationOption(conversation, "That depends.", "dlg_03")
 StartConversation(conversation, NPC, Spawn, "Defiant, aren't we? Well, ".. GetName(Spawn) .. " -- don't look so surprised, of course I know your name -- there are those who would like more information about Mr. Arker's activites. I am Field Investigator Zherran Tzizzink. Can you help me?")
end

function dlg_03(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 local conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_field_investigator/tutorial_island02_evil_revamp/quests/quest_zherran_tzizzink/zherran_tzizzink004.mp3", "", "", 2748771750, 3991197872, Spawn)
 AddConversationOption(conversation, "I'll ssee...see what I can do.", "quest")
 AddConversationOption(conversation, "I'm not interested.")
 StartConversation(conversation, NPC, Spawn, "This task is not too difficult.  His fiancee's family would like ssome information.  Casually chat up some of the other Freeportians around here to see if any of them say anything.  Complete this task and you will be rewarded.")
end

function dlg_04(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, CheckingOnCharles, 9)
local conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_field_investigator/tutorial_island02_evil_revamp/quests/quest_zherran_tzizzink/zherran_tzizzink006.mp3", "", "", 1284325078, 382481848, Spawn)
AddConversationOption(conversation, "Couldn't happen to a nicer guy.") 
StartConversation(conversation, NPC, Spawn, "Interesting.  Charles had been sending word that he is very popular and renowned for his exploits.  Well, I suppose a little bragging beats a little infidelity.  The marriage will proceed as planned.")  
end
   
function quest(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, CheckingOnCharles)
local conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_field_investigator/tutorial_island02_evil_revamp/quests/quest_zherran_tzizzink/zherran_tzizzink007.mp3", "", "", 1860903025, 3285043812, Spawn)
AddConversationOption(conversation, "I'll be back.")
StartConversation(conversation, NPC, Spawn, "Exssssss-cellent.")
end

function discover(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_field_investigator/tutorial_island02_evil_revamp/quests/quest_zherran_tzizzink/zherran_tzizzink005.mp3", "", "", 2545265170, 1627911122, Spawn)
  AddConversationOption(conversation, "Not much.")
  StartConversation(conversation, NPC, Spawn, "What have you discovered?")
end

function respawn(NPC)
         spawn(NPC)
end


