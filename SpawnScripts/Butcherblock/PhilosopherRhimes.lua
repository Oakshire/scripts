--[[
	Script Name	: SpawnScripts/Butcherblock/PhilosopherRhimes.lua
	Script Purpose	: Philosopher Rhimes <Deity Historian>
	Script Author	: jakejp
	Script Date	: 2018.05.30
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

		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "It's so wonderful! I just want to go out and start basking in their glory right away!", "dlg_9_1")
		AddConversationOption(conversation, "Feh. Gods, who needs em? Always a pain in yer neck! I'd sooner stick a knife in their gut than worship those churlish manifestations.", "dlg_9_1")
		AddConversationOption(conversation, "I'm really not interested at all.")
	        StartConversation(conversation, NPC, Spawn, "Hello there! I'm sure you've heard all the hubbub about the deities coming back to us! Some people think it's grand, others not so much.")

end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "philosopher_rhimes/_exp03/deity/deity_historian011.mp3", "", "", 1707355458, 1531415457, Spawn)
		AddConversationOption(conversation, "I am interested in the powers of Good.  Where might I find their prophets?", "dlg_9_2")
		AddConversationOption(conversation, "I walk my own path, and serve neither good nor evil.  Where might I find the gods of neutrality?", "dlg_9_4")
		AddConversationOption(conversation, "If you know what is good for you, then tell me where I can find the servants of the evil gods!", "dlg_9_6")
		AddConversationOption(conversation, "I don't have time to make this decision now.  I will return another time.")
	StartConversation(conversation, NPC, Spawn, "Ah ha! You're one of the people who think their return is wonderful! Well, if you're interested, I've been taking notes on where their prophets have gone. You can talk to them for more information. Prophets are always ready to welcome new followers to the flock.")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Please tell me where I may find the prophet of Mithaniel Marr.", "MarrEnd")
		AddConversationOption(conversation, "Tunare...tell me where to speak with her prophet.", "TunareEnd")
		AddConversationOption(conversation, "Where might I find Quellious' prophet?", "QuelliousEnd")
		AddConversationOption(conversation, "I am searching for the prophet of the Prime Healer, Rodcet Nife.", "RodcetEnd")
                AddConversationOption(conversation, "I would love to speak with Erollisi Marr's prophet. Surely she has one!", "ErollisiEnd")
		AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?", "dlg_9_1")
		AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end


function dlg_9_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'm born of the earth, now tell me about Brell Serilis!", "BrellEnd")
		AddConversationOption(conversation, "I hear the prophet of Bristlebane is looking for a devoted prankster. Where might I find him?", "BristlebaneEnd")
		AddConversationOption(conversation, "I've always been interested in Solusek Ro.", "SolusekEnd")
		AddConversationOption(conversation, "I want to work with the law. Where is the Tribunal's prophet?", "TribunalEnd")
		AddConversationOption(conversation, "I serve the father of storms. Where can I find the prophet of Karana?", "KaranaEnd")
		AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?", "dlg_9_1")
		AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end


