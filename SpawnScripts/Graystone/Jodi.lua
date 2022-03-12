--[[
	Script Name	: SpawnScripts/Graystone/Jodi.lua
	Script Purpose	: Jodi 
	Script Author	: Dorbin
	Script Date	: 2022.01.20
	Script Notes	: Recreated Manually
--]]

local Delivery = 5445

function spawn(NPC)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
ProvidesQuest(NPC, Delivery)
end

function InRange(NPC, Spawn) --Quest Callout
if math.random(1, 100) <= 60 then
    if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) then         
        choice = math.random(1,2)
             if choice ==1 then
            PlayFlavor(NPC, "voiceover/english/jodi/qey_village03/100_customer_human_jodi_multhail1_ef852e92.mp3", "Hmmm... I think I'll pick up the potions myself.", "ponder", 1168503261, 3143676939, Spawn)
            else
            PlayFlavor(NPC, "voiceover/english/jodi/qey_village03/100_customer_human_jodi_callout_2ca4aa88.mp3", "I will never make Baubbleshire in time. I need a courier.", "sulk", 1892112323, 654880852, Spawn)
            end
     else
         choice = math.random(1,2)
            if choice ==1 then
            PlayFlavor(NPC, "", "", "wave", 0, 0, Spawn)
            else
            PlayFlavor(NPC, "", "", "sigh", 0, 0, Spawn)
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
    PlayFlavor(NPC, "voiceover/english/jodi/qey_village03/customerjodi000.mp3","","hello",129779928,3581149564,Spawn)
    AddConversationOption(conversation, "I could pick up your potions.", "Potions")
    AddConversationOption(conversation, "Sorry, I'm busy.")
    StartConversation(conversation, NPC, Spawn, "I only need to make a quick deposit. Would you hold my place in line? I need to rush to Baubbleshire before my potions are sold to others!")
    
    elseif not HasCompletedQuest (Spawn, Delivery) and  HasQuest (Spawn, Delivery) then 
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
        if GetQuestStep (Spawn, Delivery) == 2 then
        AddConversationOption(conversation, "Here are your potions.", "Delivered")
        end
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1005.mp3","","hello",0,0,Spawn)
    AddConversationOption(conversation, "I'll pick them up soon. Your coin is still safe with me.")
    StartConversation(conversation, NPC, Spawn, "Did you pick up my potions by chance?")
   
    else
    choice = math.random(1,2)
        if choice ==1 then        
	PlayFlavor(NPC, "", "", "sigh", 0, 0, Spawn)
	else
	PlayFlavor(NPC, "", "", "tap", 0, 0, Spawn)
    end	    
    end
end

 function Potions(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/jodi/qey_village03/customerjodi001.mp3","","hello",571487572,589939480,Spawn)
  AddConversationOption(conversation, "I can do that. I'll take the coin to him.", "QuestBegin")
  AddConversationOption(conversation, "On second thought, I must be going.")
  StartConversation(conversation, NPC, Spawn, "Thank you for offering. You must go to Baubbleshire and find a merchant named Dondl Fuzzlecutter. As a favor, he's holding a few special bottles of healing potions for me. Take this coin and pay him for the potions.")
end   


function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Delivery)
end

 function Delivered(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/jodi/qey_village03/customerjodi002.mp3","","hello",2239606086,3876738451,Spawn)

  AddConversationOption(conversation, "Thanks for the coin, and good luck with the line.", "Reward")
  StartConversation(conversation, NPC, Spawn, "I'm so greatful! I would have never have made it. This line has barely moved a bolt! Please keep the change as a reward for your kind service.")
end   

function Reward(NPC, Spawn)
    	SetStepComplete(Spawn, Delivery, 2)
    end


