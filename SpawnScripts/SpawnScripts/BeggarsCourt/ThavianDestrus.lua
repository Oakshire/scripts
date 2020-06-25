--[[
	Script Name	: SpawnScripts/BeggarsCourt/ThavianDestrus.lua
	Script Purpose	: Thavian Destrus <Half Elf Mentor>
	Script Author	: Scatman (updated by Cynnar 2018.06.13 02:06:21)
	Script Date	: 2009.04.05
	Script Notes	: 
--]]

local HALF_ELF = 6
local HALFELF_MENTOR_QUEST_1= 307

function spawn(NPC)
	ProvidesQuest(NPC, HALFELF_MENTOR_QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, HALFELF_MENTOR_QUEST_1) then
		Say(NPC, "The Brotherhood awaits.", Spawn)
	elseif HasQuest(Spawn, HALFELF_MENTOR_QUEST_1) then
		Say(NPC, "The Brotherhood awaits.", Spawn)
	else
		if GetRace(Spawn) == HALF_ELF then
			WhyDoYouComeHere(NPC, Spawn, conversation)
		else
			--PlayFlavor(NPC, "voiceover/english/tutorial_revamp/thavian_destrus/fprt_hood04/qst_thavian_nothalfelf_ccca9558.mp3", "I am not charged with helping you, and so I will not. Good day.", "", 3519862132, 3162907457, Spawn)
		end
	end
end

-----------------------------------------------------------------------------------------------------------------
--									A Delivery
-----------------------------------------------------------------------------------------------------------------

function WhyDoYouComeHere(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/thavian_destrus/fprt_hood04/quests/thavian/thavian000.mp3", "", "", 2783991640, 3181833189, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_1_1")
	StartConversation(conversation, NPC, Spawn, "Why do you come here, Ayr'Dal?")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/thavian_destrus/fprt_hood04/quests/thavian/thavian001.mp3", "", "", 3101830372, 2951993261, Spawn)
	AddConversationOption(conversation, "I am part high elf.", "dlg_3_2")
	AddConversationOption(conversation, "I am part wood elf.", "dlg_2_2")
	AddConversationOption(conversation, "I am part dark elf.", "dlg_1_2")
	AddConversationOption(conversation, "I have never known.", "MaybeBetter")
	StartConversation(conversation, NPC, Spawn, "It is not a hard question, but it is an important one. Look around you, care to notice a certain lack of, shall we say, aesthetics? What is your heritage, from what elves do you come?")
end

function MaybeBetter(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/thavian_destrus/fprt_hood04/quests/thavian/thavian005.mp3", "", "", 3937144188, 532707745, Spawn)
	AddConversationOption(conversation, "Why do you say that?", "dlg_5_4")
	StartConversation(conversation, NPC, Spawn, "Maybe it's better that way. It will keep people on their toes. The more people think they don't know about you the more powerful you become in their mind. Use this to its full advantage. In these times you need every advantage you can get.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/thavian_destrus/fprt_hood04/quests/thavian/thavian004.mp3", "", "", 1381606320, 1550291575, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_3_3")
	AddConversationOption(conversation, "No.", "WhatIMeanIs")
	StartConversation(conversation, NPC, Spawn, "Heh, I believe it. That will make things harder for you, unfortunately. People will expect more from you than they would a half breed from a lesser elf. But it's hard, being part human and all, to live up to their expectations. You'll make it all right, but you need to use both sides of your heritage to their full advantage. You're not as strong as a human or an elf, but you're not nearly as weak, either. Understand?")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/thavian_destrus/fprt_hood04/quests/thavian/thavian003.mp3", "", "", 1928672703, 433177199, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_3_3")
	AddConversationOption(conversation, "No.", "WhatIMeanIs")
	StartConversation(conversation, NPC, Spawn, "I pity you, then. One important thing you need to learn about Freeport is that nobody cares for the concerns of a tree-happy elf. Your elven blood gives you a lithe stride, but let only your enemies appreciate that. You must rely on your human nature to survive here, otherwise you'll just be another lost elf with nowhere to call home. Understand?")
end

function WhatIMeanIs(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "The brotherhood?", "dlg_5_5")
	StartConversation(conversation, NPC, Spawn, "What I mean is, don't limit yourself. Cultures differ even within species. Don't try to fit in where you don't belong and will never be welcomed. Instead, be welcomed into the fold of The Brotherhood. We are an advantage few Ayr'Dal--none of those within Qeynos--have. It is a useful tool indeed.")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/thavian_destrus/fprt_hood04/quests/thavian/thavian002.mp3", "", "", 119866088, 1685337170, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_3_3")
	AddConversationOption(conversation, "No.", "WhatIMeanIs")
	StartConversation(conversation, NPC, Spawn, "Look around, feigned Koada, see any others like you? No, no you don't. Take that to heart. You get by here using your human nature. Your elven abilities come in handy, but try not to broadcast them. Nobody cares if you think something is pretty, or cute. Understand?")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/thavian_destrus/fprt_hood04/quests/thavian/thavian007.mp3", "", "", 3875610028, 3096383378, Spawn)
	AddConversationOption(conversation, "Why do you say that?", "dlg_5_4")
	StartConversation(conversation, NPC, Spawn, "Good. Understanding is a key advantage, and in these times we need all the advantages we can get.")
