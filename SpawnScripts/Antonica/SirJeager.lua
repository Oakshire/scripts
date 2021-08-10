--[[
    Script Name    : SpawnScripts/Antonica/SirJeager.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.10 09:08:50
    Script Purpose : 
                   : 
--]]

local GettingTheAxe = 5334 -- Getting the Axe Quest
local SabertoothBattlePlans = 5335 -- Sabertooth Battle Plans Quest

function spawn(NPC)

end

function hailed(NPC, Spawn)
	    FaceTarget(NPC, Spawn)
    	local conversation = CreateConversation()
    if not HasQuest(Spawn, SabertoothBattlePlans) then
    	PlayFlavor(NPC, "voiceover/english/sir_jeager/antonica/sirjeager000.mp3", "", "", 3221404151, 3230765792, Spawn)
    	if HasCompletedQuest(Spawn, GettingTheAxe) and not HasCompletedQuest(Spawn, SabertoothBattlePlans) then
    	AddConversationOption(conversation, "I would like to help with the campaign against the Sabertooth.", "Option1")
    	end
    	AddConversationOption(conversation, "I'm just looking around.", "Option0")
        if HasCompletedQuest(Spawn, GettingTheAxe) then
    	AddConversationOption(conversation, "No thank you.")
    	end
    	StartConversation(conversation, NPC, Spawn, "Greetings! Can I help you with something?")
	elseif HasQuest(Spawn, SabertoothBattlePlans) then
	      PlayFlavor(NPC, "voiceover/english/sir_jeager/antonica/sirjeager005.mp3", "", "", 1410263883, 2325716326, Spawn)
	      if GetQuestStep(Spawn, SabertoothBattlePlans) == 2 then
	          AddConversationOption(conversation, "Yes, here they are.", "Option2")
	          end
	    	AddConversationOption(conversation, "Not yet, but soon.")
	StartConversation(conversation, NPC, Spawn, "You have the battle plans?")
   end
end

function Option0(NPC, Spawn)
    	    FaceTarget(NPC, Spawn)
    	local conversation = CreateConversation()
    	PlayFlavor(NPC, "voiceover/english/sir_jeager/antonica/sirjeager004.mp3", "", "", 3285899250, 1646181505, Spawn)
	AddConversationOption(conversation, "I will watch my back.")
		StartConversation(conversation, NPC, Spawn, "Well, be careful, or the Sabertooth clan will have you for dinner.")
end		


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/sir_jeager/antonica/sirjeager001.mp3", "", "", 1175262455, 1051406685, Spawn)
    AddConversationOption(conversation, "I am interested.", "offer")
	AddConversationOption(conversation, "I am not interested right now.")
	StartConversation(conversation, NPC, Spawn, "Really? Ahh, yes... You are the one that Squire Kivan was talking about. I do have something for you to do -- that is, if you are interested.")
end

function Option2(NPC, Spawn)
SetStepComplete(Spawn, SabertoothBattlePlans, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/sir_jeager/antonica/sirjeager006.mp3", "", "", 923179982, 4001844374, Spawn)
	AddConversationOption(conversation, "Anything to help.", "Option24")
	StartConversation(conversation, NPC, Spawn, "Hrmm...This is terrible news. Tomorrow I will write a report and send it to town with Squire Kivan. I am sure that the Royal Antonican Guard will know what to do. Reporting the Sabertooth's plans may save hundreds of lives. Antonica is indebted to you for your service, adventurer. Thank you.")
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, SabertoothBattlePlans)
end

function respawn(NPC)
	spawn(NPC)
end