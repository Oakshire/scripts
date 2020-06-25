--[[
	Script Name	: SpawnScripts/ScaleYard/JondyCobbleblork.lua
	Script Purpose	: Jondy Cobbleblork 
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Quest ID's
QUEST_2 = 347 -- 183 --Sound Off!

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, QUEST_2) and GetQuestStep(Spawn, QUEST_2) == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jondy_cobbleblork/fprt_hood06/jondy001.mp3", "", "", 142551666, 1033051198, Spawn)
		AddConversationOption(conversation, "AHHHHHHHHHHHHHHHHHHHHHHHH!", "dlg_0_1")
		StartConversation(conversation, NPC, Spawn, "Oh, hello there. W-what can I help you with?")
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jondy_cobbleblork/fprt_hood06/quest_jondy_idle_text_fd393af4.mp3", "One scale. Just one scale! That's all I need to complete my research on fling zomping and its effect on kittens. But will an iksar give me a scale? Noooo!", "", 1915356178, 1892919030, Spawn)
	end
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	SetStepComplete(Spawn, QUEST_2, 3)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jondy_cobbleblork/fprt_hood06/jondy003.mp3", "", "", 896209422, 579853985, Spawn)
	AddConversationOption(conversation, "Ha!")
	StartConversation(conversation, NPC, Spawn, "Aiyyeeee! Stop, oh please stop! In the name of Brell, and my dear ole mother, and everything tinkerable, please don't hurt me! I'm so scared I almost foozlesporked my clangerfimbles! Oh, what a mess that would have been!")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jondy_cobbleblork/fprt_hood06/quest_jondy_idle_text_fd393af4.mp3", "One scale. Just one scale! That's all I need to complete my research on fling zomping and its effect on kittens. But will an iksar give me a scale? Noooo!", "", 1915356178, 1892919030, Spawn)
--]]

