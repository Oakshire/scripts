--[[
	Script Name	: SpawnScripts/Castleview/ShaeAhla.lua
	Script Purpose	: Shae'Ahla 
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

local TargetingCorruption = 225

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	GenericHail(NPC, Spawn)
	
	if HasQuest(Spawn, TargetingCorruption) and GetQuestStep(Spawn, TargetingCorruption) == 1 then
		WherePainGose(NPC, Spawn, conversation)
	else
		RandomChat(NPC, Spawn)
	end
end

function RandomChat(NPC, Spawn)
	local choice = math.random(1, 3)
	if choice == 1 then
		Say(NPC, "To be lost is to avoid being found.", Spawn)
	elseif choice == 2 then
		Say(NPC, "A life cut off from your senses is no life at all.", Spawn)
	elseif choice == 3 then
		Say(NPC, "If you do not seek out pain, it will still find you.", Spawn)
	end
end

function WherePainGose(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/shae_ahla/qey_village04/quests/sheaahla/sheaahla000.mp3", "", "", 4274300137, 4254333791, Spawn)
	AddConversationOption(conversation, "Vindain sent me, I need your help.", "dlg_20_3")
	AddConversationOption(conversation, "What does that mean?", "dlg_20_1")
	AddConversationOption(conversation, "I agree.")
	StartConversation(conversation, NPC, Spawn, "Where pain goes, all sentient beings tend to follow.")
end

function dlg_20_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/shae_ahla/qey_village04/quests/sheaahla/sheaahla001.mp3", "", "", 3064229666, 2077041902, Spawn)
	AddConversationOption(conversation, "That is a rather pessimistic view.", "dlg_20_2")
	AddConversationOption(conversation, "That makes sense.", "RareYouAndI")
	StartConversation(conversation, NPC, Spawn, "It means that we--elves, humans, gnomes, trolls, all races--blindly plunge ourselves into darkness and chaos. We do not 'intend' to do this, but without fail we do.")
end

function RareYouAndI(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Vindain sent me, I need your help.", "dlg_20_3")
	StartConversation(conversation, NPC, Spawn, "We are rare, you and I. Why do you come to me?")
end

function dlg_20_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/shae_ahla/qey_village04/quests/sheaahla/sheaahla003.mp3", "", "", 3991540822, 537258105, Spawn)
	AddConversationOption(conversation, "Vindain sent me, I need your help.", "dlg_20_3")
	StartConversation(conversation, NPC, Spawn, "Worlds that are lost in strife and pain do tend to produce pessimists. Tell me, why are you here?")
end

function dlg_20_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/shae_ahla/qey_village04/quests/sheaahla/sheaahla004.mp3", "", "", 1399643965, 359394892, Spawn)
	AddConversationOption(conversation, "I was planting Green Wisps here in Castleview Hamlet. One wisp came alive and attacked me.", "dlg_21_2")
	StartConversation(conversation, NPC, Spawn, "What do you require?")
end

function dlg_21_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/shae_ahla/qey_village04/quests/sheaahla/sheaahla005.mp3", "", "", 2035237242, 2834747464, Spawn)
	AddConversationOption(conversation, "Can you help?", "dlg_21_3")
	StartConversation(conversation, NPC, Spawn, "You see? Corruption is everywhere.")
end

function dlg_21_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/shae_ahla/qey_village04/quests/sheaahla/sheaahla006.mp3", "", "", 1528947055, 3565435961, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_21_4")
	StartConversation(conversation, NPC, Spawn, "Yes, I can help. Please, give me your hand.")
end

function dlg_21_4(NPC, Spawn)
	SetStepComplete(Spawn, TargetingCorruption, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/shae_ahla/qey_village04/quests/sheaahla/sheaahla007.mp3", "", "", 2043489074, 1826207926, Spawn)
	AddConversationOption(conversation, "Thank you, Shae'Ahla.")
	StartConversation(conversation, NPC, Spawn, "It is done. Your fingers are blessed in a way that will counter the corruption, simply rub the leaves of the plant to cleanse it.")
end