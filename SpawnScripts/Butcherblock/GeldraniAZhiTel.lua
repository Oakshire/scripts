--[[
	Script Name	: SpawnScripts/ButcherblockMountains/GeldraniAZhiTel.lua
	Script Purpose	: Geldrani A'Zhi'Tel 
	Script Author	: jakejp
	Script Date	: 2018.06.13
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local EmptyVial = 46457
local FilledVial = 7641

local ADimLight = 306
local DiggingInTheYard = 313
local AStrangeMix = 314


function spawn(NPC)
	ProvidesQuest(NPC, ADimLight)
	ProvidesQuest(NPC, DiggingInTheYard)
	ProvidesQuest(NPC, AStrangeMix)

end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, ADimLight) == false and HasQuest(Spawn, ADimLight) == false  and CanReceiveQuest(Spawn, ADimLight) then
		-- Offer A Dim Light if not completed or started 
		PlayFlavor(NPC, "geldrani_a_zhi_tel/_exp03/exp03_rgn_butcherblock/geldrani/qst_geldrani_001.mp3", "", "", 1446762141, 4155654886, Spawn)
		AddConversationOption(conversation, "Okay, I'll bite.  What is it you have been researching?", "dlg_9_1")
		AddConversationOption(conversation, "It sounds like you are doing just fine, then.  Farewell to you.")
		StartConversation(conversation, NPC, Spawn, "The Arasai can take their destiny into their own hands.  My research has led me here, and I am so close to completion that I can taste success.")
    elseif GetQuestStep(Spawn, ADimLight) == 1 then
		PlayFlavor(NPC, "geldrani_a_zhi_tel/_exp03/exp03_rgn_butcherblock/geldrani/qst_geldrani_001.mp3", "", "", 1446762141, 4155654886, Spawn)
		AddConversationOption(conversation, "Unfortunately, I haven't found one of the orbs yet, but I will.")
		StartConversation(conversation, NPC, Spawn, "The mystics will be carrying the luminescent orbs. Have you confronted them?")
	elseif GetQuestStep(Spawn, ADimLight) == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1048.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have, and I was able to find one of the orbs for you.", "dlg_2_1")
		StartConversation(conversation, NPC, Spawn, "The mystics will be carrying the luminescent orbs.  Have you confronted them?")
	elseif HasCompletedQuest(Spawn, DiggingInTheYard) == false and HasQuest(Spawn, DiggingInTheYard) == false  and CanReceiveQuest(Spawn, DiggingInTheYard) then
		PlayFlavor(NPC, "geldrani_a_zhi_tel/_exp03/exp03_rgn_butcherblock/geldrani/qst_geldrani_006.mp3", "", "", 2140158429, 3749106797, Spawn)
		AddConversationOption(conversation, "If I were looking for this soil, where might I find it?", "GiveDiggingInTheYard")
		AddConversationOption(conversation, "Get a shovel, then.  I need to be going.")
		StartConversation(conversation, NPC, Spawn, "Now, in order to conduct my experiment, I need a couple of elements that can be found within the Butcherblock Mountains.  First, I will need a pile of soil.  The soil I need can be found just below the surface, a few feet down.  The kobolds, in their savage fervor, will occasionally dig some of this soil up from what would otherwise be rock-solid impacted dirt.  See if you can find some of these piles of pure soil.")
	elseif GetQuestStep(Spawn, DiggingInTheYard) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1048.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "The soil is well-guarded, but I will return with it soon.")
		StartConversation(conversation, NPC, Spawn, "I will need the soil as soon as possible.  Did you find it yet?")
	elseif GetQuestStep(Spawn, DiggingInTheYard) == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1048.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I found the soil you were asking for.", "dlg_8_1")
		StartConversation(conversation, NPC, Spawn, "I will need the soil as soon as possible.  Did you find it yet?")
	elseif HasCompletedQuest(Spawn, AStrangeMix) == false and HasQuest(Spawn, AStrangeMix) == false  and CanReceiveQuest(Spawn, AStrangeMix) then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1048.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "This vial doesn't seem like it would hold much. This is all you need?", "GiveAStrangeMix")
		AddConversationOption(conversation, "You can find someone else to fetch your water.")
		StartConversation(conversation, NPC, Spawn, "As I'm sure you can well imagine, in order to plant a mystical seedling, you need water that is itself mystical in nature. There is a pool of water not far from here that will provide me with the water I need. The pool within the nearby druid rings absorbs much of the latent magic properties of that ancient place, and will be perfect for what I need. Please take this vial, and fill it with the water you find there.")
	elseif GetQuestStep(Spawn, AStrangeMix) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1048.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "No, I have not collected it yet. I will return.")
		StartConversation(conversation, NPC, Spawn, "Were you able to find the water I need?")
	elseif GetQuestStep(Spawn, AStrangeMix) == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1048.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I have it right here.", "dlg_13_1")
		StartConversation(conversation, NPC, Spawn, "Were you able to find the water I need?")
	elseif HasCompletedQuest(Spawn, AStrangeMix) then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1048.mp3", "", "", 0, 0, Spawn)
		Say(NPC, "My research will shape the direction of fate for all Arasai one day. Remember this.")
	end
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, ADimLight, 2)
	PlayFlavor(NPC, "geldrani_a_zhi_tel/_exp03/exp03_rgn_butcherblock/geldrani/qst_geldrani_005.mp3", "", "", 3939464934, 409091383, Spawn)
		AddConversationOption(conversation, "Let's see what you would be having me do first.", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "Ah, there we are.  Now be careful with that, they are quite fragile, and can be easily disrupted.  Ah, yes, this will do perfectly.  You did a fine job retrieving this, and there is still more to be done.  I trust I can rely on your help for a bit longer, yes?")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "geldrani_a_zhi_tel/_exp03/exp03_rgn_butcherblock/geldrani/qst_geldrani_007.mp3", "", "", 4076175152, 3212649291, Spawn)
		AddConversationOption(conversation, "I will see what I can do.", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "Who knows what those curs are digging for, but in the end, they are doing the hard work for me, anyway.  Bring me as much of the soil as you can find.")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "geldrani_a_zhi_tel/_exp03/exp03_rgn_butcherblock/geldrani/qst_geldrani_008.mp3", "", "", 1548158395, 1047801679, Spawn)
		AddConversationOption(conversation, "Umm... sure.  Seedling?  I thought you had some dim ball of light.", "dlg_8_2")
	StartConversation(conversation, NPC, Spawn, "I had little doubt you would return with the soil I needed.  Yes, everything is coming together nicely.  All I need is the water, and I can plant the seedling.  Isn't this exciting?")
