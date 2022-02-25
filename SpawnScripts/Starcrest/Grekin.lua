--[[
	Script Name	: SpawnScripts/Starcrest/Grekin.lua
	Script Purpose	: Grekin <Bowyer>
	Script Author	: Dorbin
	Script Date	: 2022.02.24
	Script Notes	: Grekin 
--]]


local Req931 = 5489
local Req378 = 5488
local Deposit = 5490

function spawn(NPC)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
    ProvidesQuest(NPC, Deposit)
end

function InRange(NPC, Spawn) --Quest Callout
if not HasCompletedQuest(Spawn, Deposit)then
if math.random(1, 100) <= 70 then
        choice = math.random(1,2)
        FaceTarget(NPC, Spawn)
        if choice ==1 then
        PlayFlavor(NPC, "voiceover/english/merchant_grekin/qey_village02/100_human_merchant_m_01_multhail1_78077dd5.mp3", "Sorry friend. I don't think you can help me.", "no", 3289788151, 1391553241, Spawn)
    	elseif choice ==2 then
        PlayFlavor(NPC, "voiceover/english/merchant_grekin/qey_village02/100_human_merchant_m_01_callout_9b7d7d4.mp3", "To close the store or deliever the deposit. That is the question. If only I didn't have to choose! Perhaps you can help me traveler?", "ponder", 3289788151, 1391553241, Spawn)
        end
    end
end
end

function hailed(NPC, Spawn)
 conversation = CreateConversation()   

	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/merchant_grekin/qey_village02/merchantgrekin.mp3", "", "beckon", 2492969401, 3280493975, Spawn)
    if not HasQuest(Spawn, Deposit) then       
                AddConversationOption(conversation, "Have any jobs I can do?", "DepositStart")
            end
            if GetQuestStep(Spawn, Deposit)==2 then     
                AddConversationOption(conversation, "I have delivered your deposit.", "DepositDone")
            end
            if GetQuestStep(Spawn, Req931)==2 then
	           AddConversationOption(conversation, "I have completed a requisition order for you.", "Req931Done")
	        end
	        if GetQuestStep(Spawn, Req378)==2 then
	           AddConversationOption(conversation, "I have completed a requisition order for you.", "Req378Done")
	        end
	 AddConversationOption(conversation, "I'm just browsing. Thank you.")
	 StartConversation(conversation, NPC, Spawn, "Come close. Come close! See what I have to offer today.")
	     
end

 function DepositStart(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "You would trust me with your money?", "Trust")
    AddConversationOption(conversation, "On second thought, I'm busy.")
    PlayFlavor(NPC, "voiceover/english/merchant_grekin/qey_village02/merchantgrekin000.mp3","","agree",1743731083,2583786819,Spawn)
    StartConversation(conversation, NPC, Spawn, "If it's coin you need I can help out, but you'll have to do a favor for me. I need my daily proceeds delivered to the bank.")
end 

 function Trust(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Okay. I will be back.", "DepositBegin")
    AddConversationOption(conversation, "I don't want to get tangled up in this.")
    PlayFlavor(NPC, "voiceover/english/merchant_grekin/qey_village02/merchantgrekin001.mp3","","agree",2487079650,1001036096,Spawn)
    StartConversation(conversation, NPC, Spawn, "For starters, it is only a day's proceeds. Also, there are three guards between the banks and us. I'm pretty sure you would be caught if you tried to run. Aside from all that, you have a friendly face and I think I can trust you. Take this box to the bank and return with the recipt.")
end 

function DepositBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Deposit)
end

 function DepositDone(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Glad I could help.", "DepositReward")
    PlayFlavor(NPC, "voiceover/english/merchant_grekin/qey_village02/merchantgrekin002.mp3","","thank",1911828027,460668749,Spawn)
    StartConversation(conversation, NPC, Spawn, "Excellent! I'm so busy here I don't have time for simple chores. I would have to close up shop, and I don't have time for that.")
end 

function DepositReward(NPC, Spawn)
    SetStepComplete(Spawn, Deposit, 2)
end

 function Req931Done(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Thanks.", "Req931Reward")
    PlayFlavor(NPC, "voiceover/english/merchant_grekin/qey_village02/merchantgrekin003.mp3","","thank",57347681,3755735620,Spawn)
    StartConversation(conversation, NPC, Spawn, "My requisition! I've waited for this for far too long. You would think a local requisition could be fulfilled much quicker. Take your fee and be off.")
end 

 function Req378Done(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Thanks.", "Req378Reward")
    PlayFlavor(NPC, "voiceover/english/merchant_grekin/qey_village02/merchantgrekin003.mp3","","thank",57347681,3755735620,Spawn)
    StartConversation(conversation, NPC, Spawn, "My requisition! I've waited for this for far too long. You would think a local requisition could be fulfilled much quicker. Take your fee and be off.")
end 

function Req931Reward(NPC, Spawn)
    SetStepComplete(Spawn, Req931, 2)
end

function Req378Reward(NPC, Spawn)
    SetStepComplete(Spawn, Req378, 3)
end

function DepositReward(NPC, Spawn)
    SetStepComplete(Spawn, Deposit, 2)
end


