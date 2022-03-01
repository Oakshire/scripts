--[[
	Script Name	: SpawnScripts/Baubbleshire/DigginDiggs.lua
	Script Purpose	: Diggin Diggs <Armor and Shields>
	Script Author	: Dorbin
	Script Date	: 2022.01.20
	Script Notes	: Reconstructed
--]]

-- Quest ID's
local BADGER_PELTS_FOR_DIGGS = 332 -- was 58
local FarSeas_Fifty = 236
local FarSeas_SixtyThree = 237

function spawn(NPC)
	ProvidesQuest(NPC, BADGER_PELTS_FOR_DIGGS)
	SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    if not HasCompletedQuest(Spawn, BADGER_PELTS_FOR_DIGGS) then
        	if math.random(0, 100) <= 65 then
            PlayFlavor(NPC, "voiceover/english/merchant_diggin_diggs/qey_village06/100_merchant_diggin_diggs_callout_5e1e6098.mp3", "Hear ye, hear ye! Digg's Trading Company seeks part-time hunters! Heavy coin handed out!", "", 2413237497, 889891316, Spawn)
            end
        else
    end
end
    
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/merchant_diggin_diggs/qey_village06/merchantdiggindiggs000.mp3", "", "", 96188472, 2463646265, Spawn)
	Begin(NPC, Spawn, conversation)
end

function Begin(NPC, Spawn, conversation)
	if not HasQuest(Spawn, BADGER_PELTS_FOR_DIGGS) and not HasCompletedQuest(Spawn, BADGER_PELTS_FOR_DIGGS) then
		AddConversationOption(conversation, "I don't need a sales pitch. Got any work?", "GotAnyWork")
	elseif HasQuest(Spawn, BADGER_PELTS_FOR_DIGGS) and GetQuestStep(Spawn, BADGER_PELTS_FOR_DIGGS) == 2 then
		AddConversationOption(conversation, "Here is your bundle of badget pelts.", "BundleOfPelts")
	elseif HasQuest(Spawn, FarSeas_Fifty) and GetQuestStep(Spawn, FarSeas_Fifty) == 4 then
	    AddConversationOption(conversation, "I've finished your requisition order number fifty.", "FarSeas_FiftyDone")
	elseif HasQuest(Spawn, FarSeas_SixtyThree) and GetQuestStep(Spawn, FarSeas_SixtyThree) == 4 then
	    AddConversationOption(conversation, "I've finished your requisition order number sixty-three.", "FarSeas_SixtyThreeDone")
	end
	
	AddConversationOption(conversation, "Sorry. Just passing by.")
	StartConversation(conversation, NPC, Spawn, "You're looking a might shabby there.  You could use some fine armor from Diggs' inventory.  I carry only the finest quality and sell at outrageously low, low prices!  I live for the community.")
end

function GotAnyWork(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/merchant_diggin_diggs/qey_village06/merchantdiggindiggs001.mp3", "", "", 4059634840, 1440996220, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'm interested.", "ImInterested")
	AddConversationOption(conversation, "I don't have time to hunt.")
	StartConversation(conversation, NPC, Spawn, "So, you're a worker with no task, eh?  If you're itchin' to fill your pockets with heavy coin, then I have a task for you.  Are you interested in hunting?")
end

function ImInterested(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/merchant_diggin_diggs/qey_village06/merchantdiggindiggs002.mp3", "", "", 2590912109, 2110560767, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I will return with the bundle of badger pelts. ", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Then prepare for a hunting trip in the Forest Ruins.  I'll pay you handsomely for a bundle of badger pelts.  I may even toss in a bit of Diggs' finest armor.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, BADGER_PELTS_FOR_DIGGS)
end

function BundleOfPelts(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/merchant_diggin_diggs/qey_village06/merchantdiggindiggs003.mp3", "", "thank", 2263319370, 3568007530, Spawn)
	SetStepComplete(Spawn, BADGER_PELTS_FOR_DIGGS, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I guess this is better than nothing.")
	StartConversation(conversation, NPC, Spawn, "Fine work ... fine work! I must tell you, I just paid my merchant taxes. 'Fraid the coin ain't as heavy as I promised. Sorry, taxes you know? I speak the truth!")
end

function FarSeas_FiftyDone(NPC, Spawn)
    SetStepComplete(Spawn, FarSeas_Fifty, 4)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I'm glad I could help.")
	StartConversation(conversation, NPC, Spawn, "Grand work! A bit late, but grand none-the-less. These items will soon become fine garments and armor, Diggs Armor. Thank you, huntsman! Here is the payment for your labor.")
    PlayFlavor(NPC, "voiceover/english/merchant_diggin_diggs/qey_village06/merchantdiggindiggs004.mp3", "", "thank", 1093156454, 3294248254, Spawn)
end

function FarSeas_SixtyThree(NPC, Spawn)
    SetStepComplete(Spawn, FarSeas_SixtyThree, 4)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I'm glad I could help.")
	StartConversation(conversation, NPC, Spawn, "Grand work! A bit late, but grand none-the-less. These items will soon become fine garments and armor, Diggs Armor. Thank you, huntsman! Here is the payment for your labor.")
    PlayFlavor(NPC, "voiceover/english/merchant_diggin_diggs/qey_village06/merchantdiggindiggs004.mp3", "", "thank", 1093156454, 3294248254, Spawn)
end