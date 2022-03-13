--[[
    Script Name    : SpawnScripts/Generic/GenericEcologyVoiceOvers.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.12 04:03:04
    Script Purpose : For City Based/Race Based Voiceover Callouts - Improves Zone ecology/atmosphere
                   : GenericEcologyHail(NPC, Spawn, faction) for basic hails,  GenericDrunkHail(NPC, Spawn, faction) for bar/drunk hails - Only Dwarves/Humans.
--]]

local BARBARIAN = 0
local DARK_ELF = 1
local DWARF = 2
local ERUDITE = 3
local FROGLOK = 4
local GNOME = 5
local HALF_ELF = 6
local HALFLING = 7
local HIGH_ELF = 8
local HUMAN = 9
local IKSAR = 10
local KERRA = 11
local OGRE = 12
local RATONGA = 13
local TROLL = 14
local WOOD_ELF = 15
local FAE = 16
local ARASAI = 17
local SARNAK = 18

local MALE = 1
local FEMALE = 2

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function GenericEcologyHail(NPC, Spawn, faction)
    race = GetRace(NPC)
    spawnRace = GetRace(Spawn)
	gender = GetGender(NPC)
	local zone = GetZone(NPC)
	if GetZoneID(zone) >= 220 and GetZoneID(zone) <= 238 then
	    GOOD = true
	elseif GetZoneID(zone) == 207 then
	    GOOD = true
	elseif GetZoneID(zone) >= 195 and GetZoneID(zone) <= 198 then
	    GOOD = true
	elseif GetZoneID(zone) == 589 or GetZoneID(zone) == 660 then
	    GOOD = true
	elseif GetZoneID(zone) == 470 then
	    GOOD = true
	elseif GetZoneID(zone) == 45 then
	    NEUTRAL = true
	elseif GetZoneID(zone) >= 124 and GetZoneID(zone) <= 128 then
	    EVIL = true
	elseif GetZoneID(zone) >= 134 and GetZoneID(zone)<= 168 then
	    EVIL = true
	end
	if race >= 0 and race <= 18 and gender >= 1 and gender <= 2 then
		if race == BARBARIAN then
			if gender == MALE then
			    if EVIL then
				    local choice = math.random(1,4)
					if choice == 1 then
					    PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/service/merchant/barbarian_merchant_service_evil_1_aoi_gm_b9dbd27d.mp3", "Only traitors to the Overlord would pass up a bargain like this. You're not a traitor are you?", "scold", 235175968, 3339718033, Spawn)
				    elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/service/merchant/barbarian_merchant_service_evil_1_hail_gm_1a08e567.mp3", "Hello! Can I offer you one of our new lifetime extended warranties for any merchandise you purchase? ", "nod", 2645212460, 3162600369, Spawn)
					elseif choice == 3 then
					    PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/service/merchant/barbarian_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 2075685854, 2333149890, Spawn)
					elseif choice == 4 then
					    PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/service/merchant/barbarian_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 910886868, 2769739896, Spawn)
					end
			    elseif GOOD then
			    	local choice = math.random(1,3)
	                    if choice == 1 then --racial check
	                        if spawnRace == BARBARIAN then
	                           	local check = math.random(1,2) 
	                           	    if check == 1 then
					                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_barbarian_gm_de9e8da3.mp3", "Mithaniel Marr never left us.  He will always be apart of our tribe, as long as we remain strong and brave.", "nod", 3368668310, 2187585076, Spawn)
                                    elseif check == 2 then
					                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_barbarian_gm_e7f2037c.mp3", "Perhaps we should go for a Hallas-cold brew sometime and share stories about our ancestors.", "happy", 2490006983, 800833318, Spawn)
                                end
                            elseif spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_darkelf_gm_d26c37f4.mp3", "Haha! What color does a dark elf bleed, care to tell?", "chuckle", 1543653024, 615533497, Spawn)
	                        elseif spawnRace == DWARF then
	                           	local check = math.random(1,2) 
	                           	    if check == 1 then
					                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_dwarf_gm_a8e32501.mp3", "Its a pleasure to see such strength in an ally so short!", "nod", 4130131362, 1400424363, Spawn)
                                    elseif check == 2 then
					                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_dwarf_gm_e7f2037c.mp3", "Perhaps we should go for a Hallas-cold brew sometime and share stories about our ancestors.", "happy", 3235630615, 1033414770, Spawn)
                                    end
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_erudite_gm_e216a8ba.mp3", "Hah! How do you keep warm without any hair on your body?  The tundra would snap your body like an icecicle.", "boggle", 1786373260, 3931240958, Spawn)
                            elseif spawnRace == GNOME then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_gnome_gm_3d767081.mp3", "Heh heh.  I'm sorry.  Your constant chatter about cogs and sprockets makes no sense to me.", "confused", 469705290, 4090933674, Spawn)
                            elseif spawnRace == HALF_ELF then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_halfelf_gm_4794558f.mp3", "If you really want to prove your courage in battle, get yourself a wode. Those can't be taken off so easily.", "nod", 1356161649, 134319671, Spawn)
                             elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_halfling_gm_a61ee5ac.mp3", "Ah, I would have trod upon you had you not spoken up.", "boggle", 2064484408, 3865062610, Spawn)
                             elseif spawnRace == HIGH_ELF then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_highelf_gm_310c09cb.mp3", "Hail to you as well, long lived one.", "hello", 2115413618, 2434193113, Spawn)
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_iksar_gm_88d6b89c.mp3", "Just because Qeynos isn't a freezing climate, doesn't mean a cold-blooded reptile is welcome here.", "scold", 992683295, 3962864221, Spawn)
                            elseif spawnRace == KERRA then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_kerra_gm_8a6840fc.mp3", "You would do well in Hallas in that fur coat.", "agree", 538073635, 999238426, Spawn)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_ogre_gm_ccb99e72.mp3", "Qeynos isn't large eoungh for the both of us.", "stare", 769788660, 92077120, Spawn)
                            elseif spawnRace == RATONGA then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_ratonga_gm_4b0a3096.mp3", "Watch where you're going. I might step on you should I choose to forget you were near me.", "point", 783852429, 746396829, Spawn)
                            elseif spawnRace == WOOD_ELF then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_woodelf_gm_8dff8cc4.mp3", "Eat more heartily to stand firm, even in the strongest winds!", "happy", 810996081, 628715345, Spawn)
			          	    else
					        PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
		                    end
                        elseif choice == 2 then	
                        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_d571c130.mp3", "I'm not used to this weather, but my people can adapt to any change in order to survive.", "no", 3421348121, 1004876500, Spawn)
                        elseif choice == 3 then	
                        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_5a6b643f.mp3", "Treasures from the past can be found throughout the lands for those who care to look.", "nod", 3614931515, 1601871948, Spawn)
				        end
				    end   
			elseif gender == FEMALE then
			    if GOOD then
				    local choice = math.random(1,11)
				    if choice == 1 then
				        PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_aoi_gf_2e85d8db.mp3", "Good day, love.  Enjoy yourself, ya hear?", "hello", 3358539218, 1293822221, Spawn)
				    elseif choice == 2 then
				        PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_aoi_gf_9fd46bc0.mp3", "You enjoying this weather?  I sure hope so!", "sniff", 4073398098, 738882758, Spawn)
				    elseif choice == 3 then
				        PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_2a467de4.mp3", "I fear no man or beast!", "flex", 2128441275, 1043815687, Spawn)
				    elseif choice == 4 then
				        PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_2dfeaa0a.mp3", "Many times I face death with no one to know.", "shrug", 2744180681, 630277713, Spawn)
				    elseif choice == 5 then
				        PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_65c7cb8c.mp3", "There is always a way, if desire is coupled with courage.", "nod", 1919974860, 3511707276, Spawn)
				    elseif choice == 6 then
				        PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_294af22b.mp3", "Breath that free air.  Its all the sweeter when you've earned it.", "sniff", 224238865, 4224982307, Spawn)
				    elseif choice == 7 then
				        PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_a3621b3b.mp3", "An ale a day keeps the blues away.", "smile", 3906908244, 1910427566, Spawn)
				    elseif choice == 8 then
				        PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_f6a79cd4.mp3", "Helping others keeps the soul pure.", "nod", 795123123, 1574455490, Spawn)
				    elseif choice == 9 then
				        PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_ec4612.mp3", "Always be vigil.  You never know when evil will strike!", "threaten", 1096415868, 4151719434, Spawn)
				    elseif choice == 10 then
				        PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_fad03256.mp3", "I'm as nervious as a karren in a room full of rocking chairs!", "squeal", 4225695611, 2945190068, Spawn)
				    elseif choice == 11 then
				        PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_28155374.mp3", "I'm not into politics.  I'm into survival!", "no", 4282239803, 2774251573, Spawn)
				        
				    end
				elseif EVIL then
				end
			end
		elseif race == DARK_ELF then
			if gender == MALE then
			    local choice = math.random(1,4)
				if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_aoi_gm_53388b91.mp3", "Only traitors to the Overlord would pass up a bargain like this. You're not a traitor are you?", "scold", 1403936443, 3068231605, Spawn)
				elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 2781916825, 678640011, Spawn)
				elseif choice == 3 then
				    PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 898812878, 1402234103, Spawn)
				elseif choice == 4 then
				    PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 1302153135, 3653961458, Spawn)
				end
			elseif gender == FEMALE then
			    local choice = math.random(1,4)
			    if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_hail_gf_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 3860282907, 2830883681, Spawn)
				elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_hail_gf_d088c20d.mp3", "The stuff's over there. Just let me know if you find anything you like.", "ponder", 1457896156, 727813168, Spawn)
				elseif choice == 3 then
				    PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_aoi_gf_53388b91.mp3", "Only traitors to the Overlord would pass up a bargain like this. You're not a traitor are you?", "scold", 2250198640, 1947969981, Spawn)
				elseif choice == 4 then
				    PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_hail_gf_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 1486780566, 1792397389, Spawn)
				end
			end
		elseif race == DWARF then
			if gender == MALE then
			    local choice = math.random(1,9)
			    if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_aoi_gm_b4ff8ace.mp3", "I'm itch'n for a good fight!  Are those goblins back yet?", "shakefist", 478033729, 3488014331, Spawn)
			    elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gm_18f9b118.mp3", "Oh, ho!  You snuck up on me.  Good to see ya.", "doubletake", 2049370386, 4131204607, Spawn)
				elseif choice == 3 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gm_1f07ffb4.mp3", "Its good to always have a sharp axe and a full belly!", "wink", 2265630972, 3685791755, Spawn)
                elseif choice == 4 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gm_4a5e53d4.mp3", "Sure. I'm sure sometimes it seems like I'm sober, but trust me, I'm not.", "no", 2723897486, 2019496108, Spawn)
			    elseif choice == 5 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gm_82c80dc0.mp3", "I've got a good mind to go in the tavern and never come out.", "nod", 927450741, 2295220361, Spawn)
				elseif choice == 6 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gm_8e3bb3e0.mp3", "I've seen it all!  Now I just want to relax in the comfort of the city.", "orate", 1484754695, 1754363723, Spawn)
                elseif choice == 7 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gm_f593b7f4.mp3", "I prefer the dark freshly dug tunnels underground, but I guess this city will do.", "shrug", 2336463438, 545977097, Spawn)
                elseif choice == 8 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gm_5f40e3c4.mp3", "How can you refuse a woman with ale and whiskers?", "confused", 3537795037, 2047005583, Spawn)
			    elseif choice == 9 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gm_bd8ccf81.mp3", "Ale may be the life's blood, but fighting is the soul my existence!", "nod", 4220338619, 1417901850, Spawn)
				end
			elseif gender == FEMALE then
			    local choice = math.random(1,10)
			    if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_aoi_gf_5475f635.mp3", "If you haven't done ten times your weight in dirt, you haven't done a lick of work.", "no", 221273044, 4217910335, Spawn)
			    elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_aoi_gf_5615016.mp3", "Where are ya goin?  It's impolite to go off and fight without invite'n me!", "ponder", 115051805, 1662538455, Spawn)
				elseif choice == 3 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gf_6bb475f8.mp3", "Oh, I love baked cakes.  Straight from the oven!", "chuckle", 857774146, 1935419474, Spawn)
                elseif choice == 4 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gf_a1f97cb0.mp3", "Only real dwarven men can handle a dwarven woman.", "nod", 2568025342, 2377695865, Spawn)
			    elseif choice == 5 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gf_b02d9ccd.mp3", "Good friends and good food is all I ask.", "nod", 1880629444, 3748722817, Spawn)
				elseif choice == 6 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gf_dd68828f.mp3", "The city is nice, but it feels a bit chilly up here.", "shiver", 3508028135, 2362399902, Spawn)
                elseif choice == 7 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gf_147a85da.mp3", "I love a good adventure. 'Specially any that involve bake'n!  Pies are a real challenge!", "happy", 981410795, 126534529, Spawn)
                elseif choice == 8 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gf_14a2c689.mp3", "I only dream of short days and long nights in the tavern.", "nod", 3089133697, 1701815749, Spawn)
			    elseif choice == 9 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gf_10269245.mp3", "Stout, hairy, and round! What more could you ask for in a man?", "woo", 941422359, 868281087, Spawn)
	          elseif choice == 10 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gf_13e943bf.mp3", "I still dream of the good ol' days.  Digging up gems and gold.", "ponder", 2352081128, 819343353, Spawn)

				end
			end
		elseif race == ERUDITE then
			if gender == MALE then
			    if EVIL then
				    local choice = math.random(1,3)
					if choice == 1 then
					    PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_1/ft/service/merchant/erudite_merchant_service_evil_1_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 3214856518, 2753581081, Spawn)
					elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_1/ft/service/merchant/erudite_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 3397939934, 3975525417, Spawn)
					elseif choice == 3 then
					    PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_1/ft/service/merchant/erudite_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 1834072357, 2642830337, Spawn)
					end
				elseif GOOD then
				    local choice = math.random(1,5)
					if choice == 1 then
					    PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_good_2/ft/service/merchant/erudite_merchant_service_good_2_aoi_gm_c5e79ff5.mp3", "Hello there! Can I interest you in some of the finest merchandise this side of Norrath?", "wave", 3892898109, 888385496, Spawn)
					elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_good_2/ft/service/merchant/erudite_merchant_service_good_2_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 857840270, 941389485, Spawn)
					elseif choice == 3 then
	                    PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_good_2/ft/service/merchant/erudite_merchant_service_good_2_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 4271285862, 1774320762, Spawn)
					elseif choice == 4 then
					    PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_good_2/ft/service/merchant/erudite_merchant_service_good_2_hail_gm_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 2447200130, 2600666744, Spawn)
					elseif choice == 5 then
					    PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_good_2/ft/service/merchant/erudite_merchant_service_good_2_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 4242410919, 3368229094, Spawn)
					end
				end
			elseif gender == FEMALE then
			    if EVIL then
				    local choice = math.random(1,3)
					if choice == 1 then
					    PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/service/merchant/erudite_merchant_service_evil_1_hail_gf_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 2944389248, 2464861027, Spawn)
					elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/service/merchant/erudite_merchant_service_evil_1_hail_gf_d088c20d.mp3", "The stuff's over there. Just let me know if you find anything you like.", "ponder", 3938058402, 2276035503, Spawn)
					elseif choice == 3 then
					    PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/service/merchant/erudite_merchant_service_evil_1_hail_gf_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 83870236, 433715613, Spawn)
					end
				elseif GOOD then
				    local choice = math.random(1,2)
					if choice == 1 then
					    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/service/merchant/erudite_merchant_service_good_1_hail_gf_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 212313057, 12730672, Spawn)
					elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/service/merchant/erudite_merchant_service_good_1_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 2546361989, 1647933100, Spawn)
			        end
			    end 
			end
		elseif race == FROGLOK then
			if gender == MALE then
			    local choice = math.random(1,4)
			    if choice == 1 then
			    	PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/service/merchant/froglok_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "", 3275840542, 3533002656, Spawn)
			    elseif choice == 2 then
			    	PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/service/merchant/froglok_merchant_service_good_1_hail_gm_ae84abf9.mp3", "Go on take a look at the stock. You'll never beat this price in the city. I guarantee it!", "", 1103160236, 2382190453, Spawn)
			    elseif choice == 3 then
			    	PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/service/merchant/froglok_merchant_service_good_1_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "", 4162169560, 3669848700, Spawn)
			    elseif choice == 4 then
			        PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/service/merchant/froglok_merchant_service_good_1_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "", 3778390452, 4026406833, Spawn)
			    end
			elseif gender == FEMALE then
			end
		elseif race == GNOME then
			if gender == MALE then
			    if EVIL then
				    local choice = math.random(1,4)
					if choice == 1 then
					    PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/service/merchant/gnome_merchant_service_evil_1_aoi_gm_53388b91.mp3", "Only traitors to the Overlord would pass up a bargain like this. You're not a traitor are you?", "scold", 991835348, 673767052, Spawn)
					elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/service/merchant/gnome_merchant_service_evil_1_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 4264249232, 4201092275, Spawn)
					elseif choice == 3 then
					    PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/service/merchant/gnome_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 1076899557, 563502184, Spawn)
					elseif choice == 4 then
					    PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/service/merchant/gnome_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 1962442487, 899461162, Spawn)
					end
				elseif GOOD then
				end
			elseif gender == FEMALE then
			    if GOOD then
				    local choice = math.random(1,4)
				    if choice == 1 then
				    	PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/merchant/gnome_merchant_service_good_1_hail_gf_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 3470306310, 1316518467, Spawn)
				    elseif choice == 2 then
				    	PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/merchant/gnome_merchant_service_good_1_hail_gf_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 246082736, 1176624798, Spawn)
				    elseif choice == 3 then
				    	PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/merchant/gnome_merchant_service_good_1_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 3111567662, 3548853636, Spawn)
				    elseif choice == 4 then
				    	PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/merchant/gnome_merchant_service_good_1_hail_gf_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 1338601146, 1643268062, Spawn)
				    end
				elseif EVIL then
				    local choice = math.random(1,4)
					if choice == 1 then
					    PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/service/merchant/gnome_merchant_service_evil_1_aoi_gf_b9dbd27d.mp3", "Only traitors to the Overlord would pass up a bargain like this. You're not a traitor are you?", "scold", 53934921, 2834276715, Spawn)
					elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/service/merchant/gnome_merchant_service_evil_1_hail_gf_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 2509544157, 3594072091, Spawn)
					elseif choice == 3 then
					    PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/service/merchant/gnome_merchant_service_evil_1_hail_gf_d088c20d.mp3", "The stuff's over there. Just let me know if you find anything you like.", "ponder", 1324995812, 3252792374, Spawn)
					elseif choice == 4 then
					    PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/service/merchant/gnome_merchant_service_evil_1_hail_gf_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 3830210026, 2739804736, Spawn)
					end
				end
			end
		elseif race == HALF_ELF then
			if gender == MALE then
			    if GOOD then
				    local choice = math.random(1,5)
				    if choice == 1 then
				    	PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/merchant/halfelf_merchant_service_good_1_aoi_gm_c5e79ff5.mp3", "Hello there! Can I interest you in some of the finest merchandise this side of Norrath?", "wave", 1293853317, 115757857, Spawn)
			    	elseif choice == 2 then
			    		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/merchant/halfelf_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 397083190, 607860501, Spawn)
				    elseif choice == 3 then
				    	PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/merchant/halfelf_merchant_service_good_1_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 3839095688, 1767190740, Spawn)
			       	elseif choice == 4 then
				    	PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/merchant/halfelf_merchant_service_good_1_hail_gm_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 1745995078, 3389510546, Spawn)
			    	elseif choice == 5 then
				    	PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/merchant/halfelf_merchant_service_good_1_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 2835834469, 3534853920, Spawn)
			    	end
				elseif EVIL then
				    local choice = math.random(1,4)
					if choice == 1 then
					    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/service/merchant/halfelf_merchant_service_evil_1_aoi_gm_53388b91.mp3", "Only traitors to the Overlord would pass up a bargain like this. You're not a traitor are you?", "scold", 139349589, 782938435, Spawn)
                    elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/service/merchant/halfelf_merchant_service_evil_1_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 1237696600, 1447318033, Spawn)
					elseif choice == 3 then
					    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/service/merchant/halfelf_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 1100358951, 329280246, Spawn)
					elseif choice == 4 then
					    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/service/merchant/halfelf_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 343341765, 3197108031, Spawn)
					end
				end
			elseif gender == FEMALE then
			    if EVIL then
				    local choice = math.random(1,3)
					if choice == 1 then
					    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/service/merchant/halfelf_merchant_service_evil_1_hail_gf_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 175282120, 2443997290, Spawn)
				    elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/service/merchant/halfelf_merchant_service_evil_1_hail_gf_d088c20d.mp3", "The stuff's over there. Just let me know if you find anything you like.", "ponder", 2378717460, 740610806, Spawn)
					elseif choice == 3 then
					    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/service/merchant/halfelf_merchant_service_evil_1_hail_gf_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 3198881432, 747888667, Spawn)
					end
				elseif GOOD then
				    local choice = math.random(1,5)
					if choice == 1 then
					    PlayFlavor(NPC, "voiceover/english/optional5/halfelf_eco_good_2/ft/service/merchant/halfelf_merchant_service_good_2_aoi_gf_c5e79ff5.mp3", "Hello there! Can I interest you in some of the finest merchandise this side of Norrath?", "wave", 4021870581, 3389419609, Spawn)
					elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/optional5/halfelf_eco_good_2/ft/service/merchant/halfelf_merchant_service_good_2_hail_gf_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 972343456, 3393961158, Spawn)
					elseif choice == 3 then
					    PlayFlavor(NPC, "voiceover/english/optional5/halfelf_eco_good_2/ft/service/merchant/halfelf_merchant_service_good_2_hail_gf_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 1394131243, 1936863827, Spawn)
					elseif choice == 4 then
					    PlayFlavor(NPC, "voiceover/english/optional5/halfelf_eco_good_2/ft/service/merchant/halfelf_merchant_service_good_2_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 2816660604, 3830827049, Spawn)
					elseif choice == 5 then
					    PlayFlavor(NPC, "voiceover/english/optional5/halfelf_eco_good_2/ft/service/merchant/halfelf_merchant_service_good_2_hail_gf_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 1252836690, 4210583240, Spawn)
					end
				end
			end
		elseif race == HALFLING then
			if gender == MALE then
			    local choice = math.random(1,5)
				if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_aoi_gm_c5e79ff5.mp3", "Hello there! Can I interest you in some of the finest merchandise this side of Norrath?", "wave", 1226726886, 4190877381, Spawn)
				elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 3623244639, 2766324485, Spawn)
				elseif choice == 3 then
				    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 1035878974, 1582137754, Spawn)
			    elseif choice == 4 then
				    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_hail_gm_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 41344948, 2516334772, Spawn)
				elseif choice == 5 then
				    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 1122140911, 2707150069, Spawn)
				end
			elseif gender == FEMALE then
			    local choice = math.random(1,4)
				if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_hail_gf_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 970154386, 421867483, Spawn)
				elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_hail_gf_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 1783848035, 1895831070, Spawn)
				elseif choice == 3 then
				    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 2106259105, 3779666567, Spawn)
				elseif choice == 4 then
				    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/merchant/halfling_merchant_service_good_1_hail_gf_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 2817125385, 2108502543, Spawn)
				end
			end
		elseif race == HIGH_ELF then
			if gender == MALE then
				local choice = math.random(1,4)
				if choice == 1 then
					PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/merchant/highelf_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 2148618169, 3301341439, Spawn)
				elseif choice == 2 then
					PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/merchant/highelf_merchant_service_good_1_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 3062232413, 481395622, Spawn)
				elseif choice == 3 then
					PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/merchant/highelf_merchant_service_good_1_hail_gm_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 1178509910, 1653421984, Spawn)
				elseif choice == 4 then
					PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/merchant/highelf_merchant_service_good_1_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 2961019025, 517163532, Spawn)
				end
			elseif gender == FEMALE then
				local choice = math.random(1,4)
				if choice == 1 then
					PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/merchant/highelf_merchant_service_good_1_hail_gf_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 2023209747, 1019050798, Spawn)
				elseif choice == 2 then
					PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/merchant/highelf_merchant_service_good_1_hail_gf_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 3279499948, 2931921467, Spawn)
				elseif choice == 3 then
					PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/merchant/highelf_merchant_service_good_1_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 3725011666, 2990490195, Spawn)
				elseif choice == 4 then
					PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/merchant/highelf_merchant_service_good_1_hail_gf_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 1015791525, 798872771, Spawn)
				end
			end
		elseif race == HUMAN then
			if gender == MALE then
			    if EVIL then
			        local choice =  math.random(1,4)
				    if choice == 1 then
				        PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/merchant/human_merchant_service_evil_1_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 1784666995, 3208939342, Spawn)
                    elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/merchant/human_merchant_service_evil_1_hail_gm_7d521aa2.mp3", "Hello! Can I offer you one of our new lifetime extended warranties for any merchandise you purchase? ", "nod", 84402078, 1019490531, Spawn)
					elseif choice == 3 then
					    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/merchant/human_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 1896104495, 1387469911, Spawn)
					elseif choice == 4 then
					    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/merchant/human_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 608741053, 3167076754, Spawn)
					end
				elseif GOOD then
				    local choice = math.random(1,5)
					if choice == 1 then
					    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_aoi_gm_c5e79ff5.mp3", "Hello there! Can I interest you in some of the finest merchandise this side of Norrath?", "wave", 1832724458, 980846932, Spawn)
					elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 2541554579, 2951095822, Spawn)
					elseif choice == 3 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 892528408, 239693863, Spawn)
                    elseif choice == 4 then
					    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gm_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 903813734, 2512856176, Spawn)
					elseif choice == 5 then
					    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 983188064, 3043413352, Spawn)
					end
				end
			elseif gender == FEMALE then
			    if EVIL then
			        local choice = math.random(1,5)
				    if choice == 1 then
				    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/merchant/human_merchant_service_evil_1_aoi_gf_53388b91.mp3", "Only traitors to the Overlord would pass up a bargain like this. You're not a traitor are you?", "scold", 2632179815, 4191292693, Spawn)
                    elseif choice == 2 then
				        PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/merchant/human_merchant_service_evil_1_hail_gf_7d521aa2.mp3", "Hello! Can I offer you one of our new lifetime extended warranties for any merchandise you purchase? ", "nod", 1377121065, 1621186679, Spawn)
				    elseif choice == 3 then
				        PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/merchant/human_merchant_service_evil_1_hail_gf_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 1299723818, 3048193330, Spawn)
				    elseif choice == 4 then
				        PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/merchant/human_merchant_service_evil_1_hail_gf_d088c20d.mp3", "The stuff's over there. Just let me know if you find anything you like.", "ponder", 2963689917, 1457704094, Spawn)
				    elseif choice == 5 then
				        PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/merchant/human_merchant_service_evil_1_hail_gf_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 1817378690, 2459690771, Spawn)
				    end
				elseif GOOD then
				    local choice = math.random(1,5)
					if choice == 1 then
                        PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_aoi_gf_c5e79ff5.mp3", "Hello there! Can I interest you in some of the finest merchandise this side of Norrath?", "wave", 489810336, 3318568259, Spawn)
					elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gf_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 1527285383, 3910629798, Spawn)
					elseif choice == 3 then
					    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gf_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 1381598517, 719278997, Spawn)
                    elseif choice == 4 then
					    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 1667555721, 2696093362, Spawn)
					elseif choice == 5 then
					    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/merchant/human_merchant_service_good_1_hail_gf_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 2588954321, 88153469, Spawn)
                    end
				end
			end
		elseif race == IKSAR then
			if gender == MALE then
			    if EVIL then
				    local choice = math.random(1,5)
					if choice == 1 then
					    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/service/merchant/iksar_merchant_service_evil_1_aoi_gm_b9dbd27d.mp3", "Only traitors to the Overlord would pass up a bargain like this. You're not a traitor are you?", "scold", 3019943489, 1406568446, Spawn)
					elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/service/merchant/iksar_merchant_service_evil_1_hail_gm_1a08e567.mp3", "Hello! Can I offer you one of our new lifetime extended warranties for any merchandise you purchase? ", "nod", 1197055422, 631535840, Spawn)
					elseif choice == 3 then
					    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/service/merchant/iksar_merchant_service_evil_1_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 2596269432, 669710728, Spawn)
					elseif choice == 4 then
					    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/service/merchant/iksar_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today, or am I just wasting my time? This isn't a museum display you know!", "glare", 1394544165, 1181852771, Spawn)
					elseif choice == 5 then
					    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/service/merchant/iksar_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 105908870, 230263487, Spawn)
					end
				elseif NEUTRAL then
				    local choice = math.random(1,7)
					if choice == 1 then
					    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_neutral_2/ft/service/merchant/iksar_merchant_service_neutral_2_aoi_gm_25771611.mp3", "You won't find these low, low prices in those fancy city shops.", "heckno", 2932257559, 4177037023, Spawn)
					elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_neutral_2/ft/service/merchant/iksar_merchant_service_neutral_2_hail_gm_1e754634.mp3", "Of course we deliver! I'll just need an address, key, and the times when you won't be home.", "scheme", 1087137768, 1465514007, Spawn)
					elseif choice == 3 then
					    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_neutral_2/ft/service/merchant/iksar_merchant_service_neutral_2_hail_gm_29327bd1.mp3", "I have to dump this stuff and move out tonight. Staying one step ahead of my, uh, happy customers.", "lookaway", 22249194, 1341967221, Spawn)
					elseif choice == 4 then
					    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_neutral_2/ft/service/merchant/iksar_merchant_service_neutral_2_hail_gm_48e9f7.mp3", "This merchandise is so hot it's still warm to the touch.", "wince", 1835763352, 2766558282, Spawn)
					elseif choice == 5 then
					    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_neutral_2/ft/service/merchant/iksar_merchant_service_neutral_2_hail_gm_670060d5.mp3", "Calm down, friend. Just because this looks like your stolen backpack doesn't mean it is.", "boggle", 2580247510, 1110936911, Spawn)
					elseif choice == 6 then
					    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_neutral_2/ft/service/merchant/iksar_merchant_service_neutral_2_hail_gm_8c371df0.mp3", "Don't let these deals slip through your fingers.", "point", 237863798, 1171878591, Spawn)
					elseif choice == 7 then
					    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_neutral_2/ft/service/merchant/iksar_merchant_service_neutral_2_hail_gm_f2a55e76.mp3", "With these values it's like you're the one committing highway robbery!", "smile", 1611773944, 2658422623, Spawn)
					end
				end
			elseif gender == FEMALE then
			    if EVIL then
				    local choice = math.random(1,4)
					if choice ==  1 then
					    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/service/merchant/iksar_merchant_service_evil_1_hail_gf_7d521aa2.mp3", "Hello! Can I offer you one of our new lifetime extended warranties for any merchandise you purchase? ", "nod", 1919752795, 2899530992, Spawn)
					elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/service/merchant/iksar_merchant_service_evil_1_hail_gf_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 651549003, 3080028152, Spawn)
					elseif choice == 3 then
					    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/service/merchant/iksar_merchant_service_evil_1_hail_gf_d088c20d.mp3", "The stuff is over there. Just let me know if you find anything you like.", "ponder", 539119573, 3458318396, Spawn)
					elseif choice == 4 then
					    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/service/merchant/iksar_merchant_service_evil_1_hail_gf_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 259001786, 3030907314, Spawn)
					end
				end
			end
		elseif race == KERRA then
			if gender == MALE then
			    if EVIL then
				    local choice = math.random(1,3)
					if choice == 1 then
					    PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/service/merchant/kerran_merchant_service_evil_1_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 3095675602, 2704920135, Spawn)
					elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/service/merchant/kerran_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 472349153, 715118612, Spawn)
					elseif choice == 3 then
					    PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/service/merchant/kerran_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 2185780562, 2943504538, Spawn)
					end
				elseif GOOD then
				    local choice = math.random(1,5)
					if choice == 1 then
					    PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_aoi_gm_c5e79ff5.mp3", "Hello there! Can I interest you in some of the finest merchandise this side of Norrath?", "wave", 668610071, 953653133, Spawn)
					elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 1405292242, 1170257111, Spawn)
					elseif choice == 3 then
					    PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 2595040836, 1903894062, Spawn)
					elseif choice == 4 then
					    PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_hail_gm_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 2292395976, 2840814777, Spawn)
					elseif choice == 5 then
					    PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 2438244582, 4033825140, Spawn)
					end
				end
			elseif gender == FEMALE then
			    if EVIL then
				    local choice = math.random(1,3)
					if choice == 1 then
					    PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/service/merchant/kerran_merchant_service_evil_1_hail_gf_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 3601217765, 1034447902, Spawn)
					elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/service/merchant/kerran_merchant_service_evil_1_hail_gf_d088c20d.mp3", "The stuff's over there. Just let me know if you find anything you like.", "ponder", 1023871072, 3866773546, Spawn)
					elseif choice == 3 then
					    PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/service/merchant/kerran_merchant_service_evil_1_hail_gf_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 3574278479, 2910108828, Spawn)
                    end
				elseif GOOD then
				    local choice = math.random(1,5)
					if choice == 1 then
					    PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_aoi_gf_c5e79ff5.mp3", "Hello there! Can I interest you in some of the finest merchandise this side of Norrath?", "wave", 2091371377, 2422178491, Spawn)
					elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_hail_gf_24322c5d.mp3", "Greetings, traveler! We have the finest supplies to fill your adventuring needs.", "smile", 509171300, 3181487898, Spawn)
					elseif choice == 3 then
					    PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_hail_gf_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 2213475197, 3871690614, Spawn)
                    elseif choice == 4 then
					     PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 3487732561, 2995138728, Spawn)
                    elseif choice == 5 then
					    PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/merchant/kerran_merchant_service_good_1_hail_gf_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 591569637, 3640467043, Spawn)
					end
				end
			end
		elseif race == OGRE then
			if gender == MALE then
			    local choice = math.random(1,3)
				if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_1/ft/service/merchant/ogre_merchant_service_evil_1_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 336682108, 2623574882, Spawn)
				elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_1/ft/service/merchant/ogre_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 2869440792, 4241979369, Spawn)
				elseif choice == 3 then
				    PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_1/ft/service/merchant/ogre_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 1831712971, 1100241470, Spawn)
				end			
			elseif gender == FEMALE then
			    local choice = math.random(1,3)
				if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/service/merchant/ogre_merchant_service_evil_1_hail_gf_7d521aa2.mp3", "Hello! Can I offer you one of our new lifetime extended warranties for any merchandise you purchase? ", "nod", 2018881162, 4264523804, Spawn)
				elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/service/merchant/ogre_merchant_service_evil_1_hail_gf_d088c20d.mp3", "The stuff's over there. Just let me know if you find anything you like.", "ponder", 2706816468, 1822386477, Spawn)
				elseif choice == 3 then
				    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/service/merchant/ogre_merchant_service_evil_1_hail_gf_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 1555538408, 3566039549, Spawn)
				end
			end
		elseif race == RATONGA then
			if gender == MALE then
			    if EVIL then
				    local choice = math.random(1,3)
					if choice == 1 then
					    PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/service/merchant/ratonga_merchant_service_evil_1_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 1147153942, 3317877781, Spawn)
					elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/service/merchant/ratonga_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 2902124396, 1772494629, Spawn)
					elseif choice == 3 then
					    PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/service/merchant/ratonga_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 686446071, 58743600, Spawn)
					end
				elseif NEUTRAL then
				    local choice = math.random(1,10)
					if choice == 1 then
					    PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_neutral_2/ft/service/merchant/ratonga_merchant_service_neutral_2_aoi_gm_25771611.mp3", "You won't find these low, low prices in those fancy city shops.", "heckno", 2149352822, 2911965725, Spawn)
					elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_neutral_2/ft/service/merchant/ratonga_merchant_service_neutral_2_aoi_gm_7dc06552.mp3", "I know a discerning shopper when I sees one, and they don't come any sharper than you.", "wink", 1215863828, 1711861063, Spawn)
					elseif choice == 3 then
					    PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_neutral_2/ft/service/merchant/ratonga_merchant_service_neutral_2_hail_gm_1e754634.mp3", "Of course we deliver! I'll just need an address, key, and the times when you won't be home.", "scheme", 3777485038, 22256427, Spawn)
                    elseif choice == 4 then
					    PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_neutral_2/ft/service/merchant/ratonga_merchant_service_neutral_2_hail_gm_29327bd1.mp3", "I have to dump this stuff and move out tonight. Staying one step ahead of my, uh, happy customers.", "lookaway", 3335550471, 3304609329, Spawn)
					elseif choice == 5 then
					    PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_neutral_2/ft/service/merchant/ratonga_merchant_service_neutral_2_hail_gm_48e9f7.mp3", "This merchandise is so hot it's still warm to the touch.", "wince", 1094492990, 4101920657, Spawn)
					elseif choice == 6 then
					    PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_neutral_2/ft/service/merchant/ratonga_merchant_service_neutral_2_hail_gm_589bbb80.mp3", "Satisfaction is guaranteed, with all itemses fully refundable...if you can find me again.", "thumbsup", 1525152162, 4224893930, Spawn)
					elseif choice == 7 then
					    PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_neutral_2/ft/service/merchant/ratonga_merchant_service_neutral_2_hail_gm_670060d5.mp3", "Calm down, friend. Just because this looks like your stolen backpack doesn't mean it is.", "boggle", 1357039195, 2717785315, Spawn)
					elseif choice == 8 then
					    PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_neutral_2/ft/service/merchant/ratonga_merchant_service_neutral_2_hail_gm_8c371df0.mp3", "Don't let these deals slip through your fingers.", "point", 1999119491, 784149819, Spawn)
					elseif choice == 9 then
					     PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_neutral_2/ft/service/merchant/ratonga_merchant_service_neutral_2_hail_gm_e4bce3ad.mp3", "Psst ... I'm cutting you in on the deal of a lifetime.", "agree", 149052487, 2149887402, Spawn)
					elseif choice == 10 then
					    PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_neutral_2/ft/service/merchant/ratonga_merchant_service_neutral_2_hail_gm_f2a55e76.mp3", "With these values it's like you're the one committing highway robbery!", "smile", 763799213, 3232955127, Spawn)
					end
				end
			elseif gender == FEMALE then
			    local choice = math.random(1,7)
				if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_evil_3/ft/service/merchant/ratonga_merchant_service_evil_3_aoi_gf_53388b91.mp3", "Only traitors to the Overlord would pass up a bargain like this. You're not a traitor are you?", "scold", 2288309507, 1188267472, Spawn)
				elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_evil_3/ft/service/merchant/ratonga_merchant_service_evil_3_hail_gf_d088c20d.mp3", "The stuff's over there. Just let me know if you find anything you like.", "ponder", 3740786388, 4176254637, Spawn)
				elseif choice == 3 then
				    PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_evil_3/ft/service/merchant/ratonga_merchant_service_evil_3_hail_gf_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 3460692084, 694864112, Spawn)
				elseif choice == 4 then
				    PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/service/merchant/ratonga_merchant_service_evil_1_aoi_gf_53388b91.mp3", "Only traitors to the Overlord would pass up a bargain like this. You're not a traitor are you?", "scold", 1269771027, 1321830597, Spawn)
				elseif choice == 5 then
				    PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/service/merchant/ratonga_merchant_service_evil_1_hail_gf_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 3896024368, 3267129756, Spawn)
				elseif choice == 6 then
				    PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/service/merchant/ratonga_merchant_service_evil_1_hail_gf_d088c20d.mp3", "The stuff's over there. Just let me know if you find anything you like.", "ponder", 4265688146, 2432877514, Spawn)
				elseif choice == 7 then
				    PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/service/merchant/ratonga_merchant_service_evil_1_hail_gf_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 3557499503, 3758276116, Spawn)
				end
			end
		elseif race == TROLL then
			if gender == MALE then
			    local choice = math.random(1,3)
				if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/service/merchant/troll_merchant_service_evil_1_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 3210835791, 1852025017, Spawn)
                elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/service/merchant/troll_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 2910412337, 3363562860, Spawn)
				elseif choice == 3 then
				    PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/service/merchant/troll_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 3850597068, 627128809, Spawn)
                end
			elseif gender == FEMALE then
			    local choice = math.random(1,3)
				if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/service/merchant/troll_merchant_service_evil_2_hail_gf_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 1199893528, 955414076, Spawn)
				elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/service/merchant/troll_merchant_service_evil_2_hail_gf_d088c20d.mp3", "The stuff's over there. Just let me know if you find anything you like.", "ponder", 1139316257, 3885612978, Spawn)
				elseif choice == 3 then
                    PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/service/merchant/troll_merchant_service_evil_2_hail_gf_f715099e.mp3", "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself! Go ahead, take a look!", "salute_freeport", 1335466174, 672398346, Spawn)
				end
			end
		elseif race == WOOD_ELF then
			if gender == MALE then
			    local choice = math.random(1,4)
				if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/service/merchant/woodelf_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 1759256427, 830987678, Spawn)
				elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/service/merchant/woodelf_merchant_service_good_1_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 46008519, 2252409517, Spawn)
				elseif choice == 3 then
				    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/service/merchant/woodelf_merchant_service_good_1_hail_gm_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 1332319343, 1214035917, Spawn)
				elseif choice == 4 then
				    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/service/merchant/woodelf_merchant_service_good_1_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 2211929083, 2050297502, Spawn)
                end
			elseif gender == FEMALE then
				local choice = math.random(1,5)
				if choice == 1 then
					PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/service/merchant/woodelf_merchant_service_good_1_hail_gf_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 2082169991, 1448634552, Spawn)
				elseif choice == 2 then
					PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/service/merchant/woodelf_merchant_service_good_1_hail_gf_e4fa2bd8.mp3", "Confound it! Where did I put that ledger?  It must be around here somewhere!", "confused", 3534990748, 2443561795, Spawn)
					elseif choice == 3 then
				    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/service/merchant/woodelf_merchant_service_good_1_hail_gf_45d92a75.mp3", "Welcome! What can I help you with?", "hello", 1267417831, 1141829156, Spawn)
				elseif choice == 4 then
				    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/service/merchant/woodelf_merchant_service_good_1_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I garuntee it!", "agree", 4219958914, 147430154, Spawn)
                else
                    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/service/merchant/woodelf_merchant_service_good_1_aoi_gf_c5e79ff5.mp3", "Hello there! Can I interest you in some of the finest merchandise this side of Norrath?", "thank", 2198573345, 3559886028, Spawn)
				end
			end
		elseif race == FAE then
			if gender == MALE then
			elseif gender == FEMALE then
			end
		elseif race == ARASAI then
			if gender == MALE then
			elseif gender == FEMALE then
			end
		elseif race == SARNAK then
			if gender == MALE then
			elseif gender == FEMALE then
			end
		end
	end
