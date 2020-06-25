--[[
	Script Name	: SpawnScripts/GreaterFaydark/PhilosopherYubee.lua
	Script Purpose	: Philosopher Yubee <Deity Historian>
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

		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "It's so wonderful! I just want to go out and start basking in their glory right away!", "dlg_28_1")
	AddConversationOption(conversation, "Feh. Gods, who needs em? Always a pain in yer neck! I'd sooner stick a knife in their gut than worship those churlish manifestations.")
	AddConversationOption(conversation, "I'm really not interested at all.")
	StartConversation(conversation, NPC, Spawn, "Hello there! I'm sure you've heard all the hubbub about the deities coming back to us! Some people think it's grand, others not so much.")
	if convo==29 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "It's so wonderful! I just want to go out and start basking in their glory right away!", "dlg_29_1")
		AddConversationOption(conversation, "Feh. Gods, who needs em? Always a pain in yer neck! I'd sooner stick a knife in their gut than worship those churlish manifestations.")
		AddConversationOption(conversation, "I'm really not interested at all.")
		StartConversation(conversation, NPC, Spawn, "Hello there! I'm sure you've heard all the hubbub about the deities coming back to us! Some people think it's grand, others not so much.")
	end

	if convo==30 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "It's so wonderful! I just want to go out and start basking in their glory right away!", "dlg_30_1")
		AddConversationOption(conversation, "Feh. Gods, who needs em? Always a pain in yer neck! I'd sooner stick a knife in their gut than worship those churlish manifestations.")
		AddConversationOption(conversation, "I'm really not interested at all.")
		StartConversation(conversation, NPC, Spawn, "Hello there! I'm sure you've heard all the hubbub about the deities coming back to us! Some people think it's grand, others not so much.")
	end

	if convo==31 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "It's so wonderful! I just want to go out and start basking in their glory right away!", "dlg_31_1")
		AddConversationOption(conversation, "Feh. Gods, who needs em? Always a pain in yer neck! I'd sooner stick a knife in their gut than worship those churlish manifestations.")
		AddConversationOption(conversation, "I'm really not interested at all.")
		StartConversation(conversation, NPC, Spawn, "Hello there! I'm sure you've heard all the hubbub about the deities coming back to us! Some people think it's grand, others not so much.")
	end

	if convo==32 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "It's so wonderful! I just want to go out and start basking in their glory right away!", "dlg_32_1")
		AddConversationOption(conversation, "Feh. Gods, who needs em? Always a pain in yer neck! I'd sooner stick a knife in their gut than worship those churlish manifestations.")
		AddConversationOption(conversation, "I'm really not interested at all.")
		StartConversation(conversation, NPC, Spawn, "Hello there! I'm sure you've heard all the hubbub about the deities coming back to us! Some people think it's grand, others not so much.")
	end

end

function dlg_28_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian001.mp3", "", "", 1885768155, 4071330533, Spawn)
	AddConversationOption(conversation, "You will tell me where to find the prophet of Cazic-Thule. Now!")
	AddConversationOption(conversation, "I want to find out more about Innoruuk.", "dlg_28_2")
	AddConversationOption(conversation, "Tell me where I can find the prophet of Rallos Zek.")
	AddConversationOption(conversation, "I've always been interested in Solusek Ro.")
	AddConversationOption(conversation, "I'm born of the earth, now tell me about Brell Serilis!")
	AddConversationOption(conversation, "Where might I find Quellious' prophet?")
	AddConversationOption(conversation, "Tunare, I think I would enjoy knowing where to speak with her prophet.")
	AddConversationOption(conversation, "Please tell me where I may find the prophet of Mithaniel Marr.")
	AddConversationOption(conversation, "I hear the the prophet of Bristlebane is looking for a devoted prankster. Where might I find him?")
	AddConversationOption(conversation, "Please tell me where I may find the prophet of The Tribunal.")
	AddConversationOption(conversation, "Where might I find Karana's prophet?")
	AddConversationOption(conversation, "I've always been interested in the ways of Bertoxxulous. Where is his prophet?")
	StartConversation(conversation, NPC, Spawn, "Well, you may wish to learn of their prophet's locations. Perhaps one of them will interest you with his tales.")
end

function dlg_29_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?", "dlg_29_2")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_29_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You will tell me where to find the prophet of Cazic-Thule. Now!")
	AddConversationOption(conversation, "Tell me where I can find the prophet of Rallos Zek.")
	AddConversationOption(conversation, "I want to find out more about Innoruuk.", "dlg_29_3")
	AddConversationOption(conversation, "I wish to learn more about Bertoxxulous, the Plaguebringer.")
	AddConversationOption(conversation, "I am interested in learning more about the Forgotten One, Anashti Sul.")
	AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?")
	AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end

