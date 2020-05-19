--[[
	Script Name	: SpawnScripts/GreaterFaydark/CaptainR.K.Irontoe.lua
	Script Purpose	: Captain R.K. Irontoe <The Irontoe Brigade>
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

		PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe001.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "Who are you?", "dlg_24_1")
	AddConversationOption(conversation, "I do not know.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "Bah! How does a dwarf feel at home with a canopy of leaves and not one of stone? ")
	if convo==25 then
		PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe057.mp3", "", "", 770633161, 1780911252, Spawn)
		AddConversationOption(conversation, "I would like to hear about Kaladim.", "dlg_25_1")
		AddConversationOption(conversation, "My interest in serving the dwarven kingdom has risen.")
		AddConversationOption(conversation, "I just wanted to say hello. Farewell now. ")
		StartConversation(conversation, NPC, Spawn, "Ah! You again. Has your interest in dwarven history risen?")
	end

	if convo==26 then
		PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe057.mp3", "", "", 770633161, 1780911252, Spawn)
		AddConversationOption(conversation, "I would like to hear about Kaladim.", "dlg_26_1")
		AddConversationOption(conversation, "My interest in serving the dwarven kingdom has risen.")
		AddConversationOption(conversation, "I just wanted to say hello. Farewell now. ")
		StartConversation(conversation, NPC, Spawn, "Ah! You again. Has your interest in dwarven history risen?")
	end

end

function dlg_24_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe002.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "I would like to hear about Kaladim.", "dlg_24_2")
	AddConversationOption(conversation, "Is there anything I can do to help reclaim the glory of Kaladim?")
	AddConversationOption(conversation, "Nice to meet you, Captain, but I must go. Bye.")
	StartConversation(conversation, NPC, Spawn, "I am Captain R.K. Irontoe, commanding officer of Greater Faydark operations for the Irontoe Brigade, sons of Kaladim! All raise yer milk for the past glory of Kaladim!")
end

function dlg_24_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe003.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "What did Kaladim do during the War of the Fay?", "dlg_24_3")
	AddConversationOption(conversation, "What is the Grand March?")
	AddConversationOption(conversation, "What happened to Kaladim during the Age of Cataclysms?")
	AddConversationOption(conversation, "What is the Irontoe Brigade?")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Kaladim has endured a lot of pain since the War of the Fay. It has stood even after the Grand March removed most of its defenders. It endured the titanic quakes of the Age of Cataclysms. And for what? To see the Serilian Horde occupy its majestic halls.")
end

function dlg_24_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe004.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "What were trolls and ogres doing in Lesser Faydark?", "dlg_24_4")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "During the great war, the brigades of the Stormguard marched from the gates of Kaladim to the forests of Kelethin where the Neriak Alliance was razing the realm of the elves. The dwarven army met great resistance from troll and ogre units within the Lesser Faydark, but nothing could keep us from reaching the besieged tree city.")
end

function dlg_24_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe005.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "Did the trolls and ogres stop the dwarven brigades?", "dlg_24_5")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The dark elf generals sent their brigades of monsters to halt the march of the dwarven armies there. They knew that we would come to rescue our elven brothers. We could break their sieges on Felwithe and Kelethin. So it was in the Lesser Faydark that monsters met mettle...dwarven mettle.")
end

function dlg_24_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe006.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "What happened at the Battle of Brute Hill?", "dlg_24_6")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The monsters did their best to surprise our army, managing to divide our brigades, but they could not stop us. One of the bloodiest battles fought there was the Battle of Brute Hill. That was where King Kazon Stormhammer and the Ogrebane Brigade were encircled. But the Ogrebane Brigade would not end that day.")
end

function dlg_24_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe007.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "So they managed to reach Kelethin and rescue the city?", "dlg_24_7")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The fierce Ogrebane Brigade was outnumbered ten to one.  The other brigades had their own battles and could not reach them. Death was certain, but King Kazon Stormhammer used the mighty Stormhammer, the great weapon bestowed to him by Brell Serilis. With a mighty rumble, the powers of the Underfoot shook and quaked, the ground claimed our foes and the march continued.")
end

