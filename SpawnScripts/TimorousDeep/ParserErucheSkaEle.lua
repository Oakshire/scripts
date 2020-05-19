--[[
	Script Name	: SpawnScripts/TimorousDeep/ParserErucheSkaEle.lua
	Script Purpose	: Parser Eruche Ska'Ele 
	Script Author	: John Adams
	Script Date	: 2009.03.04
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

	PlayFlavor(NPC, "voiceover/english/rok_questvo/gerwen_di_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/eruche/eruche000.mp3", "", "", 1885864315, 3432703797, Spawn)
	AddConversationOption(conversation, "Yes, I know your record.", "dlg_18_1")
	AddConversationOption(conversation, "No, what is a Parser?", "dlg_18_1")
	StartConversation(conversation, NPC, Spawn, "Greetings, I am Parser Eruche Ska'Ele. You know of Parsers, don't you?")
end

function dlg_18_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/gerwen_di_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/eruche/eruche002.mp3", "", "", 299791481, 3682320069, Spawn)
	AddConversationOption(conversation, "No, I don't know much at all.", "dlg_18_2")
	AddConversationOption(conversation, "Yes, I've heard this all before.", "dlg_18_2")
	StartConversation(conversation, NPC, Spawn, "I am a recorder for our people. I study history and statistics, record artifacts and theorize about what it all means. We find it necessary to understand where we came from to decide where we should go next. Do you know much of our history?")
end

function dlg_18_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/gerwen_di_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/eruche/eruche003.mp3", "", "", 1639865423, 3899134706, Spawn)
	AddConversationOption(conversation, "Why is so little known? ", "dlg_18_3")
	StartConversation(conversation, NPC, Spawn, "Neither do we! Ha ha ha! It makes being a historian a bit difficult but also very exciting. We are always uncovering new pieces that tell us something else about who we are...")
end

function dlg_18_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/gerwen_di_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/eruche/eruche005.mp3", "", "", 3017598578, 1088608550, Spawn)
	AddConversationOption(conversation, "Will these 'creators' be worshipped if they are found? ", "dlg_18_4")
	StartConversation(conversation, NPC, Spawn, "Well, we are an orphan race. We do not know who created us, though we know it was by no hands of the gods. We were made by some race of Norrath... The spirocs tried to enslave us, but they are not our true creators. No...")
end

function dlg_18_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/gerwen_di_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/eruche/eruche006.mp3", "", "", 784688886, 2990650013, Spawn)
	AddConversationOption(conversation, "Greater? ", "dlg_18_5")
	StartConversation(conversation, NPC, Spawn, "Worshipped? We are not certain, but probably not. We know they were no better than the spiroc, and that they sought to enslave us. Fortunately for us, they could not anticipate that we would be greater than they were...")
end

function dlg_18_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/gerwen_di_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/eruche/eruche007.mp3", "", "", 2845943562, 2726482140, Spawn)
	AddConversationOption(conversation, "What does it mean to be made on Norrath? ", "dlg_18_6")
	StartConversation(conversation, NPC, Spawn, "We defeated them once! With Gorowyn's aid we struck down our oppressive creators! He, as well as many other of our people, gave their lives for us. Then we were born again, even stronger, and overcame the spiroc...")
end

function dlg_18_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/gerwen_di_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/eruche/eruche008.mp3", "", "", 3469122624, 1675886861, Spawn)
	AddConversationOption(conversation, "Were you among the first? ", "dlg_18_7")
	StartConversation(conversation, NPC, Spawn, "We have some... limitations. At the site of our birth, we found anchoring tanks. These tanks teach us, and we are dependent on them. Our children must be placed in them at birth, or they will die. We also know much about our make up, because our creators left extensive charts. I doubt many races of Norrath know exactly how they breathe.")
end

function dlg_18_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/gerwen_di_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/eruche/eruche009.mp3", "", "", 1335719833, 3343996213, Spawn)
	AddConversationOption(conversation, "So much can be accomplished in a single sarnak's life.", "dlg_18_8")
	StartConversation(conversation, NPC, Spawn, "Yes, I was among those who rose up and defeated the spiroc. We are so young a race, yet we know we are destined to live longer than any other race on Norrath. I can expect to live for hundreds of years, though I have barely made half a century so far.")
end

function dlg_18_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/gerwen_di_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/eruche/eruche010.mp3", "", "", 4163559803, 3162665619, Spawn)
	AddConversationOption(conversation, "Fair enough.")
	StartConversation(conversation, NPC, Spawn, "Yes. We will do much. It is our birthright. ")
end