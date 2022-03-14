--[[
	Script Name	: SpawnScripts/Graystone/PathfinderSilentstride.lua
	Script Purpose	: Pathfinder Silentstride 
	Script Author	: Dorbin
	Script Date	: 2022.03.11
	Script Notes	: 
--]]

local Delivery = 5510

function spawn(NPC)
SetPlayerProximityFunction(NPC, 9, "InRange", "LeaveRange")
ProvidesQuest(NPC, Delivery)    
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn) --Quest Callout
if math.random(1, 100) <= 70 then
    if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) then         
       	FaceTarget(NPC, Spawn)
        choice = math.random(1,2)
             if choice ==1 then
            PlayFlavor(NPC, "voiceover/english/pathfinder_silentstride/qey_village03/100_ranger_woodelf_silentsride_callout_31ae5f30.mp3","Greetings adventurer! Please use caution when traveling outside the city.  The nearby wilderness can be as unforgiving as the gates themselves.", "hello", 387396837, 3968570579, Spawn)
            else
            PlayFlavor(NPC, "voiceover/english/pathfinder_silentstride/qey_village03/100_ranger_woodelf_silentsride_multhail1_37aa39ea.mp3","Greetings friend!  If I were you, I would be on my way!  This village isn't fit for an adventurer like you", "nod", 2207900054, 321913553, Spawn)
            end
     else
         choice = math.random(1,2)
           	FaceTarget(NPC, Spawn) 
            if choice ==1 then
            PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
            else
            PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
            end
        end
    end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/pathfinder_silentstride/qey_village03/pathfindersilenstride000.mp3", "", "", 3050887805, 230076738, Player, Spawn)
    if not HasCompletedQuest(Spawn,Delivery) and not HasQuest(Spawn,Delivery) then
	AddConversationOption(conversation, "What is a pathfinder doing in Graystone?","Pathfinder")  
	end
    if GetQuestStep(Spawn,Delivery)==2 then
	AddConversationOption(conversation, "I delievered your message to Tracker Kelnis.","Delivered")  
	end	
    if HasCompletedQuest(Spawn,Delivery) or HasQuest(Spawn,Delivery) then
	AddConversationOption(conversation, "Who is Holly Windstalker?","Windstalker1")  
	end
	AddConversationOption(conversation, "Thanks for the warning.")
	StartConversation(conversation, NPC, Spawn, "Greetings, adventurer. Be careful traveling outside the city. The nearby wilderness is as unforgiving as the fates themselves.")
end


function Pathfinder(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/pathfinder_silentstride/qey_village03/pathfindersilenstride001.mp3", "", "shrug", 2455496325, 3990152324, Spawn)
	AddConversationOption(conversation, "I'm pretty capable.","Able")
	AddConversationOption(conversation, "I'll leave you to it then.")
	StartConversation(conversation, NPC, Spawn, "I must admit, this village doesn't offer much trailblazing. But occasionally we adventurers must journey to these places to find able-bodied companions.")
end

function Able(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/pathfinder_silentstride/qey_village03/pathfindersilenstride002.mp3", "", "no", 3018384853, 4033242991, Spawn)
	AddConversationOption(conversation, "What do you need?","Able2")
	AddConversationOption(conversation, "I'll leave you to it then.")
	StartConversation(conversation, NPC, Spawn, "I am sure you are, friend.  But I am sorry to say I've already found a new member for my fellowship.  Sadly, my new friend is stuck in a long line at the local exchange.  She will be longer than I had hoped.  Could you do me a favor?")
end

function Able2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/pathfinder_silentstride/qey_village03/pathfindersilenstride003.mp3", "", "", 307846210, 3852204459, Spawn)
	AddConversationOption(conversation, "I will deliver the message.","QuestBegin")
	AddConversationOption(conversation, "Who is Holly Windstalker?","Windstalker1") 	
	AddConversationOption(conversation, "I don't think I can. Sorry.")
	StartConversation(conversation, NPC, Spawn, "I would appreciate you informing a third party.  Kelnis, a tracker.  I have information regarding Holly Windstalker's grave.  I was to meet him on a bridge in the Oakmyst Forest.")
end

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Delivery)
end


function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/pathfinder_silentstride/qey_village03/pathfindersilenstride004.mp3", "", "", 3041535965, 1822836800, Spawn)
	AddConversationOption(conversation, "Glad to help. Farewell.","Done")
	StartConversation(conversation, NPC, Spawn, "Very wise of him.  Thank you for aiding us.  Here is a bit of coin.  Perhaps we shall cross paths again someday.  Farewell.")
end

function Done(NPC, Spawn)
    	SetStepComplete(Spawn, Delivery, 2)
    end

function Windstalker1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/pathfinder_silentstride/qey_village03/pathfindersilenstride005.mp3", "", "", 335966183, 4232259848, Spawn)
	AddConversationOption(conversation, "Tell me more.","Windstalker2") 
    if not HasCompletedQuest(Spawn,Delivery) and not HasQuest(Spawn,Delivery) then
	AddConversationOption(conversation, "Interesting.  I will deliver the message you requested.","QuestBegin")
    end	
	AddConversationOption(conversation, "I've heard enough for now.")
	StartConversation(conversation, NPC, Spawn, "During the great Age of Turmoil, Holly Windstalker raced across the countryside of Antonica then known as Qeynos Hills. Once she arrived, she defended every living forest creature from harm.")
end

function Windstalker2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/pathfinder_silentstride/qey_village03/pathfindersilenstride006.mp3", "", "", 371777801, 2569375122, Spawn)
	AddConversationOption(conversation, "Tell me more.","Windstalker3") 
    if not HasCompletedQuest(Spawn,Delivery) and not HasQuest(Spawn,Delivery) then
	AddConversationOption(conversation, "Interesting.  I will deliver the message you requested.","QuestBegin")
    end	
	AddConversationOption(conversation, "I've heard enough for now.")
	StartConversation(conversation, NPC, Spawn, "Holly Windstalker's devotion to protecting the forest creatures earned her hatred amongst the local residents and adventurers. She upheld the Code of Kithicor with such fervor that she became imbued with great powers of nature.")
end

function Windstalker3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/pathfinder_silentstride/qey_village03/pathfindersilenstride007.mp3", "", "", 1473255226, 2922317764, Spawn)
	AddConversationOption(conversation, "Tell me more.","Windstalker4") 
    if not HasCompletedQuest(Spawn,Delivery) and not HasQuest(Spawn,Delivery) then
	AddConversationOption(conversation, "Interesting.  I will deliver the message you requested.","QuestBegin")
    end	
	AddConversationOption(conversation, "I've heard enough for now.")
	StartConversation(conversation, NPC, Spawn, "The hatred for Windstalker grew, and eventually, the trappers of Qeynos Hills hired mercenaries to do away with her... The forest folk found her body and buried it in a secret location.")
end

function Windstalker4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/pathfinder_silentstride/qey_village03/pathfindersilenstride008.mp3", "", "", 1320532888, 2225942616, Spawn)
    if not HasCompletedQuest(Spawn,Delivery) and not HasQuest(Spawn,Delivery) then
	AddConversationOption(conversation, "Thank you.  I will deliver the message you requested.","QuestBegin")
    end	
	AddConversationOption(conversation, "Thank your for sharing her tale.")
	StartConversation(conversation, NPC, Spawn, "Rangers do not seek artifacts of great power, though her grave must contain them. Weseek her blessing. It is said that forest folk who show great devotion to Holly and pay tribute to her gravesite, shall be imbued with her powers.")
end