function dlg_24_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe008.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "The dark elves burned the forest?", "dlg_24_8")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Yes. The brigades reached the greater and then battles would abound throughout the land of the wood elves. Dwarf fought alongside elf against the evil dark elf army of Dreadguard and Crushbone orcs. During the many skirmishes, the dark elves set fire to the forest. This became known as the Fires of Faydark, the final battle. ")
end

function dlg_24_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe009.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "What about Felwithe, home of the high elves?", "dlg_24_9")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The Greater Faydark burned bright.  Many platoons, both friend and foe, fell to the surrounding flames. It was a last ditch effort of the dark elves. They knew they had been beaten and they wished to throw a great dagger while passing through death's door. Regardless of the damage done, we were victorious and Kelethin survived. ")
end

function dlg_24_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe010.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "So the gnomes and their machines freed Felwithe.", "dlg_24_10")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "If it were not for the tick-tocking, puffing and clanking army of the gnomes, I am sure Felwithe would be part of the dark elf empire to this day. The elite dark elf Dragoons, led by their king, had captured Felwithe. But the clockworks clambered over the mountain peaks that previously made the elven city in the clouds impervious to attack.  ")
end

function dlg_24_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe011.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "What else occurred in the Siege of Felwithe?", "dlg_24_11")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Yes, but when the contraptions of the gnomes come to the rescue, you are sure to take severe damage from their good deed. The  clockworks toppled much of the grand city in the process. Still, they did liberate the city and alongside the elite Koada'Vie, they not only thwarted the occupation, but managed to slay the evil King Naythox Thex. Unfortunately, not before the Dragoons slew the high elf king also. What a shame.")
end

function dlg_24_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe012.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "I would like to hear more about Kaladim.", "dlg_24_12")
	AddConversationOption(conversation, "Were there any significant dwarven battles in Greater Faydark?")
	AddConversationOption(conversation, "Very well, I will run along. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Now listen here, I am a dwarven historian. I care little of the battles beyond our brigades. You are lucky enough to hear a bit about the occupation and liberation of Felwithe. Now run along, do something heroic.")
end

function dlg_25_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe003.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "What did Kaladim do during the War of the Fay?", "dlg_25_2")
	AddConversationOption(conversation, "What is the Grand March?")
	AddConversationOption(conversation, "What happened to Kaladim during the Age of Cataclysms?")
	AddConversationOption(conversation, "What is the Irontoe Brigade?")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Kaladim has endured a lot of pain since the War of the Fay. It has stood even after the Grand March removed most of its defenders. It endured the titanic quakes of the Age of Cataclysms. And for what? To see the Serilian Horde occupy its majestic halls.")
end

function dlg_25_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe013.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "Are you saying that everyone left Kaladim?")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.", "dlg_25_3")
	StartConversation(conversation, NPC, Spawn, "You ask about things only a son or daughter of Kaladim should know, but it is no secret. During the latter years of the Age of War, Kaladim lost much of its population to the grandest pilgrimage ever, a crusade given to us by Brell. ")
end

function dlg_25_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe014.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "Why would most of the dwarves abandon their grand kingdom of Kaladim?", "dlg_25_4")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Not everyone, but most. I cannot reveal the reasons why or even where they went, but I can say that it was a calling of Brell's. Long have we waited for word to reach us about the glorious halls of the Vaults of Serilis.")
end

function dlg_25_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe015.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "They found out where this place is?", "dlg_25_5")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The Vaults have long been part of our mythology and our destiny. The Vaults of Serilis is the grandest temple in all Norrath. It is said that Brell made his temporary home on Norrath in the Vaults as he created his children and the creatures that would be deposited upon Norrath. It is the cradle of the first and destiny to us all.")
end

function dlg_25_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe016.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "Tell me more of the Vaults of Serilis and what this riddle was.", "dlg_25_6")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The riddle of its location reached Kaladim. The king and his lords studied the riddle for many years until a location could be determined. Unfortunately, the answer was accompanied by an impending doom if the Vaults could not be saved from a mysterious threat. ")
end

