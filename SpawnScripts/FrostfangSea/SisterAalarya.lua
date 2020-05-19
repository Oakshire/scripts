--[[
	Script Name	: SpawnScripts/FrostfangSea/SisterAalarya.lua
	Script Purpose	: Sister Aalarya <Sisterhood of Erollisi>
	Script Author	: theFoof
	Script Date	: 2013.08.19
	Script Notes	:
--]]

local TrustIssues = 85

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, TrustIssues) and not QuestStepIsComplete(Spawn, TrustIssues, 3) then
		PlayFlavor(NPC, "sister_aalarya/halas/new_halas_guard_house/sister_aalarya001.mp3", "", "", 2119732267, 2070285157, Spawn)
		AddConversationOption(conversation, "Is this a good time?", "Quest1Chat_1")
		AddConversationOption(conversation, "I have a few questions about the Sisterhood.", "Quest1Chat_7")
		AddConversationOption(conversation, "Brogan MacLellan sent me to speak with you.", "Quest1Chat_6")
		AddConversationOption(conversation, "I can already tell this is going to be painful.  Goodbye.")
		StartConversation(conversation, NPC, Spawn, "Hello there, friend.  Blessings of Erollisi to you.")
	elseif HasQuest(Spawn, TrustIssues) then
		PlayFlavor(NPC, "", "Hello again, " .. GetName(Spawn) .. ". Blessings of Erollisi to you.", "hello", 0, 0, Spawn)
	else
		PlayFlavor(NPC, "", "Blessings of Erollisi to you.", "hello", 0, 0, Spawn)
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "sister_aalarya/halas/new_halas_guard_house/sister_aalarya002.mp3", "", "", 778240445, 1265640341, Spawn)
	AddConversationOption(conversation, "Perfect.", "Quest1Chat_7")
	AddConversationOption(conversation, "On second thought, I have somewhere to be.")
	StartConversation(conversation, NPC, Spawn, "Of course.  I was looking forward to some stimulating conversation.  Sometimes the quiet life of a Sister, while spiritually fulfilling, is dreadfully dull.  Ho hum.")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "sister_aalarya/halas/new_halas_guard_house/sister_aalarya005.mp3", "", "", 2831123605, 2891513253, Spawn)
	AddConversationOption(conversation, "What did he do?", "Quest1Chat_3")
	AddConversationOption(conversation, "Whatever, I don't have the time for this.")
	StartConversation(conversation, NPC, Spawn, "Mithaniel Marr smiled upon this forsaken land when He saw the plight of the coldain. They were lost, forgotten, and locked in an endless and hopelessly futile battle with the Ry'Gorr. ")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "sister_aalarya/halas/new_halas_guard_house/sister_aalarya006.mp3", "", "", 839696070, 368595826, Spawn)
	AddConversationOption(conversation, "So how does Erollisi fit in?", "Quest1Chat_4")
	AddConversationOption(conversation, "Isn't that a bit Deus Ex Machina?", "Quest1Chat_8")
	AddConversationOption(conversation, "I can't stand the preaching of a religious zealot.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "He blessed the isle, and showed pilgrims the way here.  Since His intervention, this land has flourished.")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "sister_aalarya/halas/new_halas_guard_house/sister_aalarya009.mp3", "", "", 3023080955, 3940179989, Spawn)
	AddConversationOption(conversation, "And you are followers of Erollisi Marr.", "Quest1Chat_5")
	AddConversationOption(conversation, "Hence the name: Erollis.", "Quest1Chat_5")
	AddConversationOption(conversation, "I can't stand the preaching of a religious zealot.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "He left us this statue of His sister.  This isle is named in Her honor.")
end

function Quest1Chat_5(NPC, Spawn)
	SetStepComplete(Spawn, TrustIssues, 3)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "sister_aalarya/halas/new_halas_guard_house/sister_aalarya010.mp3", "", "", 2543843692, 2274240039, Spawn)
	AddConversationOption(conversation, "Thank you, Sister Aalarya.")
	AddConversationOption(conversation, "I can understand why followers would come here.")
	StartConversation(conversation, NPC, Spawn, "This place has become a sacred meeting place for devoted followers of Marr.  All who worship Mithaniel or Erollisi are welcome to join us and pay Them tribute.")
end

function Quest1Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "sister_aalarya/halas/new_halas_guard_house/sister_aalarya004.mp3", "", "", 2080247973, 2428888366, Spawn)
	AddConversationOption(conversation, "Okay, okay, I'm leaving!")
	StartConversation(conversation, NPC, Spawn, "Brogan?  Brogan MacLellan?!  Again?  So now that we stopped acknowledging him, he's sending others to harass us! I refuse to honor his inane, vapid, fever-mad, unfounded accusations with a response.  Get out of here, NOW!")
end

function Quest1Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "sister_aalarya/halas/new_halas_guard_house/sister_aalarya003.mp3", "", "", 3370074263, 1372386631, Spawn)
	AddConversationOption(conversation, "Why did you come to Erollis?", "Quest1Chat_2")
	AddConversationOption(conversation, "Why don't you leave?", "Quest1Chat_9")
	AddConversationOption(conversation, "Is it true what they say about the Sisterhood?", "Quest1Chat_10")
	AddConversationOption(conversation, "Whatever, I don't have the time for this.")
	StartConversation(conversation, NPC, Spawn, "It is my duty to speak to travelers about our order.  What would you like to know?")
end

function Quest1Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "sister_aalarya/halas/new_halas_guard_house/sister_aalarya011.mp3", "", "", 735077916, 1256331838, Spawn)
	AddConversationOption(conversation, "So how does Erollisi fit in?", "Quest1Chat_4")
	AddConversationOption(conversation, "I can't stand the preaching of a religious zealot.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "One cannot claim to understand the machinations or motivations of the gods.  They can drastically change our world or they can leave us to our own designs.  The faithful will not question Their actions.")
end

function Quest1Chat_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I see what you mean.", "Quest1Chat_3")
	AddConversationOption(conversation, "Tell me about your arrival.", "Quest1Chat_3")
	StartConversation(conversation, NPC, Spawn, "This land is holy, blessed by the gods we revere.  I'll answer your question with a question: why would be anywhere else?")
end

function Quest1Chat_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Sorry to offend.  Tell me about your arrival.", "Quest1Chat_3")
	AddConversationOption(conversation, "You wouldn't be so defensive if you weren't hiding something!")
	StartConversation(conversation, NPC, Spawn, 'That depends on what "they" say.  And I would suggest that unless you are genuinely interested in becoming a member of the Sisterhood, that you ' .. "don't make a cad of yourself by questioning our customs.")
end
