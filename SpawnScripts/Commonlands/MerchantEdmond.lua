--[[
    Script Name    : SpawnScripts/Commonlands/MerchantEdmond.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.20 04:05:08
    Script Purpose : 
                   : 
--]]

local DoOrDieSaysIrizian = 5226

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if GetQuestStep(Spawn, DoOrDieSaysIrizian) == 1 then
	AddConversationOption(conversation, "Irizan sent me.", "Option1")
	elseif GetQuestStep(Spawn, DoOrDieSaysIrizian) == 4 then
	AddConversationOption(conversation, "I helped the dark elf.  What now?", "Option4")
	end
	AddConversationOption(conversation, "Just browsing.")
	StartConversation(conversation, NPC, Spawn, "Are you looking for something in particular? ")
	PlayFlavor(NPC, "voiceover/english/merchant_edmond/commonlands/quests/merchant_edmond/merchant_edmond001.mp3", "", "", 1980071880, 2174379061, Spawn)
end

function Option1(NPC, Spawn)
    SetStepComplete(Spawn, DoOrDieSaysIrizian, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Do I have a choice?", "Option2")
	StartConversation(conversation, NPC, Spawn, "So, you're the one he sent, huh?  I take it you want your assignment.")
	PlayFlavor(NPC, "voiceover/english/merchant_edmond/commonlands/quests/merchant_edmond/merchant_edmond002.mp3", "", "", 4096006744, 2786667309, Spawn)
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Got it.  Just give me my assignment.", "Option3")
	StartConversation(conversation, NPC, Spawn, "No, no you don't.  And don't go getting any funny ideas.  A bit of free advice, stranger: Don't cross Irizan.  That is one man you don't want on your bad side.  Got it?")
	PlayFlavor(NPC, "voiceover/english/merchant_edmond/commonlands/quests/merchant_edmond/merchant_edmond003.mp3", "", "", 1028429091, 149503362, Spawn)
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Got it.")
	StartConversation(conversation, NPC, Spawn, "All right. Find the dark elf at the other side of this here crossroads.  You can't miss her; just listen for the whiny little wretch.  You're going to lend her a hand.  Do what ever you can to help.  Your future is at stake.  Don't screw this up.  And whatever you find while aiding her, you return to me.  Understand?")
	PlayFlavor(NPC, "voiceover/english/merchant_edmond/commonlands/quests/merchant_edmond/merchant_edmond004.mp3", "", "", 729041430, 1811697734, Spawn)
end


function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "She said she's from Qeynos. Did you know that?", "Option5")
	StartConversation(conversation, NPC, Spawn, "Let's see what you got. ... Huh. You might as well keep it.  Let me finish my report to Irizan, then you'll be on your way.")
	PlayFlavor(NPC, "voiceover/english/merchant_edmond/commonlands/quests/merchant_edmond/merchant_edmond006.mp3", "", "", 4245737478, 67718472, Spawn)
end

function Option5(NPC, Spawn)
    SetStepComplete(Spawn, DoOrDieSaysIrizian, 4)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Alright.")
	StartConversation(conversation, NPC, Spawn, "There is little we don't know.  Take this ledger to Irizan.  If you know what's good for you, you won't read it, and you won't ask questions.")
	PlayFlavor(NPC, "voiceover/english/merchant_edmond/commonlands/quests/merchant_edmond/merchant_edmond007.mp3", "", "", 3708992911, 3982515418, Spawn)
end






function respawn(NPC)
	spawn(NPC)
end