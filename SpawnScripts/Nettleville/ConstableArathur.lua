--[[
	Script Name	: SpawnScripts/Nettleville/ConstableArathur.lua
	Script Purpose	: Constable Arathur 
	Script Author	: Scatman, premierio015
	Script Date	: 2009.08.12, modified on 03.10.2021
	Script Notes	:  Added quest dialogues
--]]

local AnIntriguingEye = 5366

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/optional1/constable_arathur/qey_village01/constablearathur000.mp3", "", "", 1713133658, 629344486, Spawn)
	if GetQuestStep(Spawn, AnIntriguingEye) == 8 then
	AddConversationOption(conversation, "I must report a missing coin. It is unique and has an eye carved into its face.  ", "Option1")
	end
	AddConversationOption(conversation, "I shall do my part. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Hail, Qeynosian. Please be on the lookout for any illicit trade activities. We must all do our part to keep corruption from creeping into our fair city. ")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional1/constable_arathur/qey_village01/constablearathur001.mp3", "", "", 1588261699, 986294832, Spawn)
	AddConversationOption(conversation, "What is this coin?", "Option2")
	StartConversation(conversation, NPC, Spawn, "Some reported seeing such a coin strung about the necks of noble undead who lurk within the dark and dangerous recesses of the Down Below.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional1/constable_arathur/qey_village01/constablearathur002.mp3", "", "", 3293222498, 896447316, Spawn)
	AddConversationOption(conversation, "Could I help?", "Option3")
	StartConversation(conversation, NPC, Spawn, "Tavern tales claim it's the key to unlocking a secret hive of thieves in the Down Below. What I wouldn't give to gain access to such a place. ")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional1/constable_arathur/qey_village01/constablearathur003.mp3", "", "", 4182403817, 526127702, Spawn)
	AddConversationOption(conversation, "What sort of evidence do you seek? ", "Option4")
	StartConversation(conversation, NPC, Spawn, "You can help the guards repel the flow of illegal libations into this city. Should you ever gain access into the hive, surely there must be evidence of the smugglers and their associates who break our laws.")
end

function Option4(NPC, Spawn)
    SetStepComplete(Spawn, AnIntriguingEye, 8)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional1/constable_arathur/qey_village01/constablearathur004.mp3", "", "", 831102203, 357868312, Spawn)
	AddConversationOption(conversation, "I will keep an eye out for such a list.")
	StartConversation(conversation, NPC, Spawn, "The Qeynos Guard would pay a great bounty for evidence such as a list detailing what merchants in our fair city deal in illegal trade.  We must punish these Qeynosians for their illicit acts.")
end




