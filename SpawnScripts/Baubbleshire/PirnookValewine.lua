--[[
	Script Name	: SpawnScripts/Baubbleshire/PirnookValewine.lua
	Script Purpose	: Pirnook Valewine 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/pirnook_valewine/qey_village06/lore_pirnook_000.mp3", "", "", 1161953593, 3861334059, Spawn)
	AddConversationOption(conversation, "Why the long face?", "dlg_45_1")
	AddConversationOption(conversation, "Just as we all have.")
	StartConversation(conversation, NPC, Spawn, "Oh! Excuse me for not recognizing your face.  I've only just arrived.  You know, this place is nice enough, but it still doesn't compare to the Vale ... Aaah, I guess I'll just have to make the best of it.")
end

function dlg_45_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/pirnook_valewine/qey_village06/lore_pirnook_001.mp3", "", "", 469707323, 1438321644, Spawn)
	AddConversationOption(conversation, "Well, it sounds like you need to talk about something.", "dlg_45_2")
	AddConversationOption(conversation, "So much is lost to us all, but you're among friends now.")
	StartConversation(conversation, NPC, Spawn, "Oh, I just miss the Vale terribly, and I know that I'll never see it again. It'll never be as it was before, well, before I came here, anyway.")
end

function dlg_45_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/pirnook_valewine/qey_village06/lore_pirnook_002.mp3", "", "", 2224643347, 542143669, Spawn)
	AddConversationOption(conversation, "What have you seen?  It's ok, talking will make you feel better.", "dlg_47_3")
	AddConversationOption(conversation, "Okay, when you're ready, you'll tell your tale.")
	StartConversation(conversation, NPC, Spawn, "You're ... you're right, I do, but I'm hesitant. I think that if I talk about it ... if someone else knows what I've seen, then ... then it'll be real.  I don't want it to be real.")
end

function dlg_47_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/pirnook_valewine/qey_village06/lore_pirnook_003.mp3", "", "", 731206016, 291679412, Spawn)
	AddConversationOption(conversation, "A lot of things have changed since the Cataclysms.  Nothing's the same anymore. ", "dlg_47_4")
	StartConversation(conversation, NPC, Spawn, "Well ... I ... I can't, I just can't describe the things I've seen. I can tell you what I feel, and what I think, I suppose.  Yes, it's better this way.  The world should know that the Vale ... well, it just might not be there anymore, at least not in the way we know it.")
end

function dlg_47_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/pirnook_valewine/qey_village06/lore_pirnook_004.mp3", "", "", 493600233, 1483940215, Spawn)
	AddConversationOption(conversation, "Something recently happened in Rivervale?", "dlg_47_5")
	StartConversation(conversation, NPC, Spawn, "Oh, I know. But you see, Rivervale and the Misty Thicket were special; they weren't harmed in the Cataclysms!  Somehow our lands survived unscathed!  It was a paradise when the rest of the world was broken and shattered.")
end

function dlg_47_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/pirnook_valewine/qey_village06/lore_pirnook_005.mp3", "", "", 2664299681, 2936484351, Spawn)
	AddConversationOption(conversation, "This sounds really serious.  You shouldn't hide this from the world.", "dlg_48_6")
	AddConversationOption(conversation, "Alright.  You will talk when you're ready.")
	StartConversation(conversation, NPC, Spawn, "Yes. It did.  Something is happening in the vale at this very moment!  It's ... it's terrible!  I just ... I just don't want to think about it!  I can't!  I'm really very sorry, but I just can't.  Not yet.  I need time, just a little time for the nightmares to go away...")
end

function dlg_48_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/pirnook_valewine/qey_village06/lore_pirnook_006.mp3", "", "", 1731561500, 3691799364, Spawn)
	AddConversationOption(conversation, "Calm down!  What's happened?!  What have you seen?", "dlg_48_7")
	StartConversation(conversation, NPC, Spawn, "I know, I know, but you haven't seen what I've seen!  You haven't heard the screams in the night!  Oh, those ghastly, horrific screams of pain and ... and merriment!  Cries of merriment in the slaughter!  It's ... it's happening now!  Right now!  They're suffering and I can't help them!  No one can help them!")
end

function dlg_48_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/pirnook_valewine/qey_village06/lore_pirnook_007.mp3", "", "", 3860679298, 1354308742, Spawn)
	AddConversationOption(conversation, "Who brings death and suffering?!", "dlg_48_8")
	StartConversation(conversation, NPC, Spawn, "Death and suffering!  All of them dead and suffering!  They ... they bring it!  They revel in it!  It's like wine and song to them!  They're beyond evil, and they won't stop until they reave every last bit of life from the land!")
end

function dlg_48_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/pirnook_valewine/qey_village06/lore_pirnook_008.mp3", "", "", 3545121720, 1853628282, Spawn)
	AddConversationOption(conversation, "Pirnook?  Pirnook?", "dlg_48_9")
	StartConversation(conversation, NPC, Spawn, "Terrible, horrible things in the night.  They shriek and howl, and then they sing softly and tenderly and sooth the nightmares away.  They're here for all of us; they won't stop until they've drained all life away.  Oh no, Launa!  My sweet Launa!  She's still there!  I abandoned her!  I had to, my sweet Launa, I had to ...  you were lost to them, but I couldn't do it!  I just couldn't do it!  Oh, please forgive me...")
end