function dlg_29_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_29_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'm born of the earth, now tell me about Brell Serilis!")
	AddConversationOption(conversation, "I hear the prophet of Bristlebane is looking for a devoted prankster. Where might I find him?", "dlg_29_5")
	AddConversationOption(conversation, "I've always been interested in Solusek Ro.")
	AddConversationOption(conversation, "I want to work with the law. Where is the Tribunal's prophet?")
	AddConversationOption(conversation, "I serve the father of storms. Where can I find the prophet of Karana?")
	AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?")
	AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end

function dlg_29_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_29_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Please tell me where I may find the prophet of Mithaniel Marr.", "dlg_29_7")
	AddConversationOption(conversation, "Tunare...tell me where to speak with her prophet.")
	AddConversationOption(conversation, "Where might I find Quellious' prophet?")
	AddConversationOption(conversation, "I am searching for the prophet of the Prime Healer, Rodcet Nife.")
	AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?")
	AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end

function dlg_29_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian009.mp3", "", "", 3714246172, 3594253878, Spawn)
	AddConversationOption(conversation, "Very good, I will be on my way then.", "dlg_29_8")
	AddConversationOption(conversation, "On second thought...")
	StartConversation(conversation, NPC, Spawn, "Sir Bayden Cauldthorn may be found in Old Kelethin, not far from the research library. He seeks all brave and valorous enough to follow Mithaniel Marr!")
end

function dlg_29_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?", "dlg_29_9")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_29_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Please tell me where I may find the prophet of Mithaniel Marr.", "dlg_29_10")
	AddConversationOption(conversation, "Tunare...tell me where to speak with her prophet.")
	AddConversationOption(conversation, "Where might I find Quellious' prophet?")
	AddConversationOption(conversation, "I am searching for the prophet of the Prime Healer, Rodcet Nife.")
	AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?")
	AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end

function dlg_29_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian007.mp3", "", "", 1991516548, 1632985185, Spawn)
	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...", "dlg_29_11")
	StartConversation(conversation, NPC, Spawn, "Tunare's prophet, Eva Corunno'thes has taken up residence within Old Kelethin. If you wish to learn more about the Earthmother, I am certain she would be willing to share her faith with you.")
end

function dlg_30_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?", "dlg_30_2")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_30_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Please tell me where I may find the prophet of Mithaniel Marr.", "dlg_30_3")
	AddConversationOption(conversation, "Tunare...tell me where to speak with her prophet.")
	AddConversationOption(conversation, "Where might I find Quellious' prophet?")
	AddConversationOption(conversation, "I am searching for the prophet of the Prime Healer, Rodcet Nife.")
	AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?")
	AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end

function dlg_30_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian007.mp3", "", "", 1991516548, 1632985185, Spawn)
	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...", "dlg_30_4")
	StartConversation(conversation, NPC, Spawn, "Tunare's prophet, Eva Corunno'thes has taken up residence within Old Kelethin. If you wish to learn more about the Earthmother, I am certain she would be willing to share her faith with you.")
end

function dlg_30_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?", "dlg_30_5")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_30_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Please tell me where I may find the prophet of Mithaniel Marr.", "dlg_30_6")
	AddConversationOption(conversation, "Tunare...tell me where to speak with her prophet.")
	AddConversationOption(conversation, "Where might I find Quellious' prophet?")
	AddConversationOption(conversation, "I am searching for the prophet of the Prime Healer, Rodcet Nife.")
	AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?")
	AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end

function dlg_30_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian008.mp3", "", "", 3677729012, 3031035319, Spawn)
	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...")
	StartConversation(conversation, NPC, Spawn, "Sensei Shoda has delegated responsibility to an erudite named Merrek. You can find him at the top of the cliffs in Butcherblock overlooking the ocean.")
end

function dlg_30_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?", "dlg_30_8")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_30_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Please tell me where I may find the prophet of Mithaniel Marr.", "dlg_30_9")
	AddConversationOption(conversation, "Tunare...tell me where to speak with her prophet.")
	AddConversationOption(conversation, "Where might I find Quellious' prophet?")
	AddConversationOption(conversation, "I am searching for the prophet of the Prime Healer, Rodcet Nife.")
	AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?")
	AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end

