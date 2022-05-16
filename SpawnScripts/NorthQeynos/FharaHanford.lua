--[[
    Script Name    : SpawnScripts/NorthQeynos/FharaHanford.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.24 02:04:56
    Script Purpose : 
                   : 
--]]
local delivery = 5534
local Fhara = 5540

function spawn(NPC)
ProvidesQuest(NPC, delivery)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    if GetFactionAmount(Spawn,11)<0 then
 	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn, 0)
    else   
	PlayFlavor(NPC, "voiceover/english/merchant_fhara_hanford/qey_north/mer_fharahanford.mp3", "", "hello", 1749623871, 3714750870, Spawn, 0)
    if not HasQuest(Spawn,delivery) and not HasCompletedQuest (Spawn,delivery) then
	AddConversationOption(conversation, "I was wondering if you had any odd tasks that needed to be done.","Jobs")
	end
    if GetQuestStep (Spawn,Fhara)==1 then
	AddConversationOption(conversation, "I have a pastry delivery for you from Voleen.","Delivery")
    end
	AddConversationOption(conversation, "I'll look around.  Thank you.")
	StartConversation(conversation, NPC, Spawn, "Good day! Please take a look around my shop. My fine furniture spruces up any home.")
end
end

function respawn(NPC)
	spawn(NPC)
end

function Jobs(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/merchant_fhara_hanford/qey_north/mer_fharahanford000.mp3", "", "agree", 1624229583, 959691088, Spawn)
	AddConversationOption(conversation, "That is right up my alley.","QuestStart")
	AddConversationOption(conversation, "Hmm, that job doesn't sound odd enough for me.  Sorry.")
	StartConversation(conversation, NPC, Spawn, "I do need to make a delivery to one of my buisness partners.  Here.  Take this stack of papers to Trevor Minturn.  You'll find him in the southern part of Qeynos.")
end  

function QuestStart(NPC, Spawn)
    OfferQuest(NPC,Spawn, delivery)
    FaceTarget(NPC, Spawn)
 	PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn, 0)
end


function Delivery(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
	AddConversationOption(conversation, "Enjoy!","Delivered")
	AddConversationOption(conversation, "Try not to eat them all in one sitting.","Delivered2")
	StartConversation(conversation, NPC, Spawn, "Oh, praise the gods!  I've been craving these delectible treats all day.  Tell Voleen thank you for me.")
end  

function Delivered(NPC, Spawn)
    SetStepComplete(Spawn,Fhara, 1)
    FaceTarget(NPC, Spawn)
end	

function Delivered2(NPC, Spawn)
    SetStepComplete(Spawn,Fhara, 1)
    FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
end	