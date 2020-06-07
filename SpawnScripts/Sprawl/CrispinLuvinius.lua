--[[
	Script Name	: SpawnScripts/Sprawl/CrispinLuvinius.lua
	Script Purpose	: Crispin Luvinius 
	Script Author	: Scatman
	Script Date	: 2009.07.26
	Script Notes	: 
--]]

local QUEST_1 = 538
local QUEST_2 = 539

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			DoYouHaveAProblemDone(NPC, Spawn, conversation)
		elseif HasQuest(Spawn, QUEST_2) then
			OnQuset2(NPC, Spawn, conversation)
		else
			DoYouHaveAProblem2(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		DoYouHaveAProblem(NPC, Spawn, conversation)
	end
end

-------------------------------------------------------------------------------------------------------------------
--						QUEST 1
-------------------------------------------------------------------------------------------------------------------

function DoYouHaveAProblem(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/crispin_luvinius/fprt_hood04/std_crispin_luvinius.mp3", "", "", 1982819374, 703450678, Spawn)
	AddConversationOption(conversation, "I don't have a problem... I solve problems. Anything you need fixed?", "dlg_13_1")
	AddConversationOption(conversation, "I don't want any trouble.")
	StartConversation(conversation, NPC, Spawn, "Do you have a problem? You're gonna have one soon if you don't keep walking.")
end

function dlg_13_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Of course I can. I said I was a problem solver, didn't I?", "dlg_13_2")
	AddConversationOption(conversation, "Not really... I've got too many other things to do. Maybe some other time.")
	StartConversation(conversation, NPC, Spawn, "A problem solver, huh? You can talk the talk, but can you walk the walk? Yeah ... I got a problem. One of our customers isn't paying us for our 'services,' if you know what I'm saying. Maybe you can fix this problem for us, huh?")
end

function dlg_13_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Sounds like an easy job.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Okay, here's the deal. The guy is a vagrant who lives out in the ruins, right?  We want to send the message that no one messes with us. You need to head south of here and do some dirty work to his buddies, understand?")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/crispin_luvinius/fprt_hood04/std_crispin_luvinius.mp3", "", "", 1982819374, 703450678, Spawn)
	if GetQuestStep(Spawn, QUEST_1) == 2 then
		AddConversationOption(conversation, "Problem solved. The hoodlums are pushing up daises.", "dlg_23_1")
	end
	AddConversationOption(conversation, "I don't want any trouble.")
	StartConversation(conversation, NPC, Spawn, "Do you have a problem? You're gonna have one soon if you don't keep walking.")
end

function dlg_23_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I told you... I'm a problem solver.")
	StartConversation(conversation, NPC, Spawn, "I knew you'd take care of 'em! Good show! Oh, and here's a bit-o-coin for all your hard work. Heh, heh.")
end

-------------------------------------------------------------------------------------------------------------------
--						QUEST 2
-------------------------------------------------------------------------------------------------------------------

function DoYouHaveAProblem2(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/crispin_luvinius/fprt_hood04/std_crispin_luvinius.mp3", "", "", 1982819374, 703450678, Spawn)
	AddConversationOption(conversation, "So... have any more problems you can't handle yourself?", "dlg_24_1")
	AddConversationOption(conversation, "I don't want any trouble.")
	StartConversation(conversation, NPC, Spawn, "Do you have a problem? You're gonna have one soon if you don't keep walking.")
end

function dlg_24_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "As long as you have the money, I'm willing to do it.", "dlg_24_2")
	AddConversationOption(conversation, "Sorry... I don't work for lazy people... or cowards.")
	StartConversation(conversation, NPC, Spawn, "Oh!  I recognize you.  Glad you came along ... yeah ... very glad.  I hope your uh ... services ... are available again because ... uh ... there's this little matter... and I'm too busy to take care of it.  Yes, too busy.")
end

function dlg_24_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Don't worry... I'll handle it.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "That's what I like to hear!  Remember that dirty vagrant you delivered the message to?  Rumor has it he's hiding among rogues and scoundrels from the other districts -- a gang called the Giantslayers.  And his ... brethren ... have gotten their feathers all ruffled and are planning to come here to ... pay court ... if you understand me.  They want to send a message to their leader. Now, I enjoy a good tussle as much as anyone, of course, but, uh ... we don't want to rob you of an opportunity to prove your fighting skills. So, why don't you go to the Giantslayers and tan their mangy hides for us?")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end	

function OnQuest2(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/crispin_luvinius/fprt_hood04/std_crispin_luvinius.mp3", "", "", 1982819374, 703450678, Spawn)
	if GetQuestStep(Spawn, QUEST_2) == 2 then
		AddConversationOption(conversation, "They won't be delivering any kind of message.", "dlg_34_1")
	end
	AddConversationOption(conversation, "I don't want any trouble.")
	StartConversation(conversation, NPC, Spawn, "Do you have a problem? You're gonna have one soon if you don't keep walking.")
end

function dlg_34_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_2, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Maybe I might, maybe not. We'll see what my schedule is like.")
	StartConversation(conversation, NPC, Spawn, "I knew you'd take care of 'em!  Good show! Oh, and here's a bit-o-coin for all your hard work.  Heh, heh.")
end

function DoYouHaveAProblemDone(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/crispin_luvinius/fprt_hood04/std_crispin_luvinius.mp3", "", "", 1982819374, 703450678, Spawn)
	AddConversationOption(conversation, "I don't want any trouble.")
	StartConversation(conversation, NPC, Spawn, "Do you have a problem? You're gonna have one soon if you don't keep walking.")
end