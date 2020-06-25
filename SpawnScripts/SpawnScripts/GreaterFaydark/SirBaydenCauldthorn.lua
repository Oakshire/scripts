--[[
	Script Name	: SpawnScripts/GreaterFaydark/SirBaydenCauldthorn.lua
	Script Purpose	: Sir Bayden Cauldthorn <Lordknight of Valor>
	Script Author	: John Adams
	Script Date	: 2009.03.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
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
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Who are you?", "dlg_35_1")
	AddConversationOption(conversation, "Whose return are you talking about?")
	AddConversationOption(conversation, "I wish to gain favor with Mithaniel Marr.  What can I do?")
	StartConversation(conversation, NPC, Spawn, "Greetings, adventurer.  Remember to always hold to your courage and share it with your comrades. It will quicken His return.")
end

function dlg_35_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You sound pretty enthusiastic.")
	StartConversation(conversation, NPC, Spawn, "He is the Defender of the Light, the Lightbringer, the God of Valor, Mithaniel Marr.  It is through him that the courageous warriors of good will fight back the evils that threaten us in these shattered times.")
end

function dlg_35_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You were sent to Qeynos?", "dlg_35_3")
	AddConversationOption(conversation, "What is the Order of Marr?")
	StartConversation(conversation, NPC, Spawn, "You'll have to excuse me if I do.  I've been told I can be overzealous when speaking about my god, and on the battlefield.  I believe that is why those few years ago I was sent by the elders of the Order of Marr to serve our Queen.")
end

function dlg_35_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "So what about your title?")
	AddConversationOption(conversation, "Thank you for speaking with me.  Goodbye.", "dlg_35_4")
	StartConversation(conversation, NPC, Spawn, "The Order of Marr works to preserve the ideals of the Marr twins, Valor and Love.  We await the return of the Truthbringer and strive to hasten his coming by recovering important artifacts and knowledge that are sacred to the faithful of Mithaniel Marr.  Through these means are we able to properly worship our lord.  ")
end

function dlg_35_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "That's impressive.", "dlg_35_5")
	AddConversationOption(conversation, "Good luck with that.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "It was very recently that the elders of my order approached me with this calling.  They explained to me that they all independently came to the conclusion that Lord Marr has chosen me as his voice at this time, I guess his prophet so to speak.  ")
end

function dlg_35_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "It sounds like you were chosen for a reason.", "dlg_35_6")
	AddConversationOption(conversation, "I think you are right.")
	StartConversation(conversation, NPC, Spawn, "I guess, but I'm not all too comfortable with it.  I think I had the same impressions that the elders did, but I dismissed the thoughts.  I still believe my place is out in the field, fighting back the evil that threatens all the shattered lands.  Wouldn't a priest be more appropriate for this kind of thing?")
end

function dlg_35_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Can you tell me more of the Truthbringer?", "dlg_35_7")
	AddConversationOption(conversation, "Goodbye.")
	StartConversation(conversation, NPC, Spawn, "You could be right.  I wouldn't begin to claim I understand the grand scheme of the Truthbringer.  I guess we shall have to let time tell us if the choice was right.")
end

function dlg_35_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You sound pretty enthusiastic.", "dlg_35_8")
	StartConversation(conversation, NPC, Spawn, "He is the Defender of the Light, the Lightbringer, the God of Valor, Mithaniel Marr.  It is through him that the courageous warriors of good will fight back the evils that threaten us in these shattered times.")
end

function dlg_35_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You were sent to Qeynos?", "dlg_35_9")
	AddConversationOption(conversation, "What is the Order of Marr?")
	StartConversation(conversation, NPC, Spawn, "You'll have to excuse me if I do.  I've been told I can be overzealous when speaking about my god, and on the battlefield.  I believe that is why those few years ago I was sent by the elders of the Order of Marr to serve our Queen.")
end

function dlg_35_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "sir_bayden_cauldthorn/liveevents/exp03/marr_bayden010.mp3", "", "", 1989160172, 3091398690, Spawn)
	AddConversationOption(conversation, "So you are oathbound to Qeynos?", "dlg_35_10")
	AddConversationOption(conversation, "I see.  Well, I have to go.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Yes.  Queen Antonia requested the help of the Order of Marr to assist in the efforts to establish Qeynos as a safe haven for all people.  The elders determined I was better suited to defending Qeynos than the more subtle work that was being carried on in the Overlord's backyard.  I think they were afraid I was going to take on the entire Freeport Militia myself one day.  Hahaha. ")
end

function dlg_35_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_35_11")
	AddConversationOption(conversation, "I have to go now, Goodbye.")
	StartConversation(conversation, NPC, Spawn, "I swore before Queen Antonia and her most trusted confidant, Murrar Shar, that I would serve her and protect her people with all of the Valor in Lord Marr's Halls of Honor.  However, a matter of greater importance is upon us this day.")
end

function dlg_35_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "That's impressive.", "dlg_35_12")
	AddConversationOption(conversation, "Good luck with that.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "It was very recently that the elders of my order approached me with this calling.  They explained to me that they all independently came to the conclusion that Lord Marr has chosen me as his voice at this time, I guess his prophet so to speak.  ")
end

function dlg_35_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "It sounds like you were chosen for a reason.", "dlg_35_13")
	AddConversationOption(conversation, "I think you are right.")
	StartConversation(conversation, NPC, Spawn, "I guess, but I'm not all too comfortable with it.  I think I had the same impressions that the elders did, but I dismissed the thoughts.  I still believe my place is out in the field, fighting back the evil that threatens all the shattered lands.  Wouldn't a priest be more appropriate for this kind of thing?")
end

function dlg_35_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Can you tell me more of the Truthbringer?", "dlg_35_14")
	AddConversationOption(conversation, "Goodbye.")
	StartConversation(conversation, NPC, Spawn, "You could be right.  I wouldn't begin to claim I understand the grand scheme of the Truthbringer.  I guess we shall have to let time tell us if the choice was right.")
end

