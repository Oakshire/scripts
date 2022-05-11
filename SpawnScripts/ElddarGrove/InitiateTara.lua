--[[
	Script Name	: SpawnScripts/ElddarGrove/InitiateTara.lua
	Script Purpose	: Initiate Tara 
	Script Author	: Dorbin
	Script Date	: 2022.05.10
	Script Notes	: 
--]]
local letter = 5527

function spawn(NPC)
    ProvidesQuest(NPC, letter)
end    

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
 if GetFactionAmount(Spawn,11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    else
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/optional1/initiate_tara/qey_elddar/100_monk_initiate_tara_token1_9ac42d88.mp3", "", "", 3516598133, 1750026138, Spawn)
    if not HasQuest(Spawn,letter) and not HasCompletedQuest (Spawn,letter) then
	AddConversationOption(conversation, "Did you recently start training here as an initate?","Training")
	end
	AddConversationOption(conversation, "Please, don't let me interrupt.")
	StartConversation(conversation, NPC, Spawn, "Tread softly and speak your purpose.")
	
    end
end

function Training(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	AddConversationOption(conversation, "Would you like me to send your family a message?","Training2")
	AddConversationOption(conversation, "Well, you best get back to training then.")
	StartConversation(conversation, NPC, Spawn, "I started not long ago, but I am a bit homesick for my family back in the city.  I still long for the sweet aromas and tasty treats we use to bake back home.")
end   

function Training2(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll make sure she gets your letter.","QuestStart")
	StartConversation(conversation, NPC, Spawn, "Would you?  I've been meaning to deliver this letter to Tabby Copperpot, but my training has been taking up most of my time.  If you would do that, I would be most greatful.")
end 

function QuestStart(NPC, Spawn)
OfferQuest(NPC,Spawn, letter)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
end