--[[
	Script Name	: SpawnScripts/ElddarGrove/MasterArcherNightbow.lua
	Script Purpose	: Master Archer Nightbow <Bowyer>
	Script Author	: Dorbin
	Script Date	: 2022.05.08
	Script Notes	: 
--]]

local arrows = 5521
local deposit = 5523

function spawn(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
ProvidesQuest(NPC,deposit)
end

function InRange(NPC,Spawn)
--    if not HasCompletedQuest (Spawn, deposit) and not HasQuest (Spawn, deposit) then 
 	if math.random(1, 100) <= 60 then
    	FaceTarget(NPC, Spawn)
	    choice = math.random(1,2)
	    if choice == 1 then
	    PlayFlavor(NPC, "voiceover/english/master_archer_nightbow/qey_elddar/100_merchant_halfelf_nightbow_callout1_f29bf504.mp3", "Welcome to In-Range. How can I oblige you, traveler?", "", 514837561, 1511494370, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/master_archer_nightbow/qey_elddar/100_merchant_halfelf_nightbow_multhail2_8e9f4cb0.mp3", "What is it you need, traveler?", "", 4065639405, 4258763812, Spawn)
	    end
    end
end
--end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
    AddPrimaryEntityCommand(NPC,"hail")
    choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/service/banker/halfelf_banker_service_evil_1_notcitizen_gf_c0c992e7.mp3", "I'm afraid your business is not welcome here.  So, please go away!", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/armorsmith/halfelf_armorsmith_service_good_1_notcitizen_gf_5f06e404.mp3", "Only those who swear alegence with Qeynos can purchase their goods here!", "heckno", 1584866727, 581589457, Spawn)
        end
    else
        	PlayFlavor(NPC, "voiceover/english/master_archer_nightbow/qey_elddar/armsdealernightbow.mp3", "", "hello", 416492633, 699282975, Spawn)
	        local conversation = CreateConversation()
    	    if HasCompletedQuest(Spawn, arrows) and not HasQuest(Spawn,deposit) and not HasCompletedQuest(Spawn, deposit) then
        	AddConversationOption(conversation, "How is business?", "Delivery")
            end
            if GetQuestStep(Spawn,arrows)==1 then
        	AddConversationOption(conversation, "I'm here to pick up arrows for Patrolman Fanthis.", "Pickup")
        	end	
            if GetQuestStep(Spawn,deposit)==2 then
        	AddConversationOption(conversation, "Here is the recipt for your deposit to the Qeynos Exchange.", "Delivered")
        	end
        	AddConversationOption(conversation, "I appreciate it.  Thank you.")
    	StartConversation(conversation, NPC, Spawn, "Welcome to In-Range.  If you need help with anything, just let me know.")
   
    end
end

function Pickup(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/master_archer_nightbow/qey_elddar/armsdealernightbow000.mp3", "", "nod", 2435179288, 2250697055, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll let him know.", "Pickup2")
	StartConversation(conversation, NPC, Spawn, "Perfect!  I've actually had these arrows ready for the better part of a week now.  I'm surprised he hasn't come by to pick them up earlier.  Please do tell Fanthis to be more punctual next time he orders from me.")
end	

function Pickup2(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,arrows, 1)
    end
    
  function Delivery(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/master_archer_nightbow/qey_elddar/armsdealernightbow001.mp3", "", "ponder", 3825875299, 2066482180, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Sure. I'll head to the Qeynos Exchange for you.", "Delivery2")
	AddConversationOption(conversation, "That is too far out of my way. Sorry.")
	StartConversation(conversation, NPC, Spawn, "You were the one who brought those arrows back to Fanthis, correct?  I would never forget a face like yours.  If you'd be willing, I need my deposit taken over to the Qeynos Exchange in Qeynos Harbor.  If Fanthis trusted you with his errand I'm certain you'll do fine with this one.")
end	  

function Delivery2(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,deposit)
    end
    
  function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/master_archer_nightbow/qey_elddar/armsdealernightbow003.mp3", "", "thank", 1662759058, 2206697138, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "It was no problem.", "FinishQuest")
	StartConversation(conversation, NPC, Spawn, "I hope Grisvane didn't give you any trouble.  Sometimes he's a bit gruff with those he doesn't know.  Please allow me to pay you for your trouble.  Perhaps we will do other business in the future.")
end	

function FinishQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,deposit, 2)
    end