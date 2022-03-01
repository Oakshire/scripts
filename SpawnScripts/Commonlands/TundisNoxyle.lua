--[[
    Script Name    : SpawnScripts/Commonlands/TundisNoxyle.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.03 09:06:10
    Script Purpose : required NPC for fallen gate "Key to Fallen Gate" access quest, Provides quests "Delving Into Fallen Gate" and "Journal Translation For Tundis N'oxyle".
                   : 
--]]

local KeyToFallenGate = 5252
local DelvingIntoFallenGate = 5326
local JournalTranslationForTundisNoxyle = 5327
local PrayerJournalRetrieval = 5328

function spawn(NPC)
 SetPlayerProximityFunction(NPC, 10, "InRange")   
end

function InRange(NPC, Spawn)
  if HasCompletedQuest(Spawn, KeyToFallenGate) then
  ProvidesQuest(NPC, DelvingIntoFallenGate)
    SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, DelvingIntoFallenGate) then
  ProvidesQuest(NPC, JournalTranslationForTundisNoxyle)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
end 
   end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if GetQuestStep(Spawn, KeyToFallenGate) == 1 then
	AddConversationOption(conversation, "I can assist you with your work here.  I come to join the Thexian loyalists in uncovering Neriak.", "Option1")
	elseif GetQuestStep(Spawn, KeyToFallenGate) == 3 then
	AddConversationOption(conversation, "I've returned with the stones to prove my worth.", "Option3")
	elseif HasCompletedQuest(Spawn, KeyToFallenGate) and not HasQuest(Spawn, DelvingIntoFallenGate) and not HasCompletedQuest(Spawn, DelvingIntoFallenGate) then
	AddConversationOption(conversation, "Important discovery?  Perhaps you have something you need assistance with?", "Option4")
	elseif GetQuestStep(Spawn, DelvingIntoFallenGate) == 2 then
	AddConversationOption(conversation, "I hardly think that returning to you with the information you seek qualifies as an interruption.", "Option7")
	elseif HasCompletedQuest(Spawn, DelvingIntoFallenGate) and not HasQuest(Spawn, JournalTranslationForTundisNoxyle) and not HasCompletedQuest(Spawn, JournalTranslationForTundisNoxyle) then
	AddConversationOption(conversation, "Have you been able to translate the journal yet?", "Option9")
	elseif GetQuestStep(Spawn, PrayerJournalRetrieval) == 3 then
		AddConversationOption(conversation, "I've returned with the journal and the translation.", "Option11")
	end	
	AddConversationOption(conversation, "I'm not interested in speaking with you either.")
	StartConversation(conversation, NPC, Spawn, "Do not interrupt what is undoubtedly the most important discovery in the past three hundred years.  Be gone, I have much work to attend to here.")
	PlayFlavor(NPC, "voiceover/english/tundis_n_oxyle/commonlands/qst_tundisnoxyle.mp3", "", "", 1179760403, 1179389139, Spawn)
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I've not come this far only to slink away.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Is that so? First you must prove yourself. Strength of mind and body is required in the deep halls. The weak are worthless to us.")
	PlayFlavor(NPC, "voiceover/english/tundis_n_oxyle/commonlands/qst_tundisnoxyle001.mp3", "", "", 2912576524, 2398521485, Spawn)
end

