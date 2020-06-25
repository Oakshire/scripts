--[[
	Script Name	: SpawnScripts/EnchantedLands/GubboChaley.lua
	Script Purpose	: Gubbo Chaley 
	Script Author	: Cynnar
	Script Date	: 2015.04.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
local LousyFairies = 117

function spawn(NPC)
	ProvidesQuest(NPC, LousyFairies)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/gubbo_chaley/enchanted/halflings/halfling_gubbo_chaley_callout_f7b85d2f.mp3", "Fritz!  They killed Fritz!  Those lousy fairies killed Fritz!", "", 2757692791, 3745928300, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, LousyFairies) and GetQuestStep(Spawn, LousyFairies) == 1 then
		PlayFlavor(NPC, "voiceover/english/gubbo_chaley/enchanted/gubbo_chaley/gubbo_chaley003.mp3", "", "", 2620521649, 511313166, Spawn)
		AddConversationOption(conversation, "Settle down.")
		StartConversation(conversation, NPC, Spawn, "What are you doing!?  You're sure not killing those miserable, low-down, good-for-nothing fairies!  They killed Fritz!")
	elseif HasQuest(Spawn, LousyFairies) and GetQuestStep(Spawn, LousyFairies) == 2 then
		SetStepComplete(Spawn, LousyFairies, 2)
		AddConversationOption(conversation, "Yes.", "dlg_0_1")
		StartConversation(conversation, QuestGiver, Player, "Uh ... so you killed them fairies, yeah?")
	elseif not HasCompletedQuest(Spawn, LousyFairies) and not HasQuest(Spawn, LousyFairies) then
		PlayFlavor(NPC, "voiceover/english/gubbo_chaley/enchanted/gubbo_chaley/gubbo_chaley001.mp3", "", "", 1577103216, 3792943385, Spawn)
		AddConversationOption(conversation, "Sure.", "dlg_0_2")
		AddConversationOption(conversation, "I don't know Fritz.")
		StartConversation(conversation, NPC, Spawn, "Kill them!  I want you to kill those lousy, stinking, yellow fairies! You'll do this for me, right? You'll do this for Fritz! ")
	elseif HasCompletedQuest(Spawn, LousyFairies) then
		PlayFlavor(NPC, "voiceover/english/gubbo_chaley/enchanted/gubbo_chaley/gubbo_chaley003.mp3", "", "", 2620521649, 511313166, Spawn)
		AddConversationOption(conversation, "Sure.")
		StartConversation(conversation, NPC, Spawn, "If you see Fritz, would you tell him I'm looking for him?")
	end
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, LousyFairies, 2)
	PlayFlavor(NPC, "voiceover/english/gubbo_chaley/enchanted/gubbo_chaley/gubbo_chaley005.mp3", "", "", 2881662034, 1373874040, Spawn)
	AddConversationOption(conversation, "Right.")
	StartConversation(conversation, NPC, Spawn, "I'm really sorry about that. Turns out, Fritz was just passed out under the docks.  Umm ... why don't you take this, and we'll just pretend we never had this little discussion. ")
end

function dlg_0_2(NPC, Spawn)
	OfferQuest(NPC, Spawn, LousyFairies)
end


