--[[
	Script Name	: SpawnScripts/ButcherblockMountains/TrapperCoalbear.lua
	Script Purpose	: Trapper Coalbear 
	Script Author	: jakejp
	Script Date	: 2018.06.07
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local TheNumberOneThreatInButcherblock = 265

function spawn(NPC)
	ProvidesQuest(NPC, TheNumberOneThreatInButcherblock)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, TheNumberOneThreatInButcherblock) == false and HasQuest(Spawn, TheNumberOneThreatInButcherblock) == false and CanReceiveQuest(Spawn, TheNumberOneThreatInButcherblock) then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Huh?", "dlg_20_4")
		AddConversationOption(conversation, "You mean kobolds, right?", "dlg_20_1")
		StartConversation(conversation, NPC, Spawn, "Be on the look out! Danger lurks everywhere. I've seen two today already. Ferocious quadrupedal beasts who's insatiable appetite for adventurers like you and me can only be met with an equal disdain!")
	elseif GetQuestStep(Spawn, TheNumberOneThreatInButcherblock) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
		Say(NPC, "You're back? Already? No, no no. You couldn't have come clsoe to exterminating nearly enough bears yet. I told you, the threat of bears must be significantly reduced! Now, go!")
	elseif GetQuestStep(Spawn, TheNumberOneThreatInButcherblock) == 2 then 
		SetStepComplete(Spawn, TheNumberOneThreatInButcherblock, 2)
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "We can only hope for the best!", "dlg_4_1")
		AddConversationOption(conversation, "Um, sure. Right... ")
		StartConversation(conversation, NPC, Spawn, "Thanks for your help! Perhaps one day we'll be free from the furry clutches of their terrifying wrath... But for now we must remain vigilant, mindful of our berry patches and cautious when eating outside with family members on beautiful sun-filled days.")
	elseif HasCompletedQuest(Spawn, TheNumberOneThreatInButcherblock) == true then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
		Say(NPC, "Thanks again for your help. May the gods have mercy on us all and deliver us from a bear-filled destiny soon!")
	end
end

function dlg_20_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Bears?", "dlg_20_2")
	StartConversation(conversation, NPC, Spawn, "Oh no. Kobolds' pack-like nature, hierarchical command structure and base knowledge of divine magic have nothing on the raw paw-swatting tenacity of a bear! They're like the personification of chaotic evil... in bear form!")
end

function dlg_20_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Bears?", "dlg_20_2")
	StartConversation(conversation, NPC, Spawn, "Bears!")
end

function dlg_20_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Sure... I suppose I could help.", "GiveTheNumberOneThreatInButcherblock")
		AddConversationOption(conversation, "Forget it. I have far more important things to do.")
	StartConversation(conversation, NPC, Spawn, "Yes, bears. The number one threat in Butcherblock! Tell me, can you help? I may be an accomplished hunter, put on this world with the single purpose of removing all mammalian calamites... But I can't do it all alone. If not for me, could you do it to help protect everyone else?")
end

function dlg_20_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Will do!", "dlg_20_4")
	StartConversation(conversation, NPC, Spawn, "Great! You can get started right away. As I said, I've seen several already. Come see me again when you've significantly reduced the threat of bears in the area!")
end

function GiveTheNumberOneThreatInButcherblock(NPC, Spawn)
	OfferQuest(NPC, Spawn, TheNumberOneThreatInButcherblock)
end
