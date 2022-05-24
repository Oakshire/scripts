--[[
	Script Name	: SpawnScripts/QeynosHarbor/HarronGriswald.lua
	Script Purpose	: Harron Griswald <General Goods>
	Script Author	: Dorbin
	Script Date	: 2022.05.23
	Script Notes	: 
	

--]]
local Delivery = 5562

function spawn(NPC)
AddTimer(NPC, 5000, "EmoteLoop")    
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
   ProvidesQuest(NPC, Delivery)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
       if GetFactionAmount(Spawn,11) <0 then
    	FaceTarget(NPC, Spawn)
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
        end
    end

function LeaveRange(NPC, Spawn)
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
	voice = math.random (1,3)
     PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1052.mp3", "", "hello", 0, 0, Spawn)

	        local conversation = CreateConversation()
    	    if not HasQuest(Spawn,Delivery) and not HasCompletedQuest(Spawn, Delivery) then
        	AddConversationOption(conversation, "That was nice of him to give you a job.  Do you need any help with your tasks?", "Delivery1")
            end
            if GetQuestStep(Spawn,Delivery)==2 then
        	AddConversationOption(conversation, "I have brought back your rope for you.", "Delivered")
        	end
        	AddConversationOption(conversation, "Sounds like they are just having a good time when they get back from a long voyage.")
    	    StartConversation(conversation, NPC, Spawn, "If you're looking for the bar, it's upstairs. Be careful of the Coldwind Marauders --  they really enjoy their drink.  I'm too busy to join you just now.  Erwin was kind enough to order rope from me.  I don't want to disappoint him, but it's a big job, and I don't know if I can do it alone.")
   
    end
    end
end

function Delivery1(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "That doesn't sound like it would be too hard at all.", "Delivery2")
	AddConversationOption(conversation, "Oh wait, I have this thing I have to get to.  Sorry.")
	StartConversation(conversation, NPC, Spawn, "I weave nets and braid harpoon lines for the fishermen here. I have an order of rope waiting for me at Elddar Grove, but I'm behind with my work and I haven't been able to pick it up. Would you help an old man out and get my rope from merchant Adrianna?")
end	 

function Delivery2(NPC, Spawn)
 	PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,Delivery)
    end


function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "That works for me!", "FinishQuest")
	StartConversation(conversation, NPC, Spawn, "This is just what I needed.  You've helped greatly.  Here's some coin, and thanks again.")
end	

function FinishQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,Delivery, 2)
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