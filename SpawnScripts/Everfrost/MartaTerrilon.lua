--[[
    Script Name    : SpawnScripts/Everfrost/MartaTerrilon.lua
    Script Author  : Flunklesnarkin
    Script Date    : 2015.09.04 10:09:19
    Script Purpose : 
                   : 
--]]

local Marta_Terrilons_Fur_Hunt = 161

function spawn(NPC)
        SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	ProvidesQuest(NPC, Marta_Terrilons_Fur_Hunt)
end

function respawn(NPC)
         spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    
	if HasQuest(Spawn, Marta_Terrilons_Fur_Hunt) == false and HasCompletedQuest(Spawn, Marta_Terrilons_Fur_Hunt) == false then
             Quest1Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, Marta_Terrilons_Fur_Hunt) == 1 then 
             Quest1Chat_2(NPC, Spawn)
	elseif GetQuestStep(Spawn, Marta_Terrilons_Fur_Hunt) == 2 then 
             Quest1Chat_3(NPC, Spawn)
	elseif HasQuest(Spawn, Marta_Terrilons_Fur_Hunt) == false and HasCompletedQuest(Spawn, Marta_Terrilons_Fur_Hunt) == true then
	     local count = GetQuestCompleteCount(Spawn, Marta_Terrilons_Fur_Hunt)
             if count <=3 then
                  Quest1Chat_4(NPC, Spawn)
             else
                  Quest1Chat_5(NPC, Spawn)
             end
	end
end	


function Quest1Chat_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Yes, I'm available to help.", "Offer_Marta_Terrilons_Fur_Hunt")
    AddConversationOption(conversation, "Sorry, I'm not interested.")
    StartConversation(conversation, NPC, Spawn, "Well met traveler!  I am a buyer for a regional fur trading company, who is trying to establish a market for furred clothing and armor linings!  I am seeking skilled hunters, capable of delivering large quantities of fur that are excellent condition!  Would you be interested in this?")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "You got it.")
	StartConversation(conversation, NPC, Spawn, "I'm going to require more furs than that!  Please come back when you have some more!")
end

function Quest1Chat_3(NPC, Spawn)
        SetStepComplete(Spawn, Marta_Terrilons_Fur_Hunt, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "These furs will do quite nicely!  Well done, please take this in compensation for your efforts.")
end


function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Sure!", "Offer_Marta_Terrilons_Fur_Hunt")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Do you think you have time to bring me some more furs?")
end

function Quest1Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1,2)
        if choice == 1 then
             Say(NPC, "You did fine work for me.  Thanks!")
        else
             Say(NPC, "Appreciate all your help!")
        end
end

function Offer_Marta_Terrilons_Fur_Hunt(NPC, Spawn)
	if HasQuest(Spawn, Marta_Terrilons_Fur_Hunt) == false and HasCompletedQuest(Spawn, Marta_Terrilons_Fur_Hunt) == false then
	    OfferQuest(NPC, Spawn, Marta_Terrilons_Fur_Hunt)
	    FaceTarget(NPC, Spawn)
	    conversation = CreateConversation()

	    AddConversationOption(conversation, "I will be back with the furs.")
	    StartConversation(conversation, NPC, Spawn, "Excellent!  There are several beasts in these parts that have nice fur.  I require that you bring me a good quantity of these furs, for which you will be paid.")

        elseif HasQuest(Spawn, Marta_Terrilons_Fur_Hunt) == false and HasCompletedQuest(Spawn, Marta_Terrilons_Fur_Hunt) == true then
	    OfferQuest(NPC, Spawn, Marta_Terrilons_Fur_Hunt)
	    FaceTarget(NPC, Spawn)
	    conversation = CreateConversation()

	    AddConversationOption(conversation, "I'll be back with the furs.")
	    StartConversation(conversation, NPC, Spawn, "Great! Here's a list of what I need now.  Bring me the most pristine furs that you can and you'll be well-rewarded.")
	    
	end

end