end


function GenericDrunkHail(NPC, Spawn, faction)
    race = GetRace(NPC)
    spawnRace = GetRace(Spawn)
	gender = GetGender(NPC)
	local zone = GetZone(NPC)
    if GetZoneID(zone) >= 220 and GetZoneID(zone) <= 238 then
	    GOOD = true
	elseif GetZoneID(zone) == 207 then
	    GOOD = true
	elseif GetZoneID(zone) >= 195 and GetZoneID(zone) <= 198 then
	    GOOD = true
	elseif GetZoneID(zone) == 589 or GetZoneID(zone) == 660 then
	    GOOD = true
	elseif GetZoneID(zone) == 470 then
	    GOOD = true
	elseif GetZoneID(zone) == 45 then
	    NEUTRAL = true
	elseif GetZoneID(zone) >= 124 and GetZoneID(zone) <= 128 then
	    EVIL = true
	elseif GetZoneID(zone) >= 134 and GetZoneID(zone)<= 168 then
	    EVIL = true
	end
	if race >= 0 and race <= 18 and gender >= 1 and gender <= 2 then	
    if race == DWARF then
    	if gender == MALE then
    	elseif gender == FEMALE then
	    local choice = math.random(1,3)
                if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_drunk/ft/eco/good/dwarf_eco_good_drunk_hail_gf_1631fc78.mp3", "Ah, leave me be.  I'm not causing any trouble, I'm not.", "no", 3303685788, 2740455306, Spawn)
                elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_drunk/ft/eco/good/dwarf_eco_good_drunk_hail_gf_622bfa69.mp3", "What do you mean you drank more than I did?", "boggle", 111203762, 4247886533, Spawn)
                 elseif choice == 3 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_drunk/ft/eco/good/dwarf_eco_good_drunk_hail_gf_965fb709.mp3", "Oooh... I don't feel so good.", "gag", 1889801810, 1474795050, Spawn)
                end
    	    end 
    	end    
    elseif race == HUMAN then
        if gender == MALE then
    	elseif gender == FEMALE then
  
    	end 
    end	    
