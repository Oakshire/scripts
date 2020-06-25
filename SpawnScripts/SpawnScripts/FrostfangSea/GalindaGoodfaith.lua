--[[
	Script Name	: SpawnScripts/FrostfangSea/GalindaGoodfaith.lua
	Script Purpose	: Galinda Goodfaith 
	Script Author	: theFoof
	Script Date	: 2013.03.16
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
local HalasianWelcome = 1

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
        ProvidesQuest(NPC, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
        if HasQuest(Spawn, HalasianWelcome) then
            PlayFlavor(NPC, "", "Yasha Redblade could use your help.  She's to the northeast outside of the broken ship's hull.", "nod", 1689589577, 4560189, Spawn)

        elseif HasCompletedQuest(Spawn, HalasianWelcome) then
            PlayFlavor(NPC, "", "You'll go on to accomplish great things, of this I am certain!", "", 1689589577, 4560189, Spawn)

        else
            conversation = CreateConversation()
	    PlayFlavor(NPC, "galinda_goodfaith/halas/pilgrims_landing/goodfaith_001.mp3", "", "", 153197650, 2166284813, Spawn)
	    AddConversationOption(conversation, "Who are you?", "dlg_0_1")
	    AddConversationOption(conversation, "Where am I?", "dlg_1_1")
	    StartConversation(conversation, NPC, Spawn, "Whoa!  You're awake then.  I was worried about you there for a while, " .. GetName(Spawn) .. ".")
        end
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "galinda_goodfaith/halas/pilgrims_landing/goodfaith_002.mp3", "", "", 2530966290, 131889308, Spawn)
	AddConversationOption(conversation, "I did?", "dlg_0_2")
	AddConversationOption(conversation, "Thank you for the help.", "dlg_0_4")
	AddConversationOption(conversation, "Where am I?", "dlg_1_1")
	StartConversation(conversation, NPC, Spawn, "I'm the lass who's been tending to your wounds, that's who!  You were knocked unconscious, but not before you saved three others from the sea.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "galinda_goodfaith/halas/pilgrims_landing/goodfaith_003.mp3", "", "", 2658425165, 4282904671, Spawn)
	AddConversationOption(conversation, "Thank you for the help.", "dlg_0_4")
	AddConversationOption(conversation, "Who are you?", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "You're on a big chunk of floating ice and rock, dubbed Pilgrims' Landing.  Your boat was besieged by the snow orcs and destroyed while it was on its way towards the New Halas dock.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "galinda_goodfaith/halas/pilgrims_landing/goodfaith_004.mp3", "", "", 3736336423, 4235698152, Spawn)
	AddConversationOption(conversation, "I don't remember that.", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "Cross my heart, you did!  You must have taken a nasty bump on the noggin, but that didn't halt you!  You came struggling ashore here, carrying three others, one 'neath each arm and another on your back!")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "galinda_goodfaith/halas/pilgrims_landing/goodfaith_004.mp3", "", "", 3736336423, 4235698152, Spawn)
	AddConversationOption(conversation, "Thank you for the help.", "dlg_0_4")
	AddConversationOption(conversation, "Who are you?", "dlg_0_1")
	AddConversationOption(conversation, "Where am I?", "dlg_1_1")
	StartConversation(conversation, NPC, Spawn, "They'd have surely drowned if it had not been for you.  But you fell into a deep sleep the moment you were on dry land.  I've been taking care of you ever since.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "galinda_goodfaith/halas/pilgrims_landing/goodfaith_005.mp3", "", "", 1055106469, 3750971957, Spawn)
	AddConversationOption(conversation, "Not if we attack them back.", "dlg_0_5")
	AddConversationOption(conversation, "I'm feeling pretty good now.", "dlg_1_4")
	StartConversation(conversation, NPC, Spawn, "Think nothing of it!  You're the one that went above and beyond, saving others like you did.  Healing others is why I am here.  You are not the first to have suffered an attack by the orcs, nor do I dare say you will be the last.")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "galinda_goodfaith/halas/pilgrims_landing/goodfaith_007.mp3", "", "", 2427981799, 3625665591, Spawn)
	AddConversationOption(conversation, "I'll find her.", "OfferHalasianWelcome")
	AddConversationOption(conversation, "I'm going to explore some first.  Goodbye.", "dlg_0_5")
	StartConversation(conversation, NPC, Spawn, "That is a relief to hear, " .. GetName(Spawn) .. ".  I figured a hit to the noggin couldn't keep someone as powerful as you down for long!  Yasha Redblade could definitely use your help.  She's to the northeast outside of the broken ship's hull.")
end

function dlg_0_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "galinda_goodfaith/halas/pilgrims_landing/goodfaith_006.mp3", "", "", 1162130667, 1040606597, Spawn)
	AddConversationOption(conversation, "That's great!", "OfferHalasianWelcome")
	AddConversationOption(conversation, "I'm going to explore some first.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "No doubt!  I figured a hit to the noggin couldn't keep someone as powerful as you down for long!  Yasha Redblade could definitely use your help.  She's to the northeast outside of the broken ship's hull.  She'll get you prepared to face those orcs!")
end

function OfferHalasianWelcome(NPC, Spawn) --Offers A Fine Halasian Welcome
        OfferQuest(NPC, Spawn, HalasianWelcome)
end