end

function dlg_5_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/thavian_destrus/fprt_hood04/quests/thavian/thavian008.mp3", "", "", 753788028, 2113721405, Spawn)
	AddConversationOption(conversation, "The Brotherhood?", "dlg_5_5")
	StartConversation(conversation, NPC, Spawn, "Look around you. Things are bad everywhere, and getting worse. For the Ayr'Dal of Beggar's Court it has recently become a struggle to survive in day-to-day affairs. And, so, The Brotherhood was formed.")
end

function dlg_5_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/thavian_destrus/fprt_hood04/quests/thavian/thavian009.mp3", "", "", 1489419097, 2704508898, Spawn)
	AddConversationOption(conversation, "Against the militia?", "dlg_5_6")
	StartConversation(conversation, NPC, Spawn, "The Ayr'Dal Brotherhood. In the past we would not have been necessary. But, as of late, we are unfortunately needed. By his own machinations Captain Lusarius Rommuls was transferred to this district. He now serves as Adjunct-Captain of Beggar's Court. Rommuls hates us, Vlaru. And he is doing everything in his power to rid Freeport of our kind. We have no wish to leave, naturally, so we will fight back.")
end

function dlg_5_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/thavian_destrus/fprt_hood04/quests/thavian/thavian010.mp3", "", "", 1491391518, 212658016, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_5_7")
	AddConversationOption(conversation, "No, I cannot.")
	StartConversation(conversation, NPC, Spawn, "No, against Rommuls. Most do not agree with him, but are too afraid to openly oppose him. We are not afraid. Will you help us?")
end

function dlg_5_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/thavian_destrus/fprt_hood04/quests/thavian/thavian011.mp3", "", "", 3880227790, 3152826653, Spawn)
	AddConversationOption(conversation, "I would like to help here.", "dlg_5_9")
	AddConversationOption(conversation, "I would like to help elsewhere.", "dlg_5_8")
	StartConversation(conversation, NPC, Spawn, "Good. You can help here, or elsewhere if you wish. It just depends on how much you're willing to risk.")
end

function dlg_5_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/thavian_destrus/fprt_hood04/quests/thavian/thavian012.mp3", "", "", 4017582198, 2037655220, Spawn)
	AddConversationOption(conversation, "All right, thank you.")
	AddConversationOption(conversation, "I changed my mind, I would like to help out here.", "dlg_5_9")
	StartConversation(conversation, NPC, Spawn, "All right. Travel to the Sunken City. Speak with Inquisitor Thorson there, his tasks are not those of The Brotherhood, but they serve our needs. Speak not to him of The Brotherhood.")
end

function dlg_5_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/thavian_destrus/fprt_hood04/quests/thavian/thavian013.mp3", "", "", 2160728632, 1584767054, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest1")
	AddConversationOption(conversation, "No.")
	StartConversation(conversation, NPC, Spawn, "All right. You can start by delivering a message to the Lieutenant of the Ayr'Dal Brotherhood for me. What do you say? You'll find him on the western end of the northern portion of Beggar's Court. He'll be in a second level room. When you speak to him, tell him The Brotherhood Awaits, he will recognize you.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, HALFELF_MENTOR_QUEST_1)
end