function dlg_25_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe017.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "I would like to hear more about Kaladim.", "dlg_25_7")
	AddConversationOption(conversation, "Very well, I will run along. Farewell.")
	StartConversation(conversation, NPC, Spawn, "I have said too much about the whispers Brell bestowed upon the dwarves. You must abandon your query. I will tell you no more about the Grand March.")
end

function dlg_25_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe003.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "What did Kaladim do during the War of the Fay?", "dlg_25_8")
	AddConversationOption(conversation, "What is the Grand March?")
	AddConversationOption(conversation, "What happened to Kaladim during the Age of Cataclysms?")
	AddConversationOption(conversation, "What is the Irontoe Brigade?")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Kaladim has endured a lot of pain since the War of the Fay. It has stood even after the Grand March removed most of its defenders. It endured the titanic quakes of the Age of Cataclysms. And for what? To see the Serilian Horde occupy its majestic halls.")
end

function dlg_25_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe018.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "Did Kaladim take much damage during this time?")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "As Norrath quaked and rumbled, Kaladim stood its greatest test. When the titanic quakes began, it was in grave danger, being the grandest city ever to be built under the mountains, grander even than the ticking city of Ak'Anon. ")
end

function dlg_25_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe019.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "What happened inside?", "dlg_25_10")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Kaladim has always been built in the sturdiest of environments. We dwarves know our rock! When other caves crumbled and collapsed, Kaladim stood strong. But the monuments and the free standing towers of the city did not fare so well... nor the residents within.")
end

function dlg_25_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe020.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "But they were freed, were they not?", "dlg_25_11")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The world began to spasm and monuments cracked. Our finest monument was over the gates leading into Kaladim: the statue of Dagnor Butcherblock. The great stone hammer that was held by the statue fractured and broke free! It came crashing down, sealing the passage into Kaladim. All within became prisoners. ")
end

function dlg_25_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe021.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "How did the dwarves inside manage to survive, or did they?", "dlg_25_12")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Unfortunately, the survivors were cut off from the surface world for a long time. The stone used for monuments is often quite dense and almost impossible to breach. It would be nearly a year before we could clear the gates of Kaladim. ")
end

function dlg_25_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe022.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "An invasion from somewhere else? Where from?", "dlg_25_13")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "What few residents within that survived the quakes lived on resources which we dwarves always store in abundance. But this sustenance would not protect them from the unexpected invasion that would come: the invasion of the Serilian Horde.")
end

function dlg_25_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe023.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "But now you can retake the city!", "dlg_25_14")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The great rumblings of the Age had created a fissure between our kingdom and the depths of the underworld. This fissure was the means used by an evil alliance of underworld denizens to enter Kaladim and slay every last dwarf, thereby claiming this city as their capital.")
end

function dlg_25_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe024.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "I would like to hear more about Kaladim.", "dlg_25_15")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "By the time we managed to breach the collapse and enter our city, the horde had established an impregnable front. We lost many soldiers during our early assaults. We must bolster our forces to defend and expand Fort Irontoe, our new base of operations within Butcherblock Mountains. ")
end

function dlg_25_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe003.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "What did Kaladim do during the War of the Fay?", "dlg_25_16")
	AddConversationOption(conversation, "What is the Grand March?")
	AddConversationOption(conversation, "What happened to Kaladim during the Age of Cataclysms?")
	AddConversationOption(conversation, "What is the Irontoe Brigade?")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Kaladim has endured a lot of pain since the War of the Fay. It has stood even after the Grand March removed most of its defenders. It endured the titanic quakes of the Age of Cataclysms. And for what? To see the Serilian Horde occupy its majestic halls.")
end

function dlg_25_16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe032.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "What is the Stormguard?")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "We are the Irontoe Brigade. We are the final defenders of the dwarves within this land. Our brigade history is rich with heroism and tragedy. The brigade was formed long before my time. It was formed in the Monument Age and stood as the greatest champions of the Stormguard.")
end

function dlg_25_17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe033.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "Why did they disband?", "dlg_25_18")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The Stormguard is the army of Kaladim. It is comprised of a number of brigades and the Irontoe Brigade stands as its most legendary. Long were they the champions of the king and kingdom. Then one day they disbanded. We are its revival.")
end

