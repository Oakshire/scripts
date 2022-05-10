--[[
	Script Name	    : SpawnScripts/ElddarGrove/WesaelanBrookshadow.lua
	Script Purpose	: Wesaelan Brookshadow 
	Script Author	: John Adams
	Script Date	    : 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local JournalOfElkare = 554
local RecoveryOfTheBloodsaberPlans = 555

function spawn(NPC)
    AddTimer(NPC, 5000, "EmoteLoop")    
ProvidesQuest(NPC,JournalOfElkare)
ProvidesQuest(NPC,RecoveryOfTheBloodsaberPlans)
--    AddTimer(NPC, 5000, "EmoteLoop")    
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
if GetFactionAmount(Spawn, 11) <0 then
    PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
    else
	PlayFlavor(NPC, "voiceover/english/optional4/wesaelan_brookshadow/brookshadow_01.mp3", "", "hello", 2834600234, 1504715618, Spawn)
        if not HasQuest(Spawn, JournalOfElkare) and not HasCompletedQuest(Spawn, JournalOfElkare) then
        AddConversationOption(conversation, "Is there anything I can assist the order with?", "dlg_01")
        end
        if GetQuestStep(Spawn, JournalOfElkare) == 2 then
        AddConversationOption(conversation, "I've returned with the tome, though I had to take it from a group of brigands.", "dlg_03")
        end
        if HasCompletedQuest(Spawn, JournalOfElkare) and not HasCompletedQuest(Spawn, RecoveryOfTheBloodsaberPlans) and not HasQuest(Spawn, RecoveryOfTheBloodsaberPlans) then
        AddConversationOption(conversation, "Did you ever happen to find out more about the tome?", "dlg_04")
        end
        if GetQuestStep(Spawn, RecoveryOfTheBloodsaberPlans) == 2 then
        AddConversationOption(conversation, "I managed to retrieve a letter from one of the Bloodsabers.", "RecoveryOfTheBloodsaberPlansComplete")
        end
        if HasCompletedQuest(Spawn, RecoveryOfTheBloodsaberPlans) and not HasQuest(Spawn, 5519) then
        AddConversationOption(conversation, "Who was it I needed to take the Bloodsaber note to again?", "RecoveryOfTheBloodsaberPlansComplete")
        end    
	    AddConversationOption(conversation, "Thank you, and good day to you.")
    	StartConversation(conversation, NPC, Spawn, "Hail traveler!  All friends of the Elddar are welcome.")
    end
end
-- JOURNAL OF ELKARE (QUEST 1)

function dlg_01(NPC, Spawn)
         FaceTarget(NPC, Spawn)
         conversation = CreateConversation()

         PlayFlavor(NPC, "voiceover/english/optional4/wesaelan_brookshadow/brookshadow_06.mp3", "", "ponder", 3658794713, 1958132476, Spawn)
         AddConversationOption(conversation, "I'm certainly interested.", "dlg_02")
         AddConversationOption(conversation, "If only I had more time myself...")
         StartConversation(conversation, NPC, Spawn, "I've uncovered the location of a tome hidden by Karana's  followers long before the gods left this world.  I recently discovered its location with the aid of Duvos.  My duties here do not permit the time to recover the tome. I can charge you with recovering this treasure - if you're capable of such an invaluable task.")
end

function dlg_02(NPC,Spawn)
        FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional4/wesaelan_brookshadow/brookshadow_07.mp3","","agree", 2198545159, 1480496199)
    AddConversationOption(conversation, "I can do this!", "qoffer")
    StartConversation(conversation, NPC, Spawn, "You will need to venture to the great oak in the fields outside the city where the tome has been hidden for many decades. You must thoroughly search the tree. Remember, the tome has been missing for many years. Use care when handling this precious treasure.")
end

function dlg_03(NPC, Spawn)
        FaceTarget(NPC, Spawn)
        conversation = CreateConversation()
        PlayFlavor(NPC, "voiceover/english/optional4/wesaelan_brookshadow/brookshadow_08.mp3", "", "boggle", 2710196423, 479366863, Spawn)
        AddConversationOption(conversation, "They mentioned using the tome to raise some great leader.", "JournalOfElkareComplete")
        StartConversation(conversation, NPC, Spawn, "Brigands!  How would they find the location of the tome? I don't believe mere bandits could achieve such a task. What did these fiends look like? Did they speak of anything peculiar?")
end


function JournalOfElkareComplete(NPC, Spawn)
     FaceTarget(NPC, Spawn)
     SetStepComplete(Spawn, JournalOfElkare, 2)
     conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/optional4/wesaelan_brookshadow/brookshadow_05.mp3", "", "", 3221820623, 129429736, Spawn)
     AddConversationOption(conversation, "My pleasure to be of service.")
     StartConversation(conversation, NPC, Spawn, "Please, say it isn't so ... Could they be attempting to raise an ancient Bloodsaber leader? How would this tome aid them in this task? To my knowledge, the tome is only a written historical record. Indeed, this requires further investigation! You've served us well, good friend. Take this coin with my blessing.")
end

-- RECOVERY OF THE BLOODSABER PLANS (QUEST 2)

function dlg_04(NPC, Spawn)
     FaceTarget(NPC, Spawn)
     conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/optional4/wesaelan_brookshadow/brookshadow_15.mp3", "", "thank", 2951793076, 1507607629, Spawn)
     AddConversationOption(conversation, "Interesting... that would explain the brigands...", "dlg_05")
     AddConversationOption(conversation, "Let them be.  I've no real quarrel with them.")
     StartConversation(conversation, NPC, Spawn, "I do thank you. I'm very glad you've returned, for I have an urgent matter to discuss with you. The Bloodsabers have been active. I know it's hard to believe, but the evidence cannot be denied.")
end 

function dlg_05(NPC, Spawn)
     FaceTarget(NPC, Spawn)
     conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/optional4/wesaelan_brookshadow/brookshadow_16.mp3", "", "", 111703684, 2397290337, Spawn)
     AddConversationOption(conversation, "I certainly can.", "qoffer2")
     StartConversation(conversation, NPC, Spawn, "According to the rumors, the more active members are lurking in the catacombs under the city. It's hard to find good help in the Down Below. We need you to penetrate the Vermin Snye and find out what the Bloodsabers' orders are. Can you do it?")
end

function RecoveryOfTheBloodsaberPlansComplete(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if GetQuestStep(Spawn, RecoveryOfTheBloodsaberPlans) == 2 then
    SetStepComplete(Spawn, RecoveryOfTheBloodsaberPlans, 2)
    end
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional4/wesaelan_brookshadow/brookshadow_18.mp3", "", "", 3046972163, 3011859959, Spawn)
    AddConversationOption(conversation, "I will speak with her immediately.")
    StartConversation(conversation, NPC, Spawn, "Take it to Captain Eitoa at once. The duty to stop this resurgence of the Bloodsabers has fallen on her shoulders. She's been watching their suspicious movements and will certainly welcome this piece of intelligence. The Bloodsabers will cease their scheming once and for all!")
end

function qoffer(NPC, Spawn)
       FaceTarget(NPC, Spawn)
       OfferQuest(NPC, Spawn, JournalOfElkare)
end

function qoffer2(NPC, Spawn)
       FaceTarget(NPC, Spawn)
        OfferQuest(NPC, Spawn, RecoveryOfTheBloodsaberPlans)
end

function EmoteLoop(NPC)
    local emoteChoice = MakeRandomInt(1,3)

    if emoteChoice == 1 then
-- ponder
        PlayAnimation(NPC, 12030)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- sniff
        PlayAnimation(NPC, 12329)
        AddTimer(NPC, MakeRandomInt(6000,9000), "EmoteLoop")	
    else
-- tapfoot
        PlayAnimation(NPC, 13056)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    end
end