function dlg_30_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you for your guidance.  Farewell to you.")
	AddConversationOption(conversation, "On second thought...")
	StartConversation(conversation, NPC, Spawn, "Following in the footsteps of Seeress Ealaynya Ithis, the Prophet Bainyn Fairwind has been preaching the word of the Prime Healer from within the Temple of Life in North Qeynos.  If you wish to learn more about Rodcet Nife, then seek out Bainyn within the sacred temple.")
end

function dlg_30_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?", "dlg_30_11")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_30_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Please tell me where I may find the prophet of Mithaniel Marr.", "dlg_30_12")
	AddConversationOption(conversation, "Tunare...tell me where to speak with her prophet.")
	AddConversationOption(conversation, "Where might I find Quellious' prophet?")
	AddConversationOption(conversation, "I am searching for the prophet of the Prime Healer, Rodcet Nife.")
	AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?")
	AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end

function dlg_30_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_30_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'm born of the earth, now tell me about Brell Serilis!")
	AddConversationOption(conversation, "I hear the prophet of Bristlebane is looking for a devoted prankster. Where might I find him?", "dlg_30_14")
	AddConversationOption(conversation, "I've always been interested in Solusek Ro.")
	AddConversationOption(conversation, "I want to work with the law. Where is the Tribunal's prophet?")
	AddConversationOption(conversation, "I serve the father of storms. Where can I find the prophet of Karana?")
	AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?")
	AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end

function dlg_30_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian006.mp3", "", "", 491255471, 488102680, Spawn)
	AddConversationOption(conversation, "Very good, I will be on my way then.", "dlg_30_15")
	AddConversationOption(conversation, "On second thought...")
	StartConversation(conversation, NPC, Spawn, "Bronlor Stormhammer has gone to West Fort Irontoe here in the Butcherblock Mountains. You will need to seek him out if it is Brell Serilis you are interested in learning about.")
end

function dlg_30_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?", "dlg_30_16")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_30_16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'm born of the earth, now tell me about Brell Serilis!")
	AddConversationOption(conversation, "I hear the prophet of Bristlebane is looking for a devoted prankster. Where might I find him?", "dlg_30_17")
	AddConversationOption(conversation, "I've always been interested in Solusek Ro.")
	AddConversationOption(conversation, "I want to work with the law. Where is the Tribunal's prophet?")
	AddConversationOption(conversation, "I serve the father of storms. Where can I find the prophet of Karana?")
	AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?")
	AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end

function dlg_30_17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian012.mp3", "", "", 63830979, 2698789391, Spawn)
	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...", "dlg_30_18")
	StartConversation(conversation, NPC, Spawn, "I believe Tobel Patadash is the one you should seek out. He's currently residing on the docks of the Enchanted Lands, near the Lost Village of Bobick.")
end

function dlg_30_18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?", "dlg_30_19")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_30_19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'm born of the earth, now tell me about Brell Serilis!")
	AddConversationOption(conversation, "I hear the prophet of Bristlebane is looking for a devoted prankster. Where might I find him?", "dlg_30_20")
	AddConversationOption(conversation, "I've always been interested in Solusek Ro.")
	AddConversationOption(conversation, "I want to work with the law. Where is the Tribunal's prophet?")
	AddConversationOption(conversation, "I serve the father of storms. Where can I find the prophet of Karana?")
	AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?")
	AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end

function dlg_30_20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...")
	StartConversation(conversation, NPC, Spawn, "Justinian Theo is near the settlement of Chrykori Village in Timorous Deep. His eyes scan the horizon, searching for those who seek justice and balance in Norrath. If that is what you seek, then speak with him.")
end

function dlg_30_21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?", "dlg_30_22")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_30_22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'm born of the earth, now tell me about Brell Serilis!")
	AddConversationOption(conversation, "I hear the prophet of Bristlebane is looking for a devoted prankster. Where might I find him?", "dlg_30_23")
	AddConversationOption(conversation, "I've always been interested in Solusek Ro.")
	AddConversationOption(conversation, "I want to work with the law. Where is the Tribunal's prophet?")
	AddConversationOption(conversation, "I serve the father of storms. Where can I find the prophet of Karana?")
	AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?")
	AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end

function dlg_30_23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Then I will go to him swiftly.")
	AddConversationOption(conversation, "On second thought...")
	StartConversation(conversation, NPC, Spawn, "Askr can be found near the city of Gorowyn in Timorous Deep -- on the Green Outlook. He can tell you how to return the father of storms to the skies of Norrath.")
end

