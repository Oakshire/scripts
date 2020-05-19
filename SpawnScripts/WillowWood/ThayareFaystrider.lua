--[[
	Script Name	: SpawnScripts/WillowWood/ThayareFaystrider.lua
	Script Purpose	: Thayare Faystrider 
	Script Author	: Scatman
	Script Date	: 2009.09.15
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

	PlayFlavor(NPC, "voiceover/english/optional5/thayare/qey_village05/thayare000.mp3", "", "", 1834305487, 313746184, Spawn)
	AddConversationOption(conversation, "The cataclysms have passed. ", "dlg_8_1")
	AddConversationOption(conversation, "I cannot speak now. Farewell.")
	StartConversation(conversation, NPC, Spawn, "So kind, yet so naive to the horrors of the past, tragedies to be repeated, no doubt. ")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/thayare/qey_village05/thayare001.mp3", "", "", 436536244, 3083124811, Spawn)
	AddConversationOption(conversation, "You speak of the dark elves?", "dlg_8_2")
	AddConversationOption(conversation, "I shall remember your words. Farewell.")
	StartConversation(conversation, NPC, Spawn, "I do not speak of trembling plains and torrential seas, I speak of the bane of elfkind, the eternal struggle between light and dark ... between above and below.")
end

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/thayare/qey_village05/thayare002.mp3", "", "", 1265623853, 760817521, Spawn)
	AddConversationOption(conversation, "Then do not fight anymore.", "dlg_8_3")
	AddConversationOption(conversation, "I shall remember your words. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Yes, the elves of below ... the Teir'Dal. Their hatred for the elves of the sun is a plague upon all of Norrath. Many have died in defense of elfkind, and I believe the bloodshed is far from over. It is an eternal war that burdens my heart.")
end

function dlg_8_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/thayare_faystrider/qey_village05/thayare003.mp3", "", "", 2415361913, 3209390874, Spawn)
	AddConversationOption(conversation, "Why would you rejoice on your deathbed?", "dlg_8_5")
	AddConversationOption(conversation, "Who is Tunare?", "dlg_8_4")
	AddConversationOption(conversation, "I shall remember your words. Farewell.")
	StartConversation(conversation, NPC, Spawn, "I wish it were that easy, but I am Feir'Dal, a wood elf, and I am sworn to defend the Laws of Tunare and her children till my final breath passes my lips. That is a day I look forward to with great rejoice.")
end

function dlg_8_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/thayare_faystrider/qey_village05/thayare004.mp3", "", "", 2739778178, 2862887180, Spawn)
	AddConversationOption(conversation, "You would die for this goddess?", "dlg_8_5")
	AddConversationOption(conversation, "I shall remember your words. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Tunare is the Mother of All, the goddess of the forest realms, the one who gave life to all who dwell within, including elfkind. She is growth and preservation. We elves of the sun are her soldiers and wards. We live to serve her laws and we die to preserve her children, flora and fauna.")
end

function dlg_8_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/thayare/qey_village05/thayare005.mp3", "", "", 1279667287, 2445439332, Spawn)
	AddConversationOption(conversation, "When did she die?", "dlg_8_6")
	AddConversationOption(conversation, "I shall remember your words. Farewell.")
	StartConversation(conversation, NPC, Spawn, "In my days, I have seen a multitude of my fellow treefolke give their lives in defense of Tunare's laws. Many were my family. I am haunted with the visions of battles of yore. I recall my beloved sister slipping from life while I wept with her in my embrace. ")
end

function dlg_8_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/thayare/qey_village05/thayare006.mp3", "", "", 3098906679, 78236071, Spawn)
	AddConversationOption(conversation, "You fought in this war?", "dlg_8_8")
	AddConversationOption(conversation, "What is the Faydark?", "dlg_8_7")
	AddConversationOption(conversation, "I shall remember your words. Farewell.")
	StartConversation(conversation, NPC, Spawn, "She drifted from this realm more than four-hundred-years ago in the Age of Turmoil. It was the great War of the Fay, the war of the elves. The elf empire of below and their allies challenged the combined nations of elfkind. Armies of Teir'Dal, orc, troll, and others crept towards the Faydark hoping to extinguish the elves of sun.")
end

function dlg_8_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/thayare/qey_village05/thayare007.mp3", "", "", 567824333, 4242442867, Spawn)
	AddConversationOption(conversation, "You fought for this forest?", "dlg_8_8")
	AddConversationOption(conversation, "I shall remember your words. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The Faydark was one of the last of the great forests of Norrath. It rested upon a continent far, far from here, taking up most of the land with its billowing evergreen canopy. Its grandeur was unmatched. It's within this sprawling majesty that we Feir'Dal built our great city in the last of the towering Elddar trees, the tree city called Kelethin.   ")
end

function dlg_8_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/thayare/qey_village05/thayare008.mp3", "", "", 2595470053, 1587010551, Spawn)
	AddConversationOption(conversation, "How did it begin?", "dlg_8_9")
	AddConversationOption(conversation, "I shall remember your words. Farewell.")
	StartConversation(conversation, NPC, Spawn, "I was but an adolescent, barely able to string a bow, yet I fought. My sister was in her prime, and she was a highly-skilled scout, an elite soldier of the Scouts of Tunare. But even her skill could not prepare her or the tree city of Kelethin for the onslaught from the northern coasts and the orc hordes from Crushbone.  ")
end

function dlg_8_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/thayare/qey_village05/thayare009.mp3", "", "", 3015822992, 4001180835, Spawn)
	AddConversationOption(conversation, "Where did they come from?", "dlg_8_10")
	AddConversationOption(conversation, "I shall remember your words. Farewell.")
	StartConversation(conversation, NPC, Spawn, "It happened quickly. The forest empire of my people was greatly protected. No branch was without a lookout, the tall masts and far reaching ballistae of the Koada'Dal wavejumpers patrolled the coasts, but still, we couldn't prepare for the arrival.    ")
end

function dlg_8_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/thayare/qey_village05/thayare010.mp3", "", "", 894446080, 3870182222, Spawn)
	AddConversationOption(conversation, "Where else did they come from?", "dlg_8_11")
	AddConversationOption(conversation, "I shall remember your words. Farewell.")
	StartConversation(conversation, NPC, Spawn, "From the depths of the burning wastelands of Crushbone, came the orc hordes. As we directed our efforts at repelling this force, an armada of war galleys of Neriak breached the coastal mists. Some say they arrived via a titanic teleport arch built by the dark elves deep in the uncharted seas of the Ocean of Tears. Yet, still, they struck from an unexpected front...")
end

function dlg_8_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/thayare/qey_village05/thayare011.mp3", "", "", 3635576474, 803732524, Spawn)
	AddConversationOption(conversation, "What about Kelethin?", "dlg_8_12")
	AddConversationOption(conversation, "I shall remember your words. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Near the heart of the Faydark, the most dangerous of the evil hordes arrived in a portal opened between the underworld and our forest, a portal bound by the ancient teleport spires. Wave after wave of Teir'Dal dragoon marched from this portal, a juggernaut marching towards the Koada'Dal city in the clouded mountains, Felwithe.        ")
end

function dlg_8_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/thayare/qey_village05/thayare012.mp3", "", "", 3204674791, 3928586592, Spawn)
	AddConversationOption(conversation, "Then you lost the war?", "dlg_8_13")
	AddConversationOption(conversation, "I shall remember your words. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The tree city was no target of the dragoons, the orcs of Crushbone kept us under siege, setting much of the Faydark on fire! Within the raging inferno, the dragoons marched to seize Felwithe. It is there that the legendary King Tearis'Thex fell to the dark blade.          ")
end

function dlg_8_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/thayare/qey_village05/thayare013.mp3", "", "", 3275962358, 3603060383, Spawn)
	AddConversationOption(conversation, "What happened to the evil horde?", "dlg_8_14")
	AddConversationOption(conversation, "I shall remember your words. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Defeat seemed certain, but as we fought futile battles on many fronts, the horns of war were heard along the borders of the Faydark! The brigades of the dwarven empire Kaladim marched in from the western mountains, and from the east came the gnomes of Ak'Anon with their ticking and puffing clockwork army. The elves of the sun would triumph this day.           ")
end

function dlg_8_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/thayare_faystrider/qey_village05/thayare014.mp3", "", "", 2960216728, 621843039, Spawn)
	AddConversationOption(conversation, "So the war was not long?", "dlg_8_15")
	AddConversationOption(conversation, "I shall remember your words. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Greatly outnumbered, the dark hordes were repelled. They retreated to the shadowed realms from whence they came. Some unfortunate ones fled to the Loping Plains seeking a haven in the moors of Mistmoore, never to be heard from again.  ")
end

function dlg_8_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/thayare/qey_village05/thayare015.mp3", "", "", 4021587135, 1996842290, Spawn)
	AddConversationOption(conversation, "How did you end up here?", "dlg_8_16")
	AddConversationOption(conversation, "I shall remember your words. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Don't let my short tale confuse you. This war raged for more than a few seasons. Blood stained the forest floor, green turned to ash. It was in the final defense of Kelethin that my sister sustained a mortal blow, dying within my arms, her last breath gracing my tear-soaked face.  ")
end

function dlg_8_16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/thayare/qey_village05/thayare016.mp3", "", "", 1874720017, 996176396, Spawn)
	AddConversationOption(conversation, "I wish you peace. Thank you.")
	StartConversation(conversation, NPC, Spawn, "Kelethin and Felwithe were restored under the guidance of the princess Queen, Lenya Thex, but the scars remained, both upon the land and within my memory. I departed the Faydark in search of a new life that would bury my visions of the war, but as I learned, war is eternal and it is far reaching. Since my days in the Faydark, I have traversed much more bloodshed. It is inescapable, yet I live on to defend the Laws of Tunare and to honor those that have fallen, such as my beloved sister Geeda.  ")
end