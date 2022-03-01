--[[
	Script Name		:	Arconicus.lua
	Script Purpose	:	Arconicus
	Script Author	:   premierio015
	Script Date		:   26.02.2021
	Script Notes	:	Provides quest "Potion Making"
--]]

local PotionMaking = 440


function spawn(NPC)
ProvidesQuest(NPC, PotionMaking)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/arconicus/commonlands/arconicus_hail.mp3", "", "", 747320614, 1941555874, Spawn)
	local conversation = CreateConversation()
    if not HasQuest(Spawn, PotionMaking) and not HasCompletedQuest(Spawn, PotionMaking) then
	AddConversationOption(conversation, "What's a mage doing out here in this village? Shouldn't you be at the Academy?", "Option1")
	end
	AddConversationOption(conversation, "I won't. I'll just tell you goodbye.")
	if GetQuestStep(Spawn, PotionMaking) == 2 then
	AddConversationOption(conversation, "I've managed to collect the wisp dust.", "Option2")
	elseif GetQuestStep(Spawn, PotionMaking) == 4 then
	AddConversationOption(conversation, "I have the glands you're looking for.", "Option3")
	end
	StartConversation(conversation, NPC, Spawn, "What do you want? Please don't tell me you're another one of these country bumpkins who has never seen a mage before.")
end
   


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/arconicus/commonlands/quests/arconicus/arconicus_x1_initial.mp3", "", "", 3455315407, 1419372696, Spawn)
	AddConversationOption(conversation, "That sounds like something I can do. What do you need?", "Option4")
	StartConversation(conversation, NPC, Spawn, "I am conducting research on the qualities of certain natural reagents in the surrounding area. Perhaps you  can help me? If you help gather some of these resources, then I might be able to pay you for your time, hmm?")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/arconicus/commonlands/quests/arconicus/arconicus_x1_accept.mp3", "", "", 1785612055, 106861043, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Sounds good. I'll be back when I've collected enough.", "offer")
	StartConversation(conversation, NPC, Spawn, "I am currently gathering the remains of what is left once a wisp is destroyed. It's difficult to see it at first, but if you know what to look for, you'll see it everytime. Once a wisp is killed, all that's left is very fine dust, and not much of it either. I need you to gather me a half-vial of wisp dust. Once you have it, bring it back and I'll pay you for it.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/arconicus/commonlands/quests/arconicus/arconicus_x1_return.mp3", "", "", 3346984094, 1813921082, Spawn)
	local conversation = CreateConversation()
    SetStepComplete(Spawn, PotionMaking, 2)
	AddConversationOption(conversation, "Only as long as you keep paying me. What do you need?", "Option5")
	StartConversation(conversation, NPC, Spawn, "Let me see it... yes, this is exactly what I needed. Here is your payment. If you're still interested, I am in need of other ingredients as well. Shall we continue doing business?")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/arconicus/commonlands/quests/arconicus/arconicus_x1_return2.mp3", "", "", 1461719988, 241309941, Spawn )
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll be back when I have them.")
	StartConversation(conversation, NPC, Spawn, "It has come to my attention that I've run out of the standard catalyst I use in order to process the magical properties of this wisp dust. All I need is a small little piece of flesh found within the skull of a sentient creature. Fortunately, there are a number of zombies near the graveyard that  have these 'glands'. Gather me some of these 'glands' and I will pay you for your time.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/arconicus/commonlands/quests/arconicus/arconicus_x1_finish.mp3", "", "", 1288675809, 4059495329, Spawn )
	local conversation = CreateConversation()
    SetStepComplete(Spawn, PotionMaking, 4)
	AddConversationOption(conversation, "Sheesh... bye.")
	StartConversation(conversation, NPC, Spawn, "Yes, these will do the job. As promised, here is your payment. Now if you don't mind, I need to start working on these growth potions and you're distracting me. Good bye.")
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, PotionMaking)
end