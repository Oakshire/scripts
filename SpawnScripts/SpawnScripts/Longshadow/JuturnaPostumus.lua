--[[
	Script Name	: SpawnScripts/Longshadow/JuturnaPostumus.lua
	Script Purpose	: Juturna Postumus 
	Script Author	: John Adams
	Script Date	: 2009.04.11
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1003.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Nothing.  Just saying hello.", "dlg_0_1")
	AddConversationOption(conversation, "Nothing.  Good bye.")
	StartConversation(conversation, NPC, Spawn, "What do you want from me?")
	if convo==2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1003.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Nothing.  Just saying hello.", "dlg_2_1")
		AddConversationOption(conversation, "Nothing.  Good bye.")
		StartConversation(conversation, NPC, Spawn, "What do you want from me?")
	end

	if convo==3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1003.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Nothing.  Just saying hello.", "dlg_3_1")
		AddConversationOption(conversation, "Nothing.  Good bye.")
		StartConversation(conversation, NPC, Spawn, "What do you want from me?")
	end

end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What happened to your son?", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Forgive me...that was rather rude of me!  You caught me remembering the past...thinking about my son, may the gods preserve his memory.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Where would you have gone?", "dlg_0_3")
	AddConversationOption(conversation, "I'm not interested in your story anyway.")
	StartConversation(conversation, NPC, Spawn, "I don't want to burden you with the details.  He's...been dead now for many years.  Even now, though, I remember his smile and laugh.  If only I'd listened to my heart and left when I had the chance.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Why didn't you join them, then?", "dlg_0_4")
	StartConversation(conversation, NPC, Spawn, "I have relatives...elsewhere.  They're warm, friendly and caring people.  Their minds and hearts are open.  Their lives are rich and full of beauty.  I'm not speaking of wealth, but of another sort of richness.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'm sorry to hear that.", "dlg_0_5")
	AddConversationOption(conversation, "It's been a long time since then, you said.  Get over it.")
	StartConversation(conversation, NPC, Spawn, "My husband would not leave Freeport then.  When he finally did leave, it was to take our son and...and... Well...my husband got what he deserved in the end, but not my son.  He deserved a much better end.")
end

function dlg_0_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "A client?", "dlg_0_6")
	StartConversation(conversation, NPC, Spawn, "You seem like an open-minded person.  We squires can sense that about others.  I...can tell you more about this, if you would become a client of mine.")
end

function dlg_0_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You have relatives elsewhere. Why don't you stay with them now?", "dlg_0_7")
	StartConversation(conversation, NPC, Spawn, "There are a handful of squires in Freeport who assist their clients in learning more about other places, where our lives would not be filled with the stress that living here in Freeport can bring.")
end

function dlg_0_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I can get the coin, but it will take a bit of time.", "dlg_0_8")
	AddConversationOption(conversation, "If I gave you the coin, it would be a gift and not a loan.")
	AddConversationOption(conversation, "I've heard this story a thousand times.  You'll not get anything from me!")
	AddConversationOption(conversation, "Nice try.  Hah! Good riddance.")
	StartConversation(conversation, NPC, Spawn, "Widowed as young as I was, I've been unable to save anything.  I barely scrape by as it is.  If...if you could lend me five hundred gold, I could go to my relatives.  I'd pay you back...I would!")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What happened to your son?", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "Forgive me...that was rather rude of me!  You caught me remembering the past...thinking about my son, may the gods preserve his memory.")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Where would you have gone?", "dlg_2_3")
	AddConversationOption(conversation, "I'm not interested in your story anyway.")
	StartConversation(conversation, NPC, Spawn, "I don't want to burden you with the details.  He's...been dead now for many years.  Even now, though, I remember his smile and laugh.  If only I'd listened to my heart and left when I had the chance.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Why didn't you join them, then?", "dlg_2_4")
	StartConversation(conversation, NPC, Spawn, "I have relatives...elsewhere.  They're warm, friendly and caring people.  Their minds and hearts are open.  Their lives are rich and full of beauty.  I'm not speaking of wealth, but of another sort of richness.")
end

function dlg_2_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'm sorry to hear that.", "dlg_2_5")
	AddConversationOption(conversation, "It's been a long time since then, you said.  Get over it.")
	StartConversation(conversation, NPC, Spawn, "My husband would not leave Freeport then.  When he finally did leave, it was to take our son and...and... Well...my husband got what he deserved in the end, but not my son.  He deserved a much better end.")
end

function dlg_2_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "A client?", "dlg_2_6")
	StartConversation(conversation, NPC, Spawn, "You seem like an open-minded person.  We squires can sense that about others.  I...can tell you more about this, if you would become a client of mine.")
