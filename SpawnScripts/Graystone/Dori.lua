--[[
	Script Name	: SpawnScripts/Graystone/Dori.lua
	Script Purpose	: Dori <Banker>
	Script Author	: Dorbin
	Script Date	: 2022.03.11
	Script Notes	:
--]]

--Bank Tally Quest Should only be available AFTER inital Citizenship quest.

local Tally = 5508

function spawn(NPC)
ProvidesQuest(NPC,Tally)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/banker_dori/qey_village03/bankerdori.mp3", "", "", 2952818839, 2577303477, Spawn)
	if not HasCompletedQuest (Spawn, Tally) and not HasQuest (Spawn, Tally) then     
    AddConversationOption(conversation, "Have any errands I can do for the bank?", "DeliveryStart")
    end
    if GetQuestStep(Spawn,Tally)==2 then     
    AddConversationOption(conversation, "Robert Newbury gave me this message for you.", "DeliveryDone")
    end
    
    AddConversationOption(conversation, "Thanks, Dori.")
    StartConversation(conversation, NPC, Spawn, "Greetin's, young'n. My name's Dori and this here is my bank. As a customer of the Qeynos Exchange, you can be certain your money's safe with us!")
    
end

 function DeliveryStart(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/banker_dori/qey_village03/bankerdori000.mp3","","",3527195543,3811393839,Spawn)
  AddConversationOption(conversation, "Sure. I'll do it.", "QuestBegin1")
  AddConversationOption(conversation, "Another time. Sorry.")
  StartConversation(conversation, NPC, Spawn, "Sure ya can. Its nothing much, but if you take my daily tally into the Qeynos Exchange at the harbor, it would save me a trip into the city! You think you're up to it?")
end   

function QuestBegin1(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/banker_dori/qey_village03/bankerdori001.mp3","","",161424087,848076549,Spawn)
  AddConversationOption(conversation, "I'll head that way shortly.", "QuestBegin")
  StartConversation(conversation, NPC, Spawn, "Make sure Robert Newbury recieves this tally directly.  You'll find him in the Qeynos Exchange at the harbor. Now, this needs to be delivered right away, so no dawdling!")
end   

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Tally)
end

 function Delivered(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/banker_dori/qey_village03/bankerdori002.mp3","","facepalm",2001766624,322751976,Spawn)
  AddConversationOption(conversation, "I'm glad to help.", "Reward")
  StartConversation(conversation, NPC, Spawn, "Oh dear. I hope its not a bank audit! I do hate those tedious things! Poor Jalan will never get to leave if its an audit! No time for chatt'n. Its time to buckle down and get to work. At any rate, thanks for all your help.")
end 

function Reward(NPC, Spawn)
    	SetStepComplete(Spawn, Tally, 2)
    end