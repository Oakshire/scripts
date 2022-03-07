--[[
	Script Name	: SpawnScripts/Graystone/AssistantTillheel.lua
	Script Purpose	: Assistant Tillheel <Alchemist>
	Script Author	: Dorbin
	Script Date	: 2022.03.06
	Script Notes	:
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	ProvidesQuest(NPC, 5498)
end

function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/assistant_tillheel/qey_village03/assistanttillheel000.mp3", "", "", 748641237, 3356738202, Spawn)
 
    if GetQuestStep(Spawn,5499)== 1 then
    AddConversationOption(conversation, "I'm actually here to deliver a potion", "Delivery")
    end   
    if  GetQuestStep(Spawn,5498)== 2 then 
    AddConversationOption(conversation, "I have your shriller wings", "WingDelivery")
    end
    if not HasCompletedQuest(Spawn,5498) then
    AddConversationOption(conversation, "Who is Mr.Clark?", "Clark")
    end
    if  HasCompletedQuest(Spawn,5498) then
    AddConversationOption(conversation, "Remind me. Who is Mr.Clark?", "Clark")
    end
    AddConversationOption(conversation, "I'm just browsing.")
    StartConversation(conversation, NPC, Spawn, "I'm sorry, afraid I'm unable to help you now.  That dolt Mr. Clark mixed up the formulas again! Now... Let's see...  Which one is the super corrosive acid?")
end

function Delivery(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	  SetStepComplete(Spawn, 5499, 1)
	PlayFlavor(NPC, "voiceover/english/assistant_tillheel/qey_village03/assistanttillheel007.mp3", "", "", 1924751924, 481752919, Spawn)
    AddConversationOption(conversation, "Will do.")
    StartConversation(conversation, NPC, Spawn, "Ah-ha! Yes! The Elixer of Mistmire! Thanks to Mr. Clark, I must spend my own copper to replenish our stock! Oh, be sure Garion get's his payment?")
end

function Clark(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/assistant_tillheel/qey_village03/assistanttillheel001.mp3", "", "", 1404405856, 510404250, Spawn)
    AddConversationOption(conversation, "He looks harmless.", "Cute")
    AddConversationOption(conversation, "He seems kind of cute.", "Cute")
    AddConversationOption(conversation, "I'm sorry to hear that. Goodbye.")
    StartConversation(conversation, NPC, Spawn, "Who is Mr. Clark? Oh, I hate that drake! Boomcast considers that beast more than a pet. I say that drake is nothing more than a rat with scales. Well, scales and wings. He's been the bane of me ever since I've been working here.")
end

function Cute(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/assistant_tillheel/qey_village03/assistanttillheel002.mp3", "", "", 1366952984, 4259676996, Spawn)
    AddConversationOption(conversation, "What does Mr. Clark actually eat?", "Eat")
    AddConversationOption(conversation, "Sounds like a handful. Good day.")
    StartConversation(conversation, NPC, Spawn, "Oh, everyone said that. They all fall for Mr. Clark's little act. But, I have to deal with his mischief! I'm forced to clean up all his messes. Boomcast will never believe that scaled rat did anything wrong. No, it's always Tillheel! Tillheel broke this. Tillheel ate that!")
end

function Eat(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/assistant_tillheel/qey_village03/assistanttillheel003.mp3", "", "sigh", 3197699818, 539871888, Spawn)
     if not HasCompletedQuest(Spawn,5498) and not HasQuest(Spawn,5498) then
    AddConversationOption(conversation, "I could gather some shriller wings.", "Shriller")
    end
    AddConversationOption(conversation, "Good luck on keeping those wings in stock.")
    StartConversation(conversation, NPC, Spawn, "Shriller wings! Sacks and sacks of shriller wings! I stock them and he devours them. Boomcast needs them for his forumlas. Wait till he finds them all gone. I can hear him now! 'Tillheel, I will dock you for every missing wing! No payday for Tillheel anytime soon!' ")
end

function Shriller(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/assistant_tillheel/qey_village03/assistanttillheel004.mp3", "", "nod", 2293652007, 3282538852, Spawn)
    AddConversationOption(conversation, "I'm happy to help.", "Help")
    AddConversationOption(conversation, "The catacombs? No thank you.")
    StartConversation(conversation, NPC, Spawn, "What a grand idea! Yes, you can help. If you could just go into the catacombs and collect shriller wings for me that would most surely save me!")
end

function Help(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/assistant_tillheel/qey_village03/assistanttillheel005.mp3", "", "agree", 2457226358, 4241010778, Spawn)
    AddConversationOption(conversation, "I'll head that way.", "Help2")
    StartConversation(conversation, NPC, Spawn, "Fantastic! The catacombs are not too dangerous, but you'll have to find a manhole cover. There is one in this district. Look about, you will find it.")
end

function Help2(NPC,Spawn)
	FaceTarget(NPC, Spawn)    
    OfferQuest(NPC,Spawn, 5498)
end

function WingDelivery(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    SetStepComplete(Spawn, 5498, 2)
	PlayFlavor(NPC, "voiceover/english/assistant_tillheel/qey_village03/assistanttillheel006.mp3", "", "agree", 1830324090, 432473430, Spawn)
    AddConversationOption(conversation, "Thank you.")
    StartConversation(conversation, NPC, Spawn, "You are so kind to assist me. I am sorry I don't have much to offer as a reward, but here is what little I have left. Have a godo day!")
end

function InRange(NPC, Spawn, Option)
	local choice = 0
	if Option == nil then
		choice = math.random(1, 100)
	end
	
	if choice < 25 then
		FaceTarget(NPC, Spawn)
		local choice = math.random(1, 3)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/optional2/halfling_eco_good_1/ft/service/alchemist/halfling_alchemist_service_good_1_hail_gm_a8ed74c7.mp3", "There are no refunds for caster error at this shop! Oh ... hello you're not here about a refund.", "no", 2075394375, 630243730, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/optional2/halfling_eco_good_1/ft/service/alchemist/halfling_alchemist_service_good_1_hail_gm_ec533e4c.mp3", "Are you wounded?  I just made up a fresh batch of healing potions an hour ago.", "hello", 2688473405, 4089604259, Spawn)
		elseif choice == 3 then
			PlayFlavor(NPC, "voiceover/english/optional2/halfling_eco_good_1/ft/service/alchemist/halfling_alchemist_service_good_1_hail_gm_efd903ba.mp3", "Hello, adventurer! Are you looking for a specific potion or ingredient?", "agree", 1413906559, 1372883990, Spawn)
		end
	end
end

function LeaveRange(NPC, Spawn)
end