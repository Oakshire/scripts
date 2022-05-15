--[[
	Script Name	: SpawnScripts/NorthQeynos/SneedGalliway.lua
	Script Purpose	: Sneed Galliway <General Goods>
	Script Author	: Dorbin
	Script Date	: 2022.01.11
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
local Sneed = 5548
local Delivery = 5541


function spawn(NPC)
	SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
    ProvidesQuest(NPC,Sneed)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11) <0 then
    	FaceTarget(NPC, Spawn)
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
        end
 else   
 if HasCompletedQuest(Spawn,Sneed) and HasCompletedQuest(Spawn,Delivery) then
     FaceTarget(NPC, Spawn)

	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/housing/human_housing_service_good_1_aoi_gm_1fa85d79.mp3", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wave", 903813734, 2512856176, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "Step right up!  I've got all the adventuring garb you'll ever be needing outside the city gates!  The outside world is a dangerous place; make sure you're equipped to deal with the challenge!", "", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 892528408, 239693863, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 2541554579, 2951095822, Spawn)
	end
else
       local conversation = CreateConversation()
       FaceTarget(NPC,Spawn)
   	    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "beckon", 0, 0, Spawn, 0)
        if not HasQuest(Spawn,Sneed) and not HasCompletedQuest(Spawn, Sneed)then
        AddConversationOption(conversation, "I was wondering if you need any work done in the city.","QuestStart")
        end
        if GetQuestStep(Spawn, Delivery) ==1 then
        AddConversationOption(conversation, "So, you're Sneed Galliway.  I've got a delivery for you from Thardrin Steeleye.","Delivered2")
        end         
        if GetQuestStep(Spawn, Sneed) ==2 then
        AddConversationOption(conversation, "Here are your supplies from Hegrenn.","Delivered")
        end        
        AddConversationOption(conversation, "Hope it's working out well for you. Goodbye")
    	StartConversation(conversation, NPC, Spawn, "Step right up!  I've got all the adventuring garb you'll ever be needing outside the city gates!  The outside world is a dangerous place; make sure you're equipped to deal with the challenge!")
    end
end
end


function Delivered2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.  Well, I guess some tip is better than no tip... no matter how small..", "FinishQuest")
	StartConversation(conversation, NPC, Spawn, "Finally!  After all the delays, it's good to at least have it brought over from the warehouse so quickly.  Let me see what I can do about getting together a tip for your speedy delivery...  Ahh, here we are")
end	

function FinishQuest(NPC,Spawn)
    PlayFlavor(NPC, "", "", "chuckle", 0, 0, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,Delivery, 1)
end 

function QuestStart(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
    local conversation = CreateConversation()
    AddConversationOption(conversation, "I'll be back in no time!", "Delivery2")
	AddConversationOption(conversation, "Err, actually I think I hear someone calling me outside. Bye.","Act")
	StartConversation(conversation, NPC, Spawn, "You are just in time!  I am running low on some of my best selling product.  I need you to get to blacksmith Hegrenn and return with the supplies I've ordered from her.  It's dangerous out there and many adventurers depend on me for their equipment.  Find Hegrenn in south Qeynos and come back with all of the supplies that I've ordered.")
end	

function Act(NPC,Spawn)
        PlayFlavor(NPC, "", "", "shrug", 0, 0, Spawn)
end

function Delivery2(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,Sneed)
    end
    
function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "I'm just glad that I was able to help out.", "FinishQuest2")
	StartConversation(conversation, NPC, Spawn, "Now that's a job well done.  I thank you kindly for helping me.  Take some of this coin.  You've really saved me a lot of time and effort.")
end	

function FinishQuest2(NPC,Spawn)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,Sneed, 2)
end 