end

function dlg_2_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You have relatives elsewhere. Why don't you stay with them now?", "dlg_2_7")
	StartConversation(conversation, NPC, Spawn, "There are a handful of squires in Freeport who assist their clients in learning more about other places, where our lives would not be filled with the stress that living here in Freeport can bring.")
end

function dlg_2_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I can get the coin, but it will take a bit of time.", "dlg_2_8")
	AddConversationOption(conversation, "If I gave you the coin, it would be a gift and not a loan.")
	AddConversationOption(conversation, "I've heard this story a thousand times.  You'll not get anything from me!")
	AddConversationOption(conversation, "Nice try.  Hah! Good riddance.")
	StartConversation(conversation, NPC, Spawn, "Widowed as young as I was, I've been unable to save anything.  I barely scrape by as it is.  If...if you could lend me five hundred gold, I could go to my relatives.  I'd pay you back...I would!")
end

function dlg_2_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me more.")
	StartConversation(conversation, NPC, Spawn, "I was right: your heart and mind are open.  There is no need to give me anything.  I have much that I can give you, though.  There is a way to .. GetName(Spawn) .. . and security.  Are you interested in learning about it?")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What happened to your son?", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "Forgive me...that was rather rude of me!  You caught me remembering the past...thinking about my son, may the gods preserve his memory.")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Where would you have gone?", "dlg_3_3")
	AddConversationOption(conversation, "I'm not interested in your story anyway.")
	StartConversation(conversation, NPC, Spawn, "I don't want to burden you with the details.  He's...been dead now for many years.  Even now, though, I remember his smile and laugh.  If only I'd listened to my heart and left when I had the chance.")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Why didn't you join them, then?", "dlg_3_4")
	StartConversation(conversation, NPC, Spawn, "I have relatives...elsewhere.  They're warm, friendly and caring people.  Their minds and hearts are open.  Their lives are rich and full of beauty.  I'm not speaking of wealth, but of another sort of richness.")
end

function dlg_3_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'm sorry to hear that.", "dlg_3_5")
	AddConversationOption(conversation, "It's been a long time since then, you said.  Get over it.")
	StartConversation(conversation, NPC, Spawn, "My husband would not leave Freeport then.  When he finally did leave, it was to take our son and...and... Well...my husband got what he deserved in the end, but not my son.  He deserved a much better end.")
end

function dlg_3_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "A client?", "dlg_3_6")
	StartConversation(conversation, NPC, Spawn, "You seem like an open-minded person.  We squires can sense that about others.  I...can tell you more about this, if you would become a client of mine.")
end

function dlg_3_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You have relatives elsewhere. Why don't you stay with them now?", "dlg_3_7")
	StartConversation(conversation, NPC, Spawn, "There are a handful of squires in Freeport who assist their clients in learning more about other places, where our lives would not be filled with the stress that living here in Freeport can bring.")
end

function dlg_3_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I can get the coin, but it will take a bit of time.", "dlg_3_8")
	AddConversationOption(conversation, "If I gave you the coin, it would be a gift and not a loan.")
	AddConversationOption(conversation, "I've heard this story a thousand times.  You'll not get anything from me!")
	AddConversationOption(conversation, "Nice try.  Hah! Good riddance.")
	StartConversation(conversation, NPC, Spawn, "Widowed as young as I was, I've been unable to save anything.  I barely scrape by as it is.  If...if you could lend me five hundred gold, I could go to my relatives.  I'd pay you back...I would!")
end

function dlg_3_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me more.", "dlg_3_9")
	StartConversation(conversation, NPC, Spawn, "I was right: your heart and mind are open.  There is no need to give me anything.  I have much that I can give you, though.  There is a way to .. GetName(Spawn) .. . and security.  Are you interested in learning about it?")
end

function dlg_3_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I can handle it.", "dlg_3_10")
	StartConversation(conversation, NPC, Spawn, "A stockpile of weapons and armor is hidden somewhere in Freeport.  We must locate it before it's distributed where it will do harm.  A gnomish squire invented a clever device -- a listenomitron -- that allows someone to hear things from quite a distance away.  The listenomitrons only work at night, so someone whose bones do not creak as mine do is the best person for the task.")
end

function dlg_3_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll take care of this, don't worry.", "dlg_3_11")
	StartConversation(conversation, NPC, Spawn, "You are most kind.  Once you've placed the listenomitrons, please visit the squire in the pub room at the Blood Haze Inn in West Freeport.  You'll receive further directions then.  The blessings of the gods go with you.")
end