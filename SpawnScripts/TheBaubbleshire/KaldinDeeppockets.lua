--[[
	Script Name	: SpawnScripts/TheBaubbleshire/KaldinDeeppockets.lua
	Script Purpose	: Kaldin Deeppockets <General Goods>
	Script Author	: Dorbin
	Script Date	: 2022.01.09
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local Delivery = 5444

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	ProvidesQuest(NPC, Delivery)
end

function respawn(NPC)
	spawn(NPC)
end

function LeaveRange(NPC, Spawn)
end

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")
ProvidesQuest(NPC, Delivery)
end

function InRange(NPC, Spawn) --Quest Callout Flavor
if math.random(1, 100) <= 75 then
    if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) then 
         choice = math.random(1,2)
             if choice ==1 then
             PlayFlavor(NPC, "", "", "frustrated", 0, 0, Spawn)
            else
             PlayFlavor(NPC, "", "", "grumble", 0, 0, Spawn)
            end
        else
        FaceTarget(NPC, Spawn)
            if choice ==1 then
            PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
            else
            PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
            end
        end
    end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
        if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) then 
        PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/barkeepdeeppockets000.mp3", "", "frustrated", 107874926, 2254072034, Spawn)
        conversation = CreateConversation()
         AddConversationOption(conversation, "I'm actually looking for work.", "Job1")
         AddConversationOption(conversation, "Actually, I'll speak to Bregun about a drink. Thanks.")
        StartConversation(conversation, NPC, Spawn, "What's all this madness?! Are Deeppockets working for someone else? What's become of us!? Enough of my woes. What's your order? Be quick with it.")
    
        elseif not HasCompletedQuest (Spawn, Delivery) and  HasQuest (Spawn, Delivery) then 
        FaceTarget(NPC, Spawn)
        conversation = CreateConversation()
            if GetQuestStep (Spawn, Delivery) == 2 then
            AddConversationOption(conversation, "I delievered the lager to Coppershot. He wanted me to give you this old stein.", "Delivered")
            end
        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3","","hello",0,0,Spawn)
        AddConversationOption(conversation, "I'm still heading to Graystone Yard. I'll be back.")
        StartConversation(conversation, NPC, Spawn, "Did Coppershot appreciate our latest batch?")
        
    else 
    choice = math.random(1,4)
	if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/100_barkeep_deeppockets_multhail1_b497dcb7.mp3", "My name is Deeppockets.  Pleased to meet you, I am!  Perhaps we'll talk again some day!", "", 3221951518, 4136363260, Spawn)
	--	PlayFlavor(NPC, "", "Might I interest you in some meat and cheese to go with that tall glass of ale?", "shrug", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/100_barkeep_deeppockets_multhail1_b497dcb7.mp3", "My name is Deeppockets.  Pleased to meet you, I am!  Perhaps we'll talk again some day!", "", 3221951518, 4136363260, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/100_barkeep_deeppockets_callout_d2d77b95.mp3", "Come over and meet one of the most famous brewmasters in Qeynos!", "", 2446853968, 3962612908, Spawn)
		--PlayFlavor(NPC, "", "The best part about this job is all the extra coin I get.", "wink", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/100_barkeep_deeppockets_callout_d2d77b95.mp3", "Come over and meet one of the most famous brewmasters in Qeynos!", "", 2446853968, 3962612908, Spawn)
    end
end


function respawn(NPC)
	spawn(NPC)
end

 function Job1(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/barkeepdeeppockets001.mp3", "", "agree", 635967568, 2169058204, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "I'll take any job you have.", "Job2")
    AddConversationOption(conversation, "Actually, I'll speak to Bregun about a drink. Thanks.")
  StartConversation(conversation, NPC, Spawn, "Its no shame to be out of work in these tough times. Keep your chin up, friend. In fact, if you're looking to make some coin, I could use your help right now!")
end   

 function Job2(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/barkeepdeeppockets002.mp3", "", "happy", 273979806, 1884621205, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "Sure, sounds like as good a job as any.", "QuestBegin")
    AddConversationOption(conversation, "Actually, I'll speak to Bregun about a drink. Thanks.")
  StartConversation(conversation, NPC, Spawn, "That's the spirit! See this jug of Lendel's Grand Lager? I need someone to deliever it to bartender Coppershot at the Frozen Tundra Tavern in Graystone Yard. Would you take it to him?")
end   

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Delivery)
end

 function Delivered(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/barkeepdeeppockets003.mp3", "", "boggle", 1808434879, 1588622317, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "Enjoy the stein! Glad I could help.", "Reward")
  StartConversation(conversation, NPC, Spawn, "A stein from the Fool's Gold Tavern?! This is rare, indeed! That ancient tavern disappeared long ago! Oh, this cheers my heart! Here, please accept this coin I promised to you.")
end   

function Reward(NPC, Spawn)
    	SetStepComplete(Spawn, Delivery, 2)
    end

end