function dlg_30_24(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?", "dlg_30_25")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_30_25(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'm born of the earth, now tell me about Brell Serilis!")
	AddConversationOption(conversation, "I hear the prophet of Bristlebane is looking for a devoted prankster. Where might I find him?", "dlg_30_26")
	AddConversationOption(conversation, "I've always been interested in Solusek Ro.")
	AddConversationOption(conversation, "I want to work with the law. Where is the Tribunal's prophet?")
	AddConversationOption(conversation, "I serve the father of storms. Where can I find the prophet of Karana?")
	AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?")
	AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end

function dlg_30_26(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_30_27(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You will tell me where to find the prophet of Cazic-Thule. Now!")
	AddConversationOption(conversation, "Tell me where I can find the prophet of Rallos Zek.")
	AddConversationOption(conversation, "I want to find out more about Innoruuk.", "dlg_30_28")
	AddConversationOption(conversation, "I wish to learn more about Bertoxxulous, the Plaguebringer.")
	AddConversationOption(conversation, "I am interested in learning more about the Forgotten One, Anashti Sul.")
	AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?")
	AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end

function dlg_30_28(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian002.mp3", "", "", 1717778678, 2232573733, Spawn)
	AddConversationOption(conversation, "Very good, I will be on my way then.", "dlg_30_29")
	AddConversationOption(conversation, "On second thought...")
	StartConversation(conversation, NPC, Spawn, "The Prophet of Fear, Danak Dhorentath, has gone to Dagnor's Pass here in Butcherblock. If you wish to learn more about Cazic-Thule, I would seek him out there.")
end

function dlg_30_29(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?", "dlg_30_30")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_30_30(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You will tell me where to find the prophet of Cazic-Thule. Now!")
	AddConversationOption(conversation, "Tell me where I can find the prophet of Rallos Zek.")
	AddConversationOption(conversation, "I want to find out more about Innoruuk.", "dlg_30_31")
	AddConversationOption(conversation, "I wish to learn more about Bertoxxulous, the Plaguebringer.")
	AddConversationOption(conversation, "I am interested in learning more about the Forgotten One, Anashti Sul.")
	AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?")
	AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end

function dlg_30_31(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian004.mp3", "", "", 2236120283, 3019102435, Spawn)
	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...", "dlg_30_32")
	StartConversation(conversation, NPC, Spawn, "Tychus Zeksworn has taken up a position east of East Fort Irontoe, overlooking one of the treacherous mountain passes. Perhaps he seeks to recruit the bugbears and kobolds to join an army of Rallos Zek!")
end

function dlg_30_32(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?", "dlg_30_33")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_30_33(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You will tell me where to find the prophet of Cazic-Thule. Now!")
	AddConversationOption(conversation, "Tell me where I can find the prophet of Rallos Zek.")
	AddConversationOption(conversation, "I want to find out more about Innoruuk.", "dlg_30_34")
	AddConversationOption(conversation, "I wish to learn more about Bertoxxulous, the Plaguebringer.")
	AddConversationOption(conversation, "I am interested in learning more about the Forgotten One, Anashti Sul.")
	AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?")
	AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end

function dlg_30_34(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian003.mp3", "", "", 3561850153, 4167915483, Spawn)
	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...")
	StartConversation(conversation, NPC, Spawn, "Xilania Nevagon has gone to Greater Faydark, though to what end I do not know. I am certain that the Prophet of Innoruuk has only nefarious things in mind if she has gone to the home of the Fae!")
end

function dlg_30_35(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?", "dlg_30_36")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_30_36(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You will tell me where to find the prophet of Cazic-Thule. Now!")
	AddConversationOption(conversation, "Tell me where I can find the prophet of Rallos Zek.")
	AddConversationOption(conversation, "I want to find out more about Innoruuk.", "dlg_30_37")
	AddConversationOption(conversation, "I wish to learn more about Bertoxxulous, the Plaguebringer.")
	AddConversationOption(conversation, "I am interested in learning more about the Forgotten One, Anashti Sul.")
	AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?")
	AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end

function dlg_30_37(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...")
	StartConversation(conversation, NPC, Spawn, "Hrath Everstill can be found near the entrance to the city of Gorowyn in Timorous Deep. It's been said that he's been conducting some rather gruesome experiments on some of the locals in an attempt to unleash the wrath of Bertoxxulous, the Plaguebringer. Perhaps he could use your assistance.")
end

function dlg_30_38(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?", "dlg_30_39")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_30_39(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You will tell me where to find the prophet of Cazic-Thule. Now!")
	AddConversationOption(conversation, "Tell me where I can find the prophet of Rallos Zek.")
	AddConversationOption(conversation, "I want to find out more about Innoruuk.", "dlg_30_40")
	AddConversationOption(conversation, "I wish to learn more about Bertoxxulous, the Plaguebringer.")
	AddConversationOption(conversation, "I am interested in learning more about the Forgotten One, Anashti Sul.")
	AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?")
	AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end

function dlg_30_40(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You have been most helpful.  I will take my leave now.")
	AddConversationOption(conversation, "On second thought...")
	StartConversation(conversation, NPC, Spawn, "Once thought lost to the nothingness of the Void, Anashti Sul has found her way back to Norrath.  Her Prophet, Plumetor Dul'Sadma, has taken up residence on the docks of the Sinking Sands.  It is there you will need to travel if you wish to learn more about the nature of the Forgotten One.")
end

function dlg_30_41(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?", "dlg_30_42")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_30_42(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You will tell me where to find the prophet of Cazic-Thule. Now!")
	AddConversationOption(conversation, "Tell me where I can find the prophet of Rallos Zek.")
	AddConversationOption(conversation, "I want to find out more about Innoruuk.", "dlg_30_43")
	AddConversationOption(conversation, "I wish to learn more about Bertoxxulous, the Plaguebringer.")
	AddConversationOption(conversation, "I am interested in learning more about the Forgotten One, Anashti Sul.")
	AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?")
	AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end

function dlg_30_43(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_30_44(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You will tell me where to find the prophet of Cazic-Thule. Now!")
	AddConversationOption(conversation, "Tell me where I can find the prophet of Rallos Zek.")
	AddConversationOption(conversation, "I want to find out more about Innoruuk.", "dlg_30_45")
	AddConversationOption(conversation, "I wish to learn more about Bertoxxulous, the Plaguebringer.")
	AddConversationOption(conversation, "I am interested in learning more about the Forgotten One, Anashti Sul.")
	AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?")
	AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end

function dlg_31_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian001.mp3", "", "", 1885768155, 4071330533, Spawn)
	AddConversationOption(conversation, "You will tell me where to find the prophet of Cazic-Thule. Now!")
	AddConversationOption(conversation, "I want to find out more about Innoruuk.", "dlg_31_2")
	AddConversationOption(conversation, "Tell me where I can find the prophet of Rallos Zek.")
	AddConversationOption(conversation, "I've always been interested in Solusek Ro.")
	AddConversationOption(conversation, "I'm born of the earth, now tell me about Brell Serilis!")
	AddConversationOption(conversation, "Where might I find Quellious' prophet?")
	AddConversationOption(conversation, "Tunare, I think I would enjoy knowing where to speak with her prophet.")
	AddConversationOption(conversation, "Please tell me where I may find the prophet of Mithaniel Marr.")
	AddConversationOption(conversation, "I hear the the prophet of Bristlebane is looking for a devoted prankster. Where might I find him?")
	AddConversationOption(conversation, "Please tell me where I may find the prophet of The Tribunal.")
	AddConversationOption(conversation, "Where might I find Karana's prophet?")
	AddConversationOption(conversation, "I've always been interested in the ways of Bertoxxulous. Where is his prophet?")
	StartConversation(conversation, NPC, Spawn, "Well, you may wish to learn of their prophet's locations. Perhaps one of them will interest you with his tales.")
end

function dlg_31_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian002.mp3", "", "", 1717778678, 2232573733, Spawn)
	AddConversationOption(conversation, "Very good, I will be on my way then.", "dlg_31_3")
	AddConversationOption(conversation, "On second thought...")
	StartConversation(conversation, NPC, Spawn, "The Prophet of Fear, Danak Dhorentath, has gone to Dagnor's Pass here in Butcherblock. If you wish to learn more about Cazic-Thule, I would seek him out there.")
end

function dlg_31_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?", "dlg_31_4")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_31_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "It's so wonderful! I just want to go out and start basking in their glory right away!")
	AddConversationOption(conversation, "Feh. Gods, who needs em? Always a pain in yer neck! I'd sooner stick a knife in their gut than worship those churlish manifestations.", "dlg_31_5")
	AddConversationOption(conversation, "I'm really not interested at all.")
	StartConversation(conversation, NPC, Spawn, "Hello there! I'm sure you've heard all the hubbub about the deities coming back to us! Some people think it's grand, others not so much.")
end

function dlg_31_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian001.mp3", "", "", 1885768155, 4071330533, Spawn)
	AddConversationOption(conversation, "You will tell me where to find the prophet of Cazic-Thule. Now!")
	AddConversationOption(conversation, "I want to find out more about Innoruuk.", "dlg_31_6")
	AddConversationOption(conversation, "Tell me where I can find the prophet of Rallos Zek.")
	AddConversationOption(conversation, "I've always been interested in Solusek Ro.")
	AddConversationOption(conversation, "I'm born of the earth, now tell me about Brell Serilis!")
	AddConversationOption(conversation, "Where might I find Quellious' prophet?")
	AddConversationOption(conversation, "Tunare, I think I would enjoy knowing where to speak with her prophet.")
	AddConversationOption(conversation, "Please tell me where I may find the prophet of Mithaniel Marr.")
	AddConversationOption(conversation, "I hear the the prophet of Bristlebane is looking for a devoted prankster. Where might I find him?")
	AddConversationOption(conversation, "Please tell me where I may find the prophet of The Tribunal.")
	AddConversationOption(conversation, "Where might I find Karana's prophet?")
	AddConversationOption(conversation, "I've always been interested in the ways of Bertoxxulous. Where is his prophet?")
	StartConversation(conversation, NPC, Spawn, "Well, you may wish to learn of their prophet's locations. Perhaps one of them will interest you with his tales.")
end

function dlg_31_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian003.mp3", "", "", 3561850153, 4167915483, Spawn)
	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...", "dlg_31_7")
	StartConversation(conversation, NPC, Spawn, "Xilania Nevagon has gone to Greater Faydark, though to what end I do not know. I am certain that the Prophet of Innoruuk has only nefarious things in mind if she has gone to the home of the Fae!")
end

function dlg_31_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.", "dlg_31_8")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_32_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian001.mp3", "", "", 1885768155, 4071330533, Spawn)
	AddConversationOption(conversation, "You will tell me where to find the prophet of Cazic-Thule. Now!")
	AddConversationOption(conversation, "I want to find out more about Innoruuk.", "dlg_32_2")
	AddConversationOption(conversation, "Tell me where I can find the prophet of Rallos Zek.")
	AddConversationOption(conversation, "I've always been interested in Solusek Ro.")
	AddConversationOption(conversation, "I'm born of the earth, now tell me about Brell Serilis!")
	AddConversationOption(conversation, "Where might I find Quellious' prophet?")
	AddConversationOption(conversation, "Tunare, I think I would enjoy knowing where to speak with her prophet.")
	AddConversationOption(conversation, "Please tell me where I may find the prophet of Mithaniel Marr.")
	AddConversationOption(conversation, "I hear the the prophet of Bristlebane is looking for a devoted prankster. Where might I find him?")
	AddConversationOption(conversation, "Please tell me where I may find the prophet of The Tribunal.")
	AddConversationOption(conversation, "Where might I find Karana's prophet?")
	AddConversationOption(conversation, "I've always been interested in the ways of Bertoxxulous. Where is his prophet?")
	StartConversation(conversation, NPC, Spawn, "Well, you may wish to learn of their prophet's locations. Perhaps one of them will interest you with his tales.")
end

function dlg_32_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian004.mp3", "", "", 2236120283, 3019102435, Spawn)
	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...")
	StartConversation(conversation, NPC, Spawn, "Tychus Zeksworn has taken up a position east of East Fort Irontoe, overlooking one of the treacherous mountain passes. Perhaps he seeks to recruit the bugbears and kobolds to join an army of Rallos Zek!")
end

function dlg_32_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
	AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?")
	AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?", "dlg_32_4")
	AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!")
	AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_32_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You will tell me where to find the prophet of Cazic-Thule. Now!")
	AddConversationOption(conversation, "Tell me where I can find the prophet of Rallos Zek.")
	AddConversationOption(conversation, "I want to find out more about Innoruuk.", "dlg_32_5")
	AddConversationOption(conversation, "I wish to learn more about Bertoxxulous, the Plaguebringer.")
	AddConversationOption(conversation, "I am interested in learning more about the Forgotten One, Anashti Sul.")
	AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?")
	AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end

function dlg_32_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian004.mp3", "", "", 2236120283, 3019102435, Spawn)
	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...", "dlg_32_6")
	StartConversation(conversation, NPC, Spawn, "Tychus Zeksworn has taken up a position east of East Fort Irontoe, overlooking one of the treacherous mountain passes. Perhaps he seeks to recruit the bugbears and kobolds to join an army of Rallos Zek!")
end