function Option2(NPC, Spawn)
    SetStepComplete(Spawn, KeyToFallenGate, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You shall not wait long.")
	StartConversation(conversation, NPC, Spawn, "As you wish.  There are giants in this valley made from the living rock. Bring me five stones from the bodies of these creatures, and I will know that you are strong enough to be one of us.")
	PlayFlavor(NPC, "voiceover/english/tundis_n_oxyle/commonlands/qst_tundisnoxyle002.mp3", "", "", 2361598359, 1658238525, Spawn)
end


function Option3(NPC, Spawn)
    SetStepComplete(Spawn, KeyToFallenGate, 3)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will attend... with honor...")
	StartConversation(conversation, NPC, Spawn, "So you have.  In order to become a member of the Thexian loyalists, you will need to be ordained and formally welcomed to our ranks.  You will join our group at the meeting in Freeport and receive a key to the Gate. Now, leave me to continue my research.")
	PlayFlavor(NPC, "voiceover/english/tundis_n_oxyle/commonlands/qst_tundisnoxyle003.mp3", "", "", 2372701210, 2129157187, Spawn)
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/tundis_n_oxyle/commonlands/quests/tundisnoxyle/qst_tundisnoxyle_x1_initial.mp3", "", "", 1939919409, 3297458446, Spawn)
	AddConversationOption(conversation, "Is that where this gate leads?", "Option5")
	StartConversation(conversation, NPC, Spawn, "I've spent the better part of my life filled with the desire to return to our ancestral homeland.  Freeport is a pit of common filth and fills me with loathing that you cannot begin to comprehend.  Now, on the eve of our return to the great lost city of Neriak, I shall not be deterred.")
end


function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/tundis_n_oxyle/commonlands/quests/tundisnoxyle/qst_tundisnoxyle_x1_initial2.mp3", "", "", 3603061843, 527661087, Spawn)
	AddConversationOption(conversation, "There can be no glory for a dark elf afraid to explore his native land.", "Option6")
		AddConversationOption(conversation, "I'd be willing to explore it.", "Option6")
	StartConversation(conversation, NPC, Spawn, "Yes, but we've still much to learn before sending down more victims...  I mean, scouting parties.  While we are certain that we have tunneled into the far side of what used to be the old Foreign Quarter of Neriak, we still remain unaware of what lies in store for us.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/tundis_n_oxyle/commonlands/quests/tundisnoxyle/qst_tundisnoxyle_x1_initial3.mp3", "", "", 3620122356, 2273516469, Spawn)
	AddConversationOption(conversation, "That pit doesn't scare me. Reward is what I'm after.", "offer")
	AddConversationOption(conversation, "First you tell me to leave, and insult me, and now you want me to help? No thanks.")
	StartConversation(conversation, NPC, Spawn, "So simple a task as you think, it is not.  There is much reward for those that would be willing to assist us, the loyal followers of the Thexian empire.  You seem to bear no fear of the tomb we have uncovered - what say you to venturing into them and bringing back lore that you may find?")
end


function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/tundis_n_oxyle/commonlands/qst_tundisnoxyle000.mp3", "", "", 861767312, 2503494533, Spawn)
	AddConversationOption(conversation, "I've found a journal, though it's mostly illegible.", "Option8")
	StartConversation(conversation, NPC, Spawn, "I care not for what you imagine is an interruption... Let me look at what you've brought me.")
end


function Option8(NPC, Spawn)
    SetStepComplete(Spawn, DelvingIntoFallenGate, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
      PlayFlavor(NPC, "voiceover/english/tundis_n_oxyle/commonlands/quests/tundisnoxyle/qst_tundisnoxyle_x1_finish.mp3", "", "", 72160668, 15364034, Spawn)
	AddConversationOption(conversation, "I'll take these secrets to my grave.")
	StartConversation(conversation, NPC, Spawn, "Of course you cannot decipher these ancient writings. Take your reward and begone.  May Innoruuk strike you down if you dare mention what you have seen to others.")
end

function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/tundis_n_oxyle/commonlands/quests/tundisnoxyle/qst_tundisnoxyle_x2_initial.mp3", "", "", 1146649908, 836292020, Spawn)
	AddConversationOption(conversation, "Common?  I didn't see you exploring the ruins of Neriak.", "Option10")
		AddConversationOption(conversation, "I wish nothing more to do with you if that's how you feel.")
	StartConversation(conversation, NPC, Spawn, "No, it has proven more difficult to translate than I had anticipated.  The dialect we use today derives its lesser and base inflections from our association with the common residents of Freeport.")
end


function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/tundis_n_oxyle/commonlands/quests/tundisnoxyle/qst_tundisnoxyle_x2_initial2.mp3", "", "", 4210594399, 3460800053, Spawn)
	AddConversationOption(conversation, "Nektulos is a big place, and my pockets are feeling a little light...", "offer2")
	AddConversationOption(conversation, "No way.  I'm not doing any more of your dirty-work.")
	StartConversation(conversation, NPC, Spawn, "Nonetheless, I am in need of assistance. I would charge you with the task of delivering this journal to an associate of mine, Jhos T'sein. Last I heard, he had discovered ancient writings in the Nektulos forest.")
end


function Option11(NPC, Spawn)
    SetStepComplete(Spawn, PrayerJournalRetrieval, 3)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
     -- seems like this dialogue option doesn't have any playflavors, checked twice.
	AddConversationOption(conversation, "You would have to pry it from my dead fingers if you did change your mind.")
	StartConversation(conversation, NPC, Spawn, "It pains me to say this, but thank you.  Without your assistance in these matters, we would not be this much closer to unraveling the mystery surrounding the disappearance of Neriak.  Take this as payment for services rendered, but go quickly before I change my mind.")
end



function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, DelvingIntoFallenGate)
end

function offer2(NPC, Spawn)
OfferQuest(NPC, Spawn, JournalTranslationForTundisNoxyle)
end




function respawn(NPC)
	spawn(NPC)
end