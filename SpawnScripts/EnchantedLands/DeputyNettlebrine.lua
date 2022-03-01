--[[
	Script Name	: SpawnScripts/EnchantedLands/DeputyNettlebrine.lua
	Script Purpose	: Deputy Nettlebrine 
	Script Author	: Cynnar/Patrick_Boyd
	Script Date	: 2020.9.7
	Script Notes	: Updated to include WatchYourStepInTheTSPartIV quest complete. Still has bugs
--]]

local WatchYourStepInTheTSPartIV = 102
local StartofSomethingBig = 118

function spawn(NPC)

end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, StartofSomethingBig) then
		PlayFlavor(NPC, "", "Greetings, stranger!", "", 1689589577, 4560189, Spawn)
		AddConversationOption(conversation, "No, not yet.")
		StartConversation(conversation, NPC, Spawn, "How's it going? Any luck getting back the artifacts?")
	elseif HasQuest(Spawn, WatchYourStepInTheTSPartIV) and GetQuestStep(Spawn, WatchYourStepInTheTSPartIV) == 1 then
		PlayFlavor(NPC, "", "Greetings, stranger!", "", 1689589577, 4560189, Spawn)
		AddConversationOption(conversation, "I have a letter for you.", "dlg_5_0")
		StartConversation(conversation, NPC, Spawn, "How can I help you?")
	else
		//This seems to be a bug... anyone know what the default conversation is supposed to be?
		PlayFlavor(NPC, "", "Greetings, stranger!", "", 1689589577, 4560189, Spawn)
		AddConversationOption(conversation, "No, not yet.")
		StartConversation(conversation, NPC, Spawn, "How's it going? Any luck getting back the artifacts?")
	end	

end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "No.  Was I supposed to?", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Nicely done, friend!  These'll sell tickets to our fish fry, that's for sure! Have you thought of any other fundraising ideas we can use?")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll go ask him first, then.", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "No, no.  I was just hoping.  Maybe you might run over to see Deputy Hopple or Deputy Stoutgut?  They're both on the Fundraising Committee and I haven't gotten their ideas yet.  They're stationed over near the wall.  Deputy Hopple's the more dependable of the two, though that's not saying much.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I can do that.")
	StartConversation(conversation, NPC, Spawn, "Unless we have some fundraisers.  We're going to hold a fish fry and can always use some fresh fish, if you'd like to hunt some up for us.  Something big, that'll feed a whole crowd!")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Sure, what do you need?", "dlg_2_2")
		AddConversationOption(conversation, "Perhaps later.")
	StartConversation(conversation, NPC, Spawn, "It's progressing nicely.  The whole museum plan is in the committee right now, thanks to your help!  I do have one other small thing you might do for me, if you have time.")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "A baked badger?", "dlg_2_3")
	StartConversation(conversation, NPC, Spawn, "One of the deputies stationed out by the Lazy Drain's been moping lately.  His partner kind of disappeared on him and Deputy Kegie -- that's the one who's left -- is a bit anxious.  Maybe you might cheer him up with a visit?  Oh!  And he sure likes baked badger.  Maybe you could take him one as a sort of gift?")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "No problem.", "dlg_2_4")
	StartConversation(conversation, NPC, Spawn, "You don't have to bake it yourself, of course.  Just pick one up on your way to see Deputy Kegie.  He's in the wagon alongside the Drain, this side of the wall.")
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I suppose I can help.", "dlg_4_2")
		AddConversationOption(conversation, "I haven't got time to help.")
	StartConversation(conversation, NPC, Spawn, "Don't I wish! I've been trying to get a museum built to honor our fallen and tell folks the history of our beloved old Misty Thicket and Rivervale!  Say...you don't have time to help ME out instead, do you?")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll see what I can do.", "dlg_4_3")
	StartConversation(conversation, NPC, Spawn, "Terrific!  You see, I'm trying to gather up some of the artifacts from the old days.  The wagon I'd been storing the items in was smashed to bits and those mischievous fairies and sirens conspired to get all my artifacts!  I've been able to get most of them, but there's still a few missing.  Could you look around and get them back for me?")
end

function dlg_5_0(NPC, Spawn)
	SetStepComplete(Spawn, WatchYourStepInTheTSPartIV, 1)
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Greetings, stranger!", "", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1023.mp3", "", "", 0, 0, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1023.mp3", "", "", 0, 0, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1023.mp3", "", "", 0, 0, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1005.mp3", "", "", 0, 0, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1005.mp3", "", "", 0, 0, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1005.mp3", "", "", 0, 0, Spawn)
--]]

