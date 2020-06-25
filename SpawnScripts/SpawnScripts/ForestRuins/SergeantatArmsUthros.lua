--[[
	Script Name	: SpawnScripts/ForestRuins/SergeantatArmsUthros.lua
	Script Purpose	: Sergeant at Arms Uthros 
	Script Author	: John Adams
	Script Date	: 2008.09.19
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	ProvidesQuest(NPC, 1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0)
	else
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0)
	end

	if HasCompletedQuest(Spawn, 1) then
	else
		AddConversationOption(conversation, "I'm intent on staying.", "dlg_0_1")
		AddConversationOption(conversation, "Perhaps I should play it safe and go back to the village.")
		StartConversation(conversation, NPC, Spawn, "Watch your step, friend. Many adventurers get injured because they don't know the dangers that lurk here. These grounds are home to the ruins of the old mage academy.  It was destroyed during the wars that raged centuries ago.  And aside from the already dangerous inhabitants of these ruins,  elemental servants of mages lurk about. Scared yet? ... If you're intent on staying in Qeynos, I suppose we can use your help.")
	end

	if convo==1 then
		AddConversationOption(conversation, "Perhaps I should play it safe and go back to the village.", "dlg_1_1")
		StartConversation(conversation, NPC, Spawn, "Watch your step, friend. Many adventurers get injured because they don't know the dangers that lurk here. These grounds are home to the ruins of the old mage academy.  It was destroyed during the wars that raged centuries ago.  And aside from the already dangerous inhabitants of these ruins,  elemental servants of mages lurk about. Scared yet? ... If you're intent on staying in Qeynos, I suppose we can use your help.")
	end

	if convo==14 then
		AddConversationOption(conversation, "I have taken care of the vermin.", "dlg_14_1")
		AddConversationOption(conversation, "Perhaps I should play it safe and go back to the village.")
		StartConversation(conversation, NPC, Spawn, "Watch your step, friend. Many adventurers get injured because they don't know the dangers that lurk here. These grounds are home to the ruins of the old mage academy.  It was destroyed during the wars that raged centuries ago.  And aside from the already dangerous inhabitants of these ruins,  elemental servants of mages lurk about. Scared yet? ... If you're intent on staying in Qeynos, I suppose we can use your help.")
	end

end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Sounds good.", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Well, then, make yourself useful and kill some of the nasty vermin who live in this area.   And if you need something to do later, come on back, I always need help!")
end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Sure.", "dlg_14_2")
	AddConversationOption(conversation, "Not right now. ")
	StartConversation(conversation, NPC, Spawn, "Hey! Great work on the vermin.  Can you spare more time to help Qeynos?")
end

function dlg_14_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "You bet.", "dlg_14_3")
	StartConversation(conversation, NPC, Spawn, "Great! Then go and kill more vermin.")
end