end

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, DiggingInTheYard, 2)

	PlayFlavor(NPC, "geldrani_a_zhi_tel/_exp03/exp03_rgn_butcherblock/geldrani/qst_geldrani_009.mp3", "", "", 172858727, 2005436455, Spawn)
		AddConversationOption(conversation, "Fine by me.", "dlg_8_3")
	StartConversation(conversation, NPC, Spawn, "Yes, well, I would explain it, but I'm certain it would not make much sense to you.  Now, if you're still willing, I have one more thing that needs to be gathered, and you can be on your way if you choose.")
end

function dlg_8_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1048.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "This vial doesn't seem like it would hold much. This is all you need?", "GiveAStrangeMix")
		AddConversationOption(conversation, "You can find someone else to fetch your water.")
		StartConversation(conversation, NPC, Spawn, "As I'm sure you can well imagine, in order to plant a mystical seedling, you need water that is itself mystical in nature. There is a pool of water not far from here that will provide me with the water I need. The pool within the nearby druid rings absorbs much of the latent magic properties of that ancient place, and will be perfect for what I need. Please take this vial, and fill it with the water you find there.")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "geldrani_a_zhi_tel/_exp03/exp03_rgn_butcherblock/geldrani/qst_geldrani_002.mp3", "", "", 1171507334, 3736299581, Spawn)
		AddConversationOption(conversation, "Perhaps.  What is it you need to have done?", "dlg_9_2")
		AddConversationOption(conversation, "I've got enough to deal with at the present.  Good day to you.")
	StartConversation(conversation, NPC, Spawn, "I believe I've found a... well, an energy source that could prove quite helpful if we learn how to properly harness it.  I've been running some studies back in Darklight Wood, and the trail of my findings has led me here.  I'm wondering if you might be able to lend me some assistance.")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "geldrani_a_zhi_tel/_exp03/exp03_rgn_butcherblock/geldrani/qst_geldrani_003.mp3", "", "", 46316574, 116030881, Spawn)
		AddConversationOption(conversation, "Hmm... well, it sounds simple enough.  If the pay is worth it, I'll see if I can get one of these orbs for you.", "GiveADimLight")
		AddConversationOption(conversation, "This doesn't sound like it's worth my time.  I need to be going.")
	StartConversation(conversation, NPC, Spawn, "It's quite simple, really.  The energy manifests itself as a small, floating luminescent light.  The Yarpsnarl mystics have found a way to entrap these orbs, and they use them as charms, completely unaware as to what it is they actually have.  It's probably easiest to just gather one of the orbs from the Yarpsnarl, rather than trying to catch one yourself.")
end

function dlg_13_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "geldrani_a_zhi_tel/_exp03/exp03_rgn_butcherblock/geldrani/qst_geldrani_012.mp3", "", "", 739319511, 2263918899, Spawn)
		AddConversationOption(conversation, "Control their destiny?  What exactly is it you are doing here?", "dlg_13_2")
	StartConversation(conversation, NPC, Spawn, "Ah, here is the water.  I now have the ingredients I need to cultivate the seedling, and see if my research was indeed accurate.  If so, this could mean a good deal to the Arasai people, and their ability to control their destiny.")
end

function dlg_13_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, AStrangeMix, 2)
	PlayFlavor(NPC, "geldrani_a_zhi_tel/_exp03/exp03_rgn_butcherblock/geldrani/qst_geldrani_013.mp3", "", "", 3301309951, 3942968739, Spawn)
		AddConversationOption(conversation, "Your rudeness will earn you no friends, Arasai.  There might be others interested in what is happening here, so tread lightly.", "dlg_13_3")
	StartConversation(conversation, NPC, Spawn, "That is none of your concern!  You have done what I asked and received your payment for your services.  Now be off with you - I have much work to do.")
end


function GiveADimLight(NPC, Spawn)
	OfferQuest(NPC, Spawn, ADimLight)
end

function GiveDiggingInTheYard(NPC, Spawn)
	OfferQuest(NPC, Spawn, DiggingInTheYard)
end

function GiveAStrangeMix(NPC, Spawn)
	OfferQuest(NPC, Spawn, AStrangeMix)
end