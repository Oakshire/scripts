--[[
	Script Name	: SpawnScripts/ElddarGrove/GregorEarthstride.lua
	Script Purpose	: Gregor Earthstride 
	Script Author	: Dorbin
	Script Date	: 2022.5.4
	Script Notes	: 
--]]

local Hawks = 5517

function spawn(NPC)
    ProvidesQuest(NPC, Hawks)
    AddTimer(NPC, 5000, "EmoteLoop")    
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
 if GetFactionAmount(Spawn,11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    else
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "confused", 0, 0, Spawn)
    if not HasQuest(Spawn,Hawks) and not HasCompletedQuest (Spawn,Hawks) then
	AddConversationOption(conversation, "Why would you need to buy arrows?  You seem to look capable of making your own.","Feathers1")
	end
	if GetQuestStep(Spawn,Hawks)==2 then
	AddConversationOption(conversation, "I've returned with the feathers you needed, though they're still on the birds.","FeathersDone1")
	end
	AddConversationOption(conversation, "I wish you luck with finding them.")
	StartConversation(conversation, NPC, Spawn, "I can't ever seem to find the arrows I need! Nightbow's shop here is good, but it's a bit pricey.")
	
    end
end

function Feathers1(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I think I could get the feathers you need.","Feathers2")
	AddConversationOption(conversation, "I wish you luck with finding them.")
	StartConversation(conversation, NPC, Spawn, "I hate to admit it, but I've not been having the best of luck with the feathers.  It seems there's been some furious competition for the hawks in the forest ruins, as their feathers are not only very useful for fletching, but also for use as quills.")
end   

function Feathers2(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "whome", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll be back with the birds as soon as I manage to kill them!","Feathers3")
	AddConversationOption(conversation, "I wish you luck with finding them.")
	StartConversation(conversation, NPC, Spawn, "You would do that for a stranger?  I couldn't let such a task go unrewarded of course.  I am but a simple hunter, but I would find something to grant you in return for the feathers.  I can't make enough arrows without the feathers from at least five hawks.")
end   

function Feathers3(NPC, Spawn)
OfferQuest(NPC,Spawn, Hawks)
FaceTarget(NPC, Spawn)
end

function FeathersDone1(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you, and safe journeys to you.","FeathersDone2")
	StartConversation(conversation, NPC, Spawn, "That's wonderful!  I'll be happy to pull the feathers off myself, that's not a problem!  You've saved me quite a bit of coin!  Speaking of coin, here's some for your effort.")
end   

function FeathersDone2(NPC, Spawn)
    SetStepComplete(Spawn,Hawks,2)
	FaceTarget(NPC, Spawn)
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