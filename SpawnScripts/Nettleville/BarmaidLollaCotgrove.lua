--[[
	Script Name	: SpawnScripts/Nettleville/BarmaidLollaCotgrove.lua
	Script Purpose	: Barmaid Lolla Cotgrove <Provisioner>
	Script Author	: Dorbin
	Script Date	: 2022.01.21
	Script Notes	: 
--]]

local Delivery = 5446

function spawn(NPC)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
ProvidesQuest(NPC, Delivery)
end

function InRange(NPC, Spawn) --Quest Callout
if math.random(1, 100) <= 30 then
    if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) then 
   		PlayFlavor(NPC, "voiceover/english/barmaid_lolla_cotgrove/qey_village01/qey_village01_barmaid_lolla_cotgrove_callout_a2de4d52.mp3", "...And that will go over here and the kegs go there... Yeah. Yeah. Yeah. What do you need?", "point", 2609682603, 931995827, Spawn)
     else
         choice = math.random(1,2)
         if choice ==1 then
         PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
        else
        PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
         end
    end
    end
end


function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) then 
    conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/barmaid_lolla_cotgrove/qey_village01/qey_village01_barmaid_lolla_cotgrove_multhail1_ec6e0398.mp3", "", "no", 370156187, 590443744, Spawn)
    AddConversationOption(conversation, "It appears you could use a hand. Need any help?", "Helping")
    AddConversationOption(conversation, "Sorry, I'll get out of your way.")
    StartConversation(conversation, NPC, Spawn, "Can't you see I'm busy? I've no time for small talk!")
    
    elseif not HasCompletedQuest (Spawn, Delivery) and  HasQuest (Spawn, Delivery) then 
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
        if GetQuestStep (Spawn, Delivery) == 2 then
        FaceTarget(NPC, Spawn)
        AddConversationOption(conversation, "Your keg order should be on schedule.", "Delivered")
        end
     PlayFlavor(NPC, "voiceover/english/barmaid_lolla_cotgrove/qey_village01/qey_village01_barmaid_lolla_cotgrove_callout_a2de4d52.mp3", "", "ponder", 2609682603, 931995827, Spawn)
    AddConversationOption(conversation, "I'm still checking on your keg order.")
    StartConversation(conversation, NPC, Spawn, "...And that will go over here and the kegs go there... Yeah. Yeah. Yeah. What do you need?")
    
    else
  		PlayFlavor(NPC, "voiceover/english/barmaid_lolla_cotgrove/qey_village01/qey_village01_barmaid_lolla_cotgrove_callout_a2de4d52.mp3", "", "hello", 2609682603, 931995827, Spawn)
            AddConversationOption(conversation, "Just saying hello and hope your tavern is coming along!")
        StartConversation(conversation, NPC, Spawn, "...And that will go over here and the kegs go there... Yeah. Yeah. Yeah. What do you need?")
end

 function Helping(NPC, Spawn)
    FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "What is the job?", "Helping2")
    AddConversationOption(conversation, "A tavern? We don't need more of those here! Goodbye.")
  StartConversation(conversation, NPC, Spawn, "I'm very busy setting up a tavern, but I could use your help.")
end   

 function Helping2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "I'll go check on your kegs for you.", "QuestBegin")
    AddConversationOption(conversation, "On second thought, nevermind.")
  StartConversation(conversation, NPC, Spawn, "I placed an order of kegs that are cooled by some new gnomish invention. Zipiff Clamorclang in the Baubbleshire was working on them but I'm worried they won't be ready in time. I would check on the order myself but I'm just too busy here.")
end   

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Delivery)
end

 function Delivered(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
     PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    AddConversationOption(conversation, "It was not a problem.", "Reward")
    StartConversation(conversation, NPC, Spawn, "Oh, you don't know how much this means to me. Thank you for getting me those kegs. Have one of my drinks on the house.")
end   

function Reward(NPC, Spawn)
    	SetStepComplete(Spawn, Delivery, 2)
    end
end