function dlg_25_18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe034.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "What happend between the orcs and the brigade?", "dlg_25_19")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "During the Age of Enlightenment the king sent the Irontoe Brigade on a seemingly suicidal mission to reclaim a great artifact from the land of the orcs. Even a legendary brigade can be overwhelmed by great numbers. ")
end

function dlg_25_19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe035.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "What were they sent to get from the ruins?", "dlg_25_20")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The orcs surrounded the brigade at an ancient dwarven stronghold that lay in ruins within orc country. The orcs had now made their citadel upon these ruins. The brigade was taking great losses to reach the inside of this citadel in hopes of finding access to the ruins. There were even greater losses to follow. ")
end

function dlg_25_20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe036.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "But you are an Irontoe Brigade officer. You must know what it was they brought back?", "dlg_25_21")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The secret of the artifact and ruins rests with the original Irontoe Brigade and King Kazon Stormhammer. They would be the only ones that would know what was brought back from the ruined vaults of the ruins that day in the Battle of Broken Skull Hill.")
end

function dlg_25_21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe037.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "Where did they go?", "dlg_25_22")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The secret was never passed down. All that is known is that compared to the great losses that saw over three fourths of the brigade slain, the reward brought disillusion to the surviving members. After the artifact was brought safely back to the king, the leader of the Irontoe Brigade disbanded the organization. They then left Kaladim for parts unknown.")
end

function dlg_25_22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe038.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "So, you are not the same Irontoe Brigade?", "dlg_25_23")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The Irontoe Brigade's surviving members spread throughout Norrath, none close to another. All left, save their leader, Tumpy Irontoe. Tumpy remained in Kaladim, but cast away his life as a defender. He opened a tavern called 'Irontoe's Eats' where many of the brigade members would return to every year on the anniversary of the Battle of Broken Skull Hill.")
end

function dlg_25_23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe039.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "You came back to Kaladim, but why?", "dlg_25_24")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Dwarves live long, but sooner or later the sword or Lady Time reaches out to your soul. The original brigade took on apprentices. Each renamed their apprentice in a fashion that was uniform with the others, far in other lands. Those are the names we carried back to Kaladim when she needed us.  ")
end

function dlg_25_24(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe040.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "Could I hear more about Kaladim?", "dlg_25_25")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Our help was necessary in training new guards that would be needed once the Stormguard left on the Grand March. We returned in the Age of War to train a new army to defend Kaladim. And that is how we came to be. ")
end

function dlg_25_25(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe003.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "What did Kaladim do during the War of the Fay?", "dlg_25_26")
	AddConversationOption(conversation, "What is the Grand March?")
	AddConversationOption(conversation, "What happened to Kaladim during the Age of Cataclysms?")
	AddConversationOption(conversation, "What is the Irontoe Brigade?")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Kaladim has endured a lot of pain since the War of the Fay. It has stood even after the Grand March removed most of its defenders. It endured the titanic quakes of the Age of Cataclysms. And for what? To see the Serilian Horde occupy its majestic halls.")
end

function dlg_25_26(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe004.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "What were trolls and ogres doing in Lesser Faydark?", "dlg_25_27")
	AddConversationOption(conversation, "I have no time for a history lesson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "During the great war, the brigades of the Stormguard marched from the gates of Kaladim to the forests of Kelethin where the Neriak Alliance was razing the realm of the elves. The dwarven army met great resistance from troll and ogre units within the Lesser Faydark, but nothing could keep us from reaching the besieged tree city.")
end

function dlg_26_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "captain_r.k._irontoe/_exp03/exp03_rgn_greater_faydark/captain_rk_irontoe/rk_irontoe042.mp3", "", "", 770633161, 1780911252, Spawn)
	AddConversationOption(conversation, "Farewell.")
	StartConversation(conversation, NPC, Spawn, "I am afraid you'll only get yourself hurt. Keep at your training and you'll soon be good enough to serve alongside the Irontoe Brigade.")
end

