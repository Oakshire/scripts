--[[
	Script Name	: SpawnScripts/ElddarGrove/Duvo.lua
	Script Purpose	: Duvo <Alchemist>
	Script Author	: Dorbin
	Script Date	: 2022.05.09
	Script Notes	: 
--]]
local muffins = 5524
local papers = 5536

function spawn(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
ProvidesQuest(NPC,muffins)
end


function InRange(NPC,Spawn)
       if GetFactionAmount(Spawn,11) <0 then
    	FaceTarget(NPC, Spawn)
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
        end
   else     
        if not HasCompletedQuest (Spawn, muffins) and not HasQuest (Spawn, muffins) then 
 	    if math.random(1, 100) <= 70 then
	    choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/scribe_duvo/qey_elddar/100_scribe_halfling_duvo_callout1_c6eaefe5.mp3", "My apologies, friend. I did not see you there ... What is it you need?", "", 3948051330, 1166584264, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/scribe_duvo/qey_elddar/100_scribe_halfling_duvo_multhail1_a72f47c8.mp3", "I'm sorry. I cannot help you.", "", 1448300901, 17119076, Spawn)
	    end
    end
end
end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
    choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
        end
    else
        	PlayFlavor(NPC, "voiceover/english/scribe_duvo/qey_elddar/scribeduvo.mp3", "", "", 2044085104, 2381901652, Spawn)
	        local conversation = CreateConversation()
    	    if not HasQuest(Spawn,muffins) and not HasCompletedQuest(Spawn, muffins) then
        	AddConversationOption(conversation, "You appear preoccupied.  Need any help?", "Delivery")
            end
            if GetQuestStep(Spawn,papers)==1 then
        	AddConversationOption(conversation, "Andrea Dovesong sent me to pick up some parchment.", "Pickup")
        	end
            if GetQuestStep(Spawn,muffins)==2 then
        	AddConversationOption(conversation, "Penny gave me her recipie you requested.  Here you go.", "Delivered")
        	end
        	AddConversationOption(conversation, "Nothing.  I'll leave you to your work.")
    	StartConversation(conversation, NPC, Spawn, "My apologies, friend. I did not see you there ... What is it you need?")
   
    end
end

   
  function Delivery(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/scribe_duvo/qey_elddar/scribeduvo000.mp3", "", "", 3906484096, 313118896, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Alright!  I'll do whatever you ask.", "Delivery2")
	AddConversationOption(conversation, "I better not.  This sounds too important for me.")
	StartConversation(conversation, NPC, Spawn, "Excellent!  I would love your help if you have the time to spare.  I never seem to have a spare momment.  Now, the task I need done is VERY important!  If you agree to help, you must do it now!")
end	  

function Delivery2(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,muffins)
    end
    
function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/scribe_duvo/qey_elddar/scribeduvo002.mp3", "", "thanks", 3093182397, 3807334296, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Well, I hope it was worth the trouble.", "FinishQuest")
	StartConversation(conversation, NPC, Spawn, "Fantastic!  Let me see the recipie... Yes... I see now...*mumbling*... That... is the ingredient I was missing!  You're a life saver!  These muffins make a fine mid-morning meal.  I know the paper will publish the paper as soon as I rewrite it in fine script.")
end	

function FinishQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,muffins, 2)
    end

 function Pickup(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/scribe_duvo/qey_elddar/scribeduvo006.mp3", "", "thanks", 4243768654, 3960378090, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "I will.  Thanks.", "Papers1")
	StartConversation(conversation, NPC, Spawn, "I have pleanty of parchment to spare.  Here.  Take these to her.  If she needs more tell her to come by.")
end	   

function Papers1(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,papers, 1)
    end