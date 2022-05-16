--[[
	Script Name		: SpawnScripts/NorthQeynos/RachaelClothspinner.lua
	Script Purpose	: Rachael Clothspinner
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local Bears = 5537

function spawn(NPC)
ProvidesQuest(NPC,Bears)
	SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
end


function InRange(NPC, Spawn)
if GetFactionAmount(Spawn,11) <0 then
    	FaceTarget(NPC, Spawn)
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
        end
 else   
    if math.random(1,100) <=70 then
  if not HasCompletedQuest(Spawn,Bears) and not HasQuest(Spawn,Bears) then
		PlayFlavor(NPC, "voiceover/english/rachael_clothspinner/qey_north/100_merchant_rachael_clothspinner_g4_callout1_7d8b50df.mp3", "Huh?  Oh hello.  Hmmm, I know that needle is around here somewhere, but just in case, watch your step!", "", 3754593898, 2394634278, Spawn, 0)
     end
    end
    end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC,Spawn)
 if GetFactionAmount(Spawn,11) <0 then
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
        end
    elseif not HasCompletedQuest(Spawn,Bears)then
      Dialog1(NPC,Spawn)
      else
	RandomGreeting(NPC, Spawn)
    end
end


function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_2/ft/service/merchant/human_merchant_service_good_2_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 4082049284, 258435992, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/rachael_clothspinner/qey_north/100_merchant_rachael_clothspinner_g4_callout1_7d8b50df.mp3", "Huh?  Oh hello.  Hmmm, I know that needle is around here somewhere, but just in case, watch your step!", "", 3754593898, 2394634278, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_2/ft/service/merchant/human_merchant_service_good_2_hail_gf_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 2230459021, 1376449266, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_2/ft/service/merchant/human_merchant_service_good_2_hail_gf_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 218555884, 644636009, Spawn, 0)
	end
end

function Dialog1(NPC,Spawn)
         local conversation = CreateConversation()
        FaceTarget(NPC,Spawn)
   	    PlayFlavor(NPC, "voiceover/english/rachael_clothspinner/qey_north/rachelclothspinner000.mp3", "", "doubletake", 1785499202, 3703080604, Spawn, 0)
        if not HasQuest(Spawn,Bears) and not HasCompletedQuest(Spawn, Bears)then
        AddConversationOption(conversation, "You seem preoccupied.  I'm happy to help if I can.","QuestStart")
        end
        if GetQuestStep(Spawn, Bears) ==2 then
        AddConversationOption(conversation, "Here are the pelts you asked for.  I hope they work for you.","Delivered")
        end        
        AddConversationOption(conversation, "Err.  Thanks for the warning.")
    	StartConversation(conversation, NPC, Spawn, "Huh?  Oh hello.  Hmmm, I know that needle is around here somewhere, but just in case, watch your step!")
    end
    
    function QuestStart(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/rachael_clothspinner/qey_north/rachelclothspinner001.mp3", "", "agree", 1828375917, 2467295658, Spawn)
    local conversation = CreateConversation()
    AddConversationOption(conversation, "Gladly.  I'll return with your pelts.", "Delivery2")
	AddConversationOption(conversation, "I'm not much for handling bears.  Sorry.")
	StartConversation(conversation, NPC, Spawn, "Really?  Marvelious!  I placed an order with the Far Seas Trading Company for four fine Oakmyst great bear pelts and I've still not received my order!  I'm concerend I won't get these items in a timely manner.  If you fill the order for me, I'll gladly pay you what I would have paid them!")
end	

function Delivery2(NPC, Spawn)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,Bears)
    end
    
    function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/rachael_clothspinner/qey_north/rachelclothspinner002.mp3", "", "bow", 3015059264, 2600919408, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "You may be right.  Thank you!", "FinishQuest")
	StartConversation(conversation, NPC, Spawn, "Oh my!  You're a life saver!  I've still not heard any word on my order with the Far Seas Trading Company.  You could do quite well for yourself fulfilling their unfulfilled orders!  And as promised, here's your payment.")
end	

function FinishQuest(NPC,Spawn)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,Bears, 2)
end 
