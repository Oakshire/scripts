--[[
    Script Name    : SpawnScripts/Nektulos/JhosTsein.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.20 07:07:45
    Script Purpose : 
                   : 
--]]

local JournalTranslationForTundisNoxyle = 5327
local PrayerJournalRetrieval = 5328

function spawn(NPC)
 SetPlayerProximityFunction(NPC, 10, "InRange")   
end

function InRange(NPC, Spawn)
  if HasCompletedQuest(Spawn, JournalTranslationForTundisNoxyle) then
  ProvidesQuest(NPC, PrayerJournalRetrieval)
    SetInfoFlag(NPC)
SetVisualFlag(NPC)
end
   end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/jhos_t_sein/nektulos/qst_jhostsein.mp3", "", "", 4261884380, 1040953011, Spawn)
    if HasQuest(Spawn, JournalTranslationForTundisNoxyle) then
     AddConversationOption(conversation, "Guess you're not interested in this journal that Tundis N'oxyle wanted you to examine...", "Option1")
     elseif HasCompletedQuest(Spawn, JournalTranslationForTundisNoxyle) and not HasQuest(Spawn, PrayerJournalRetrieval) and not HasCompletedQuest(Spawn, PrayerJournalRetrieval) then
     	AddConversationOption(conversation, "Have you finished the journal translation yet?", "Option3")
     elseif GetQuestStep(Spawn, PrayerJournalRetrieval) == 2 then
     	AddConversationOption(conversation, "I've returned with a prayer book from the temple.", "Option5")
     end
	AddConversationOption(conversation, "If that's the way you want to be, I hope the forest consumes you and your research.")
		StartConversation(conversation, NPC, Spawn, "Bother me not, whelp!  I've more pressing matters to attend.  I'm sure whatever you wish to tell me is of little importance, so go away.")
end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/jhos_t_sein/commonlands/quests/tundisnoxyle/qst_jhostsein_x2_initial.mp3", "", "", 3656399624, 405316062, Spawn)
	AddConversationOption(conversation, "That's right, he asked me to give you the journal to translate.", "Option2")
	StartConversation(conversation, NPC, Spawn, "So, that simpering fool sent you? I'll tolerate your presence long enough to examine this journal.  It's likely that Tundis couldn't translate the text because of its ancient dialect.")
end


function Option2(NPC, Spawn)
    SetStepComplete(Spawn, JournalTranslationForTundisNoxyle, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/jhos_t_sein/commonlands/quests/tundisnoxyle/qst_jhostsein_x2_finish.mp3", "", "", 2163683514, 665112678, Spawn)
	AddConversationOption(conversation, "I wasn't particularly anxious to return to Tundis anyway.")
	StartConversation(conversation, NPC, Spawn, "Of course, I am right.  Now give it to me, and I'll return it to Tundis when I finish. Even a simple translation like this could take weeks depending on the dialect and writing style of the book's previous owner.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/jhos_t_sein/nektulos/qst_jhostsein000.mp3", "", "", 1560403751, 3814848221, Spawn)
	AddConversationOption(conversation, "Keep talking if there's a reward involved.", "Option4")
		AddConversationOption(conversation, "I've had enough of that place.  I'll not return to the Gate.")
	StartConversation(conversation, NPC, Spawn, "Not yet. In fact, I can use your help ...  The journal you brought me tells of a temple erected to a fallen god or perhaps a pair of fallen gods. The text is unclear and I don't know either name in the book.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
     -- seems like this dialogue option doesn't have any playflavors, checked twice.
	AddConversationOption(conversation, "I still haven't heard anything about a reward.", "offer")
		AddConversationOption(conversation, "You're mad.  I'll never return there.")
	StartConversation(conversation, NPC, Spawn, "I'm too busy with this journal to assist you. You'll find priestly documents in the area, provided it has not been disturbed. You need to search the temple and return with what you find.")
end



function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
   -- seems like this dialogue option doesn't have any playflavors, checked twice.
	AddConversationOption(conversation, "If by exquisite you mean foul and demented, then yes.", "Option6")
	StartConversation(conversation, NPC, Spawn, "Excellent! This tome describes the rituals performed in honor of two fallen gods, the Twins of Torment. Thought to be Dymetreax and Byzola, they were the demigods of malice and fear.  I imagine you found exquisite statues and adornments in the temple.")
end

function Option6(NPC, Spawn)
    SetStepComplete(Spawn, PrayerJournalRetrieval, 2 )
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/jhos_t_sein/nektulos/quests/jhostsein/qst_jhostsein_x1_return2.mp3", "", "", 440180431, 3438279736, Spawn)
	AddConversationOption(conversation, "Very well, I will depart immediately for the Commonlands.")
	StartConversation(conversation, NPC, Spawn, "I must study this tome further.  Return this journal to Tundis; I am certain he'll reward you well for the translation. I realize I said I would return the journal, but this prayer book warrants more attention.  ")
end





function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, PrayerJournalRetrieval)
end


function respawn(NPC)
	spawn(NPC)
end