--[[
	Script Name	: SpawnScripts/Starcrest/ProprietorBlagard.lua
	Script Purpose	: Proprietor Blagard 
	Script Author	: John Adams, premierio015
	Script Date	: 2008.09.23, modified on 03.10.2021
	Script Notes	: Added quest dialogues
--]]

local AnIntriguingEye = 5366
local TheMotleyMerchantManifest = 5368

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/proprietor_blagard/qey_village02/blagard000.mp3", "", "nod", 3622450968, 3253656744, Spawn)
	if GetQuestStep(Spawn, AnIntriguingEye) == 7 then
	AddConversationOption(conversation, "I am looking for the coin you swiped from Penwiggle.  ", "Option1")
	elseif GetQuestStep(Spawn, TheMotleyMerchantManifest) == 4 then
	AddConversationOption(conversation, "I believe you need to sign this manifest. ", "Option5")
	end
	AddConversationOption(conversation, "No thanks")
	StartConversation(conversation, NPC, Spawn, "Step up to the bar, my friend. Never has coin been better spent.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/proprietor_blagard/qey_village02/blagard001.mp3", "", "stare", 1118118280, 1928490568, Spawn)
	AddConversationOption(conversation, "I earned that coin. Where is it? ", "Option2")
	AddConversationOption(conversation, "What coin? Farewell.")
	StartConversation(conversation, NPC, Spawn, "You'd be wise to forget about that coin. It'll lead you to nothing but trouble and a one-way ticket to the tower of Ethernere. ")
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/proprietor_blagard/qey_village02/blagard002.mp3", "", "", 2782696877, 1213798417, Spawn)
	AddConversationOption(conversation, "Who are your associates? ", "Option4")
	StartConversation(conversation, NPC, Spawn, "My associates said you'd be persistent. They instructed me to tell you that if you ever procure another coin, they'll be waiting for you beyond the hand in the Down Below.   ")
end

function Option4(NPC, Spawn)
    SetStepComplete(Spawn, AnIntriguingEye, 7)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/proprietor_blagard/qey_village02/blagard003.mp3", "", "", 2943536645, 2598970112, Spawn)
	AddConversationOption(conversation, "Constable Arathur you say? Thanks and farewell. ")
	StartConversation(conversation, NPC, Spawn, "I prefer to keep my supply of rarities flowing, so I'll keep my mouth shut about that. As far as I know, you might be a mole of Constable Arathur.")
end

function Option5(NPC, Spawn)
    SetStepComplete(Spawn, TheMotleyMerchantManifest, 4)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/proprietor_blagard/qey_village02/blagard004.mp3", "", "duck", 732322808, 602463247, Spawn)
	AddConversationOption(conversation, "I'll be going now.")
	StartConversation(conversation, NPC, Spawn, "You again! I see the Hand has made use of you rather than making a training dummy outta you. Now, shove off before the guards come waltzing over to see what all the hush hush is about.")
end





