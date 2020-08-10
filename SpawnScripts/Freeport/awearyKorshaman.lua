--[[
    Script Name    : SpawnScripts/Freeport/awearyKorshaman.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.08 06:08:07
    Script Purpose : 
                   : 
--]]

local QUEST = 573

function spawn(NPC)
ProvidesQuest(NPC, QUEST)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange", Spawn)
end

function InRange(NPC, Spawn)
if not HasQuest(Spawn, QUEST) and not HasCompletedQuest(Spawn, QUEST) then
PlayFlavor(NPC, "", "Please help me... hear my story and offer me succor.", "beg", 1689589577, 4560189, Spawn)
end
   end

function LeaveRange(NPC, Spawn)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if not HasQuest(Spawn, QUEST) and not HasCompletedQuest(Spawn, QUEST) then
    conversation = CreateConversation()
    PlayFlavor(NPC, "a_weary_kor_shaman/rivervale/a_froglok_kor_shaman001.mp3", "", "", 78117922, 557751502, Spawn)
    AddConversationOption(conversation, "What are you? How did you get here?", "dlg01")
    AddConversationOption(conversation, "Then I've no wish to speak with you.")
    StartConversation(conversation, NPC, Spawn, "Thank you for taking the time to speak with me... others here have been less than kind. Apparently my race is not welcome within these walls.")
    elseif HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 1 then
    PlayFlavor(NPC, "", "Have you found her yet? Have you found Kraofla?", "", 1689589577, 4560189, Spawn)
    end
    if GetQuestStep(Spawn, QUEST) == 3 then
    conversation = CreateConversation()
    PlayFlavor(NPC, "a_weary_kor_shaman/rivervale/a_froglok_kor_shaman007.mp3", "", "", 1428097901, 1746089657, Spawn)
    AddConversationOption(conversation, "Sadly, no. She died some time ago...", "dlg06")
    StartConversation(conversation, NPC, Spawn, "What news have you?  Does Kraofla yet live?")
    elseif HasCompletedQuest(Spawn, QUEST) then
    PlayFlavor(NPC, "", "Alas, I fear I am done for.", "cry", 1689589577, 4560189, Spawn)
   end
      end
        

function dlg01(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "a_weary_kor_shaman/rivervale/a_froglok_kor_shaman002.mp3", "", "", 1579095945, 1134301342, Spawn)
AddConversationOption(conversation, "So where did you come from?", "dlg02")
StartConversation(conversation, NPC, Spawn, "My sailing vessel was split asunder by lightning during a journey from the shores of our homeland. We were separated once more, and I ended up here. As to what I am, I am a froglok, a race which once was the chosen of Mithaniel Marr.")
end

function dlg02(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "a_weary_kor_shaman/rivervale/a_froglok_kor_shaman003.mp3", "", "", 1346313345, 2685946598, Spawn)
AddConversationOption(conversation, "What brings you here now?", "dlg04")
StartConversation(conversation, NPC, Spawn, "Centuries ago, during the sundering of the land, the froglok people were split as the Feerrott separated from our home in the swamps of Innothule. We have had no contact with those left in the Innothule in ages.")
end

function dlg04(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "a_weary_kor_shaman/rivervale/a_froglok_kor_shaman004.mp3", "", "", 3970573503, 3378633819, Spawn)
AddConversationOption(conversation, "What is it you would have me do? Free you?", "dlg05")
StartConversation(conversation, NPC, Spawn, "Hard times fell on us after the Sundering. The Tae'Ew, beloved of the dragon Venekor, sought something to appease their great new master. We were gathered and herded into their great temple. There, we have languished for an age, all but forgotten by the outside world.")
end

function dlg05(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "a_weary_kor_shaman/rivervale/a_froglok_kor_shaman005.mp3", "", "no", 2642317889, 3509737364, Spawn)
AddConversationOption(conversation, "I don't see how that could hurt anything.", "QuestOffer")
StartConversation(conversation, NPC, Spawn, "Nothing so dangerous, no. I seek only to know if any of the others made it to these shores.")
end

function dlg06(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "a_weary_kor_shaman/rivervale/a_froglok_kor_shaman008.mp3", "", "cry", 3634060435, 3397692321, Spawn)
AddConversationOption(conversation, "Perhaps there is hope for your other companions.", "dlg07")
StartConversation(conversation, NPC, Spawn, "My sorrow knows no bounds.  She was my life-mate.  May Marr guide her soul - for he surely has forsaken me as the gods have Norrath.")
end

function dlg07(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, QUEST, 3)
conversation = CreateConversation()
PlayFlavor(NPC, "a_weary_kor_shaman/rivervale/a_froglok_kor_shaman009.mp3", "", "no", 2539102289, 2238450698, Spawn)
AddConversationOption(conversation, "As you wish.")
StartConversation(conversation, NPC, Spawn, "Leave me now, I have nothing more to speak of. I must consider my situation.")
end

function QuestOffer(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, QUEST)
end


function respawn(NPC)

end