function dlg_9_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You will tell me where to find the prophet of Cazic-Thule. Now!", "CazicEnd")
		AddConversationOption(conversation, "Tell me where I can find the prophet of Rallos Zek.", "RallosEnd")
		AddConversationOption(conversation, "I want to find out more about Innoruuk.", "InnoruukEnd")
		AddConversationOption(conversation, "I wish to learn more about Bertoxxulous, the Plaguebringer.", "BertoxxulousEnd")
		AddConversationOption(conversation, "I am interested in learning more about the Forgotten One, Anashti Sul.", "AnashtiEnd")
		AddConversationOption(conversation, "My apologies, I don't think I'm interested in any of those.  What other choices might I have?", "dlg_9_1")
		AddConversationOption(conversation, "Actually, this is something I want to consider more carefully right now.  Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "Which one were you inquiring about?")
end


function MarrEnd(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...", "dlg_9_1")
	StartConversation(conversation, NPC, Spawn, "Sir Bayden Cauldthorn may be found in Old Kelethin, not far from the research library. He seeks all brave and valorous enough to follow Mithaniel Marr!")
end

function TunareEnd(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...", "dlg_9_1")
	StartConversation(conversation, NPC, Spawn, "Tunare's prophet, Kurista, has taken up residence within Old Kelethin. If you wish to learn more about the Earthmother, I am certain she would be willing to share her faith with you.")
end

function QuelliousEnd(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...", "dlg_9_1")
	StartConversation(conversation, NPC, Spawn, "Sensei Shoda has delegated responsibility to an erudite named Merrek. You can find him at the top of the cliffs in Butcherblock overlooking the ocean.")
end

function RodcetEnd(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you for your guidance.  Farewell to you.")
	AddConversationOption(conversation, "On second thought...", "dlg_9_1")
	StartConversation(conversation, NPC, Spawn, "Following in the footsteps of Seeress Ealaynya Ithis, the Prophet Bainyn Fairwind has been preaching the word of the Prime Healer from within the Temple of Life in North Qeynos.  If you wish to learn more about Rodcet Nife, then seek out Bainyn within the sacred temple.")
end

function ErollisiEnd(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you for your guidance.  Farewell to you.")
	AddConversationOption(conversation, "On second thought...", "dlg_9_1")
	StartConversation(conversation, NPC, Spawn, "Erollisi Marr's return to Norrath was quite extraordinary! If she is to take a prophet it would be Priest Aaronolis Swornlove, but he has not been bestowed with such a mantle, yet. I encourage you to speak with Sister Leela Prendyn of the Sisterhood of Erollisi. You will find her at the Cairn of the Huntress in the city of New Halas, in Frostfang Sea. She will tell you more of the Loving Huntress.")
end

function BrellEnd(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...", "dlg_9_1")
	StartConversation(conversation, NPC, Spawn, "Bronlor Stormhammer has gone to Highlands Outpost, here in the Butcherblock Mountains. You will need to seek him out if it is Brell Serilis you are interested in learning about.")
end

function BristlebaneEnd(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...", "dlg_9_1")
	StartConversation(conversation, NPC, Spawn, "I believe Tobel Patadash is the one you should seek out. He's currently residing on the docks of the Enchanted Lands, near the Lost Village of Bobick.")
end

function SolusekEnd(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...", "dlg_9_1")
	StartConversation(conversation, NPC, Spawn, "Civean Il'Pernod stares out across the Butcherblock above the King's Rest ravine. You will need to speak to him if you wish to learn about Solusek Ro.")
end

function TribunalEnd(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...", "dlg_9_1")
	StartConversation(conversation, NPC, Spawn, "Justinian Theo is near the settlement of Chrykori Village in Timorous Deep. His eyes scan the horizon, searching for those who seek justice and balance in Norrath. If that is what you seek, then speak with him.")
end

function KaranaEnd(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Then I will go to him swiftly.")
	AddConversationOption(conversation, "On second thought...", "dlg_9_1")
	StartConversation(conversation, NPC, Spawn, "Askr can be found near the city of Gorowyn in Timorous Deep -- on the Green Outlook. He can tell you how to return the father of storms to the skies of Norrath.")
end

function CazicEnd(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...", "dlg_9_1")
	StartConversation(conversation, NPC, Spawn, "The Prophet of Fear, Danak Dhorentath, has gone to Dagnor's Pass here in Butcherblock. If you wish to learn more about Cazic-Thule, I would seek him out there.")
end

function RallosEnd(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...", "dlg_9_1")
	StartConversation(conversation, NPC, Spawn, "Tychus Zeksworn has taken up a position east of East Fort Irontoe, overlooking one of the treacherous mountain passes. Perhaps he seeks to recruit the bugbears and kobolds to join an army of Rallos Zek!")
end

function InnoruukEnd(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...", "dlg_9_1")
	StartConversation(conversation, NPC, Spawn, "Xilania Nevagon has gone to Greater Faydark, though to what end I do not know. I am certain that the Prophet of Innoruuk has only nefarious things in mind if she has gone to the home of the Fae!")
end

function BertoxxulousEnd(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Very good, I will be on my way then.")
	AddConversationOption(conversation, "On second thought...", "dlg_9_1")
	StartConversation(conversation, NPC, Spawn, "Hrath Everstill can be found near the entrance to the city of Gorowyn in Timorous Deep. It's been said that he's been conducting some rather gruesome experiments on some of the locals in an attempt to unleash the wrath of Bertoxxulous, the Plaguebringer. Perhaps he could use your assistance.")
end

function AnashtiEnd(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "You have been most helpful.  I will take my leave now.")
	AddConversationOption(conversation, "On second thought...", "dlg_9_1")
	StartConversation(conversation, NPC, Spawn, "Once thought lost to the nothingness of the Void, Anashti Sul has found her way back to Norrath.  Her Prophet, Plumetor Dul'Sadma, has taken up residence on the docks of the Sinking Sands.  It is there you will need to travel if you wish to learn more about the nature of the Forgotten One.")
end