end	


function GenericDrunkCallout(NPC, Spawn, faction)
    race = GetRace(NPC)
    spawnRace = GetRace(Spawn)
	gender = GetGender(NPC)
	local zone = GetZone(NPC)
    if GetZoneID(zone) >= 220 and GetZoneID(zone) <= 238 then
	    GOOD = true
	elseif GetZoneID(zone) == 207 then
	    GOOD = true
	elseif GetZoneID(zone) >= 195 and GetZoneID(zone) <= 198 then
	    GOOD = true
	elseif GetZoneID(zone) == 589 or GetZoneID(zone) == 660 then
	    GOOD = true
	elseif GetZoneID(zone) == 470 then
	    GOOD = true
	elseif GetZoneID(zone) == 45 then
	    NEUTRAL = true
	elseif GetZoneID(zone) >= 124 and GetZoneID(zone) <= 128 then
	    EVIL = true
	elseif GetZoneID(zone) >= 134 and GetZoneID(zone)<= 168 then
	    EVIL = true
	end
	if race >= 0 and race <= 18 and gender >= 1 and gender <= 2 then	
    if race == DWARF then
    	if gender == MALE then
    	elseif gender == FEMALE then
	    local choice = math.random(1,3)
				if choice == 1 then
					PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_drunk/ft/eco/good/dwarf_eco_good_drunk_barmaid_gf_605d472a.mp3", "I could use another ale for the road anytime now.", "hello", 3896761363, 1121187529, Spawn)
				elseif choice == 2 then
					PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_drunk/ft/eco/good/dwarf_eco_good_drunk_barmaid_gf_a1d96f41.mp3", "My stein doesn't hasn't any legs to walk over and fill itself up.", "tap", 3669594198, 1736543032, Spawn)
				elseif choice == 3 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_drunk/ft/eco/good/dwarf_eco_good_drunk_barmaid_gf_b8fda61c.mp3", "I could use another ale over here.  My stien is more than half empty!", "", 2128288039, 1278709714, Spawn)
				end
    	end 
    elseif race == HUMAN then
        if gender == MALE then
    	elseif gender == FEMALE then
    	    
    	    
    	end 
    end	    
    end	
end