--[[
	Script Name	: SpawnScripts/Generic/GenericGuardVoiceOvers.lua
	Script Purpose	: Handles the generic hails for guards.
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: 
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

local QEYNOS = 11
local FREEPORT = 12

function GenericGuardHail(NPC, Spawn, Faction)
	if NPC ~= nil then
		local race = GetRace(NPC)
		local gender = GetGender(NPC)
                local faction = GetFactionID(NPC)
		
		if race >= 0 and race <= 18 and gender >= 1 and gender <= 2 then
			local file_option = math.random(1, 3)
			local file_race_gender = 0
			if race == BARBARIAN then
				if gender == MALE then
					local choice = math.random(1, 4)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/guard/barbarian_guard_service_good_1_hail_gm_76da37c9.mp3", "I hate working this shift! If the gnolls don't attack now, I may die of boredom.", "grumble", 174236481, 4250389478, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/guard/barbarian_guard_service_good_1_hail_gm_c865a827.mp3", "Duty above all else citizen, except honor!", "scold", 3650321797, 745843450, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/guard/barbarian_guard_service_good_1_hail_gm_ebfceda5.mp3", "Greetings, citizen. I am on guard duty. Should you get into trouble, seek me out.", "attention", 2588751132, 3401521310, Spawn)
					elseif choice == 4 then
						PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/guard/barbarian_guard_service_good_1_hail_gm_ee473c11.mp3", "Good day to you, citizen. All preserve Queen Antonia.", "salute", 2268064933, 2349331472, Spawn)
					end
				elseif gender == FEMALE then
				end
			elseif race == DARK_ELF then
				if gender == MALE then
					local choice = math.random(1, 4)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/guard/darkelf_guard_service_evil_1_hail_gm_582205e1.mp3", "Do you have business with the Freeport Militia?", "glare", 3330899926, 205777100, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/guard/darkelf_guard_service_evil_1_hail_gm_7fa14d4.mp3", "Do not challenge my authority citizen. In Freeport, the Overlord's word is law!", "scold", 3071777755, 1811086423, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/guard/darkelf_guard_service_evil_1_hail_gm_870ae3cb.mp3", "The Overlord commands me to patrol this area, and so I must.", "tapfoot", 3455786340, 1963116786, Spawn)
					elseif choice == 4 then
						PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/guard/darkelf_guard_service_evil_1_hail_gm_edb196f8.mp3", "All praises to the Overlord. The Militia protects loyal citizens of Freeport.", "salute_freeport", 3432620709, 3039361332, Spawn)
					end
				elseif gender == FEMALE then
					local choice = math.random(1, 4)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/guard/darkelf_guard_service_evil_1_hail_gf_582205e1.mp3", "Do you have business with the Freeport Militia?", "glare", 2007336774, 276021764, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/guard/darkelf_guard_service_evil_1_hail_gf_7fa14d4.mp3", "Do not challenge my authority citizen. In Freeport, the Overlord's word is law!", "scold", 2216401374, 2200952527, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/guard/darkelf_guard_service_evil_1_hail_gf_e6d19328.mp3", "The Overlord commands me to work the night shift and so I must accept.", "tapfoot", 1941665390, 4180571964, Spawn)
					elseif choice == 4 then
						PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/guard/darkelf_guard_service_evil_1_hail_gf_edb196f8.mp3", "All praises to the Overlord. The Militia protects loyal citizens of Freeport.", "salute_freeport", 1432151232, 2291117299, Spawn)
					end
				end
			elseif race == DWARF then
				if gender == MALE then
					local choice = math.random(1, 4)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/guard/dwarf_guard_service_good_1_hail_gm_76da37c9.mp3", "I hate working this shift! If the gnolls don't attack now I may die of boredom.", "grumble", 31199107, 4082603014, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/guard/dwarf_guard_service_good_1_hail_gm_c865a827.mp3", "Duty above all else citizen, except honor!", "scold", 3958491070, 1651361777, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/guard/dwarf_guard_service_good_1_hail_gm_ebfceda5.mp3", "Greetings, citizen. I am on guard duty. Should you get into trouble, seek me out.", "attention", 1717559969, 1730005307, Spawn)
					elseif choice == 4 then
						PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/guard/dwarf_guard_service_good_1_hail_gm_ee473c11.mp3", "Good day to you citizen, all preserve Queen Antonia.", "salute", 2539353309, 3288832983, Spawn)
					end	
				elseif gender == FEMALE then
					local choice = math.random(1, 4)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/guard/dwarf_guard_service_good_1_hail_gf_c865a827.mp3", "Duty above all else citizen, except honor!", "scold", 2599283605, 3661394128, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/guard/dwarf_guard_service_good_1_hail_gf_ebfceda5.mp3", "Greetings, citizen. I am on guard duty. Should you get into trouble, seek me out.", "attention", 3116918998, 1333985272, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/guard/dwarf_guard_service_good_1_hail_gf_ed0d92f8.mp3", "I hate the night shift! If the gnolls don't attack now I may die of boredom.", "grumble", 2490266027, 3636789093, Spawn)
					elseif choice == 4 then
						PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/guard/dwarf_guard_service_good_1_hail_gf_ee473c11.mp3", "Good day to you citizen, all preserve Queen Antonia.", "salute", 3457944783, 4136040635, Spawn)
					end
				end
			elseif race == ERUDITE then
				if gender == MALE then
				local choice = math.random(1, 4)
					local choice = math.random(1, 4)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/guard/highelf_guard_service_good_1_hail_gm_76da37c9.mp3", "I hate working this shift! If the gnolls don't attack now, I may die of boredom.", "grumble", 3586563752, 1865874525, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/guard/highelf_guard_service_good_1_hail_gm_c865a827.mp3", "Duty above all else, citizen, except honor!", "scold", 739074204, 2925833259, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/guard/highelf_guard_service_good_1_hail_gm_ebfceda5.mp3", "Greetings, citizen. I am on guard duty. Should you get into trouble, seek me out.", "attention", 3027655540, 4120709915, Spawn)
					elseif choice == 4 then
						PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/guard/highelf_guard_service_good_1_hail_gm_ee473c11.mp3", "Good day to you, citizen. All preserve Queen Antonia.", "salute", 2088886924, 3736631596, Spawn)
					end
				elseif gender == FEMALE then
					local choice = math.random(1, 4)
					if choice == 1 then
						PlayFlavor(NPC, "", "Duty above all else citizen, except honor!", "scold", 1689589577, 4560189, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "", "Good day to you citizen, all preserve Queen Antonia.", "salute", 1689589577, 4560189, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/optional2/highelf_eco_good_1/ft/service/guard/highelf_guard_service_good_1_hail_gf_d7fdb65.mp3", "Greetings, citizen. I am on guard duty. Should you get into trouble, seek me out.", "attention", 2772203714, 1169089481, Spawn)
					elseif choice == 4 then
						PlayFlavor(NPC, "voiceover/english/optional2/highelf_eco_good_1/ft/service/guard/highelf_guard_service_good_1_hail_gf_9e30d7b1.mp3", "I hate the night shift! If the gnolls don't attack now, I may die of boredom.", "grumble", 1243870883, 2445109433, Spawn)
					end
				end
			elseif race == FROGLOK then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == GNOME then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == HALF_ELF then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == HALFLING then
				if gender == MALE then
					local choice = math.random(1, 10)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_aoi_gm_89ed3363.mp3", "Wonderful, more troublesome adventurers in the city. ", "sarcasm", 3296911201, 4000062691, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_aoi_gm_fea5fead.mp3", "The world is round. It's round I say, as well it should be!", "curse", 4205711950, 2062936277, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_1e924418.mp3", "Hail and welcome to the city, friend!", "hello", 3400282816, 2842293637, Spawn)
					elseif choice == 4 then
						PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_50622dfa.mp3", "Whoa, hello there! Eager and in a hurry I see. My advice, take your time. The city isn't going anywhere.", "wave", 2627404831, 2664895493, Spawn)
					elseif choice == 5 then
						PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_75c0e97c.mp3", "Welcome to the city, adventurer. Be mindful of the peace and quiet. Here in Qeynos, we value our privacy.", "bow", 1955296899, 2249687997, Spawn)
					elseif choice == 6 then
						PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_7d33c817.mp3", "Nice weather we're having. Should make for a good harvest this season, if it holds up.", "nod", 3022454580, 2853198849, Spawn)
					elseif choice == 7 then
						PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_b44f103.mp3", "Ah good, another refugee in the city. I hope you're not a worthless lay about! We don't abide apathy here.", "glare", 516875735, 233361227, Spawn)
					elseif choice == 8 then
						PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_cf902b40.mp3", "Get on now! There's plenty of work to be done. Maybe you should lend a hand, if you feel up to it.", "stare", 1396062221, 310311489, Spawn)
					elseif choice == 9 then
						PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_d79063bf.mp3", "Ahhhhh, that's what I love about Qeynos. So many bakeries and so many pies!", "scheme", 894976267, 1675938925, Spawn)
					elseif choice == 10 then
						PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_f657192c.mp3", "Nostalgia isn't what it used to be.", "sigh", 2017572665, 1813639796, Spawn)
					end
				elseif gender == FEMALE then
				end
			elseif race == HIGH_ELF then
				if gender == MALE then
					local choice = math.random(1, 4)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/guard/highelf_guard_service_good_1_hail_gm_76da37c9.mp3", "I hate working this shift! If the gnolls don't attack now, I may die of boredom.", "grumble", 3586563752, 1865874525, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/guard/highelf_guard_service_good_1_hail_gm_c865a827.mp3", "Duty above all else, citizen, except honor!", "scold", 739074204, 2925833259, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/guard/highelf_guard_service_good_1_hail_gm_ebfceda5.mp3", "Greetings, citizen. I am on guard duty. Should you get into trouble, seek me out.", "attention", 3027655540, 4120709915, Spawn)
					elseif choice == 4 then
						PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/guard/highelf_guard_service_good_1_hail_gm_ee473c11.mp3", "Good day to you, citizen. All preserve Queen Antonia.", "salute", 2088886924, 3736631596, Spawn)
					end
				elseif gender == FEMALE then
					local choice = math.random(1, 2)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/optional2/highelf_eco_good_1/ft/service/guard/highelf_guard_service_good_1_hail_gf_9e30d7b1.mp3", "I hate the night shift! If the gnolls don't attack now, I may die of boredom.", "grumble", 1243870883, 2445109433, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/optional2/highelf_eco_good_1/ft/service/guard/highelf_guard_service_good_1_hail_gf_d7fdb65.mp3", "Greetings, citizen. I am on guard duty. Should you get into trouble, seek me out.", "attention", 2772203714, 1169089481, Spawn)
					end
				end
			elseif race == HUMAN then
				if gender == MALE then
					if faction == 102 then   -- Freeport Militia
						local choice = math.random(1, 4)
						if choice == 1 then
							PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gm_582205e1.mp3", "Do you have business with the Freeport Militia?", "glare", 3265760930, 1055342916, Spawn)
						elseif choice == 2 then
							PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gm_7fa14d4.mp3", "Do not challenge my authority citizen. In Freeport, the Overlord's word is law!", "scold", 1744928325, 2718395831, Spawn)
						elseif choice == 3 then
							PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gm_870ae3cb.mp3", "The Overlord commands me to patrol this area, and so I must.", "tapfoot", 1281050619, 1758539799, Spawn)
						elseif choice == 4 then
							PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gm_edb196f8.mp3", "All praises to the Overlord. The Militia protects loyal citizens of Freeport.", "salute_freeport", 1906726944, 247472694, Spawn)
						end
					else
						local choice = math.random(1, 4)
						if choice == 1 then
							PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gm_76da37c9.mp3", "I hate working this shift! If the gnolls don't attack now, I may die of boredom.", "grumble", 4099618783, 4191002419, Spawn)
						elseif choice == 2 then
							PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gm_c865a827.mp3", "Duty above all else, citizen, except honor!", "scold", 4141262779, 4227030045, Spawn)
						elseif choice == 3 then
							PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gm_ebfceda5.mp3", "Greetings, citizen. I am on guard duty. Should you get into trouble, seek me out.", "attention", 1945337199, 2685949436, Spawn)
						elseif choice == 4 then
							PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gm_ee473c11.mp3", "Good day to you, citizen. All preserve Queen Antonia.", "salute", 2997871263, 2912813719, Spawn)
						end
					end
				elseif gender == FEMALE then
					if faction == 102 then   -- Freeport Militia
						local choice = math.random(1, 4)
						if choice == 1 then
							PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gf_582205e1.mp3", "Do you have business with the Freeport Militia?", "glare", 2697294413, 370291658, Spawn)
						elseif choice == 2 then
							PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gf_7fa14d4.mp3", "Do not challenge my authority citizen. In Freeport, the Overlord's word is law!", "scold", 1888277290, 873721758, Spawn)
						elseif choice == 3 then
							PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gf_e6d19328.mp3", "The Overlord commands me to work the night shift and so I must accept.", "tapfoot", 3462302836, 3625333695, Spawn)
						else
							PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/service/guard/human_guard_service_evil_1_hail_gf_edb196f8.mp3", "All praises to the Overlord. The Militia protects loyal citizens of Freeport.", "salute_freeport", 1662524531, 242648132, Spawn)
						end
					else
						local choice = math.random(1, 4)
						if choice == 1 then
							PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gf_c865a827.mp3", "Duty above all else, citizen, except honor!", "scold", 373851625, 467562033, Spawn)
						elseif choice == 2 then
							PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gf_ebfceda5.mp3", "Greetings, citizen. I am on guard duty. Should you get into trouble, seek me out.", "attention", 3448203562, 506341016, Spawn)
						elseif choice == 3 then
							PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gf_ed0d92f8.mp3", "I hate the night shift! If the gnolls don't attack now, I may die of boredom.", "grumble", 1226814424, 706962620, Spawn)
						elseif choice == 4 then
							PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gf_ee473c11.mp3", "Good day to you, citizen. All preserve Queen Antonia.", "salute", 1886617373, 1115286759, Spawn)
						end
					end
				end
			elseif race == IKSAR then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == KERRA then
				if gender == MALE then
					local choice = math.random(1, 4)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/guard/barbarian_guard_service_good_1_hail_gm_76da37c9.mp3", "I hate working this shift! If the gnolls don't attack now, I may die of boredom.", "grumble", 174236481, 4250389478, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/guard/barbarian_guard_service_good_1_hail_gm_c865a827.mp3", "Duty above all else citizen, except honor!", "scold", 3650321797, 745843450, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/guard/barbarian_guard_service_good_1_hail_gm_ebfceda5.mp3", "Greetings, citizen. I am on guard duty. Should you get into trouble, seek me out.", "attention", 2588751132, 3401521310, Spawn)
					elseif choice == 4 then
						PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/guard/barbarian_guard_service_good_1_hail_gm_ee473c11.mp3", "Good day to you, citizen. All preserve Queen Antonia.", "salute", 2268064933, 2349331472, Spawn)
					end
				elseif gender == FEMALE then
				end
			elseif race == OGRE then
				if gender == MALE then
					local choice = math.random(1, 4)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/service/guard/ogre_guard_service_evil_1_hail_gm_582205e1.mp3", "Do you have business with the Freeport Militia?", "glare", 423300132, 829337329, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/service/guard/ogre_guard_service_evil_1_hail_gm_7fa14d4.mp3", "Do not challenge my authority citizen. In Freeport, the Overlord's word is law!", "scold", 606354622, 1657703048, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/service/guard/ogre_guard_service_evil_1_hail_gm_870ae3cb.mp3", "The Overlord commands me to patrol this area, and so I must.", "tapfoot", 3898592844, 3023882159, Spawn)
					elseif choice == 4 then
						PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/service/guard/ogre_guard_service_evil_1_hail_gm_edb196f8.mp3", "All praises to the Overlord. The Militia protects loyal citizens of Freeport.", "salute_freeport", 2290537918, 776957565, Spawn)
					end
				elseif gender == FEMALE then
					local choice = math.random(1, 3)
					if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/service/guard/ogre_guard_service_evil_1_hail_gf_7fa14d4.mp3", "Do not challenge my authority citizen. In Freeport, the Overlord's word is law!", "scold", 2981239011, 830472688, Spawn)
					elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/service/guard/ogre_guard_service_evil_1_hail_gf_e6d19328.mp3", "The Overlord commands me to work the night shift and so I must accept.", "tapfoot", 3190713491, 83008289, Spawn)
					elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/service/guard/ogre_guard_service_evil_1_hail_gf_edb196f8.mp3", "All praises to the Overlord. The Militia protects loyal citizens of Freeport.", "salute_freeport", 2650311659, 1056157406, Spawn)
					end
				end
			elseif race == RATONGA then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == TROLL then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == WOOD_ELF then
				if gender == MALE then
				elseif gender == FEMALE then
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
end

function CheckFaction(NPC, Spawn, City)
	if NPC ~= nil and Spawn ~= nil and City ~= nil then
		faction_amount = 0
		if City == "Qeynos" then
			faction_amount = GetFactionAmount(Spawn, QEYNOS)
		elseif City == "Freeport" then
			faction_amount = GetFactionAmount(Spawn, FREEPORT)
		end
		if faction_amount >= 40000 then
--			FaceTarget(NPC, Spawn)
			PlayFlavor(NPC, "", "", "cheer", 0, 0, Spawn)
			SendMessage(Spawn, GetName(NPC) .. " cheers at you.")
		elseif faction_amount >= 30000 then
--			FaceTarget(NPC, Spawn)
			PlayFlavor(NPC, "", "", "salute", 0, 0, Spawn)
			SendMessage(Spawn, GetName(NPC) .. " salutes you.")
		elseif faction_amount <= -20000 then
			--FaceTarget(NPC, Spawn)
			--PlayFlavor(NPC, "", "", "cheer", 0, 0, Spawn)
			SendMessage(Spawn, GetName(NPC) .. " scowls at you.")
		end
end
end


function aggro(NPC, Spawn, Faction)
	if NPC ~= nil then
		local race = GetRace(NPC)
		local gender = GetGender(NPC)
                local faction = GetFactionID(NPC)
		
		if race >= 0 and race <= 18 and gender >= 1 and gender <= 2 then
			local file_option = math.random(1, 3)
			local file_race_gender = 0
			if race == BARBARIAN then
				if gender == MALE then
						PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/guard/barbarian_guard_service_good_1_kill_gm_2b7f45ad.mp3", "For the glory of Qeynos!", "", 1804495775, 3807708128)
				elseif gender == FEMALE then
						PlayFlavor(NPC, "", "For the glory of Qeynos!", "", 565962733, 3617633467, Spawn)
				end
				
			elseif race == DARK_ELF then
				if gender == MALE then
					    PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/guard/darkelf_guard_service_evil_1_kill_gm_1ec6eff4.mp3", "Death to the enemies of Lucan!", "", 4030922503, 1352663696, Spawn)
				elseif gender == FEMALE then
					local choice = math.random(1, 4)
					    PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/guard/darkelf_guard_service_evil_1_kill_gf_1ec6eff4.mp3", "Death to the enemies of Lucan!", "", 4030922503, 1352663696, Spawn)
				end
		
		    elseif race == DWARF then
				if gender == MALE then
						PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/guard/dwarf_guard_service_good_1_kill_gm_2b7f45ad.mp3", "For the glory of Qeynos!", "", 1964289468, 4158765460)
				elseif gender == FEMALE then
				    end
				    
				    
			elseif race == ERUDITE then
				if gender == MALE then
				local choice = math.random(1, 4)
					local choice = math.random(1, 4)
						PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/guard/highelf_guard_service_good_1_hail_gm_76da37c9.mp3", "I hate working this shift! If the gnolls don't attack now, I may die of boredom.", "grumble", 3586563752, 1865874525, Spawn)

				elseif gender == FEMALE then
					local choice = math.random(1, 4)
						PlayFlavor(NPC, "", "For the glory of Qeynos!", "", 0, 0, Spawn)
                end
			elseif race == FROGLOK then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == GNOME then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == HALF_ELF then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == HALFLING then
				if gender == MALE then
						PlayFlavor(NPC, "", "For the glory of Qeynos!", "", 1964289468, 4158765460)

				elseif gender == FEMALE then
				end
			elseif race == HIGH_ELF then
				if gender == MALE then

						PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/guard/highelf_guard_service_good_1_kill_gm_2b7f45ad.mp3", "For the glory of Qeynos!", "", 565962733, 3617633467, Spawn)

				elseif gender == FEMALE then
						PlayFlavor(NPC, "", "For the glory of Qeynos!", "", 565962733, 3617633467, Spawn)
				end
			elseif race == HUMAN then
				if gender == MALE then
					if faction == 102 then   -- Freeport Militia
					    PlayFlavor(NPC, "", "Death to the enemies of Lucan!", "", 0, 0, Spawn)
					else

						PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_kill_gm_2b7f45ad.mp3", "For the glory of Qeynos!", "", 1601992673, 279003315, Spawn)

					end
				elseif gender == FEMALE then
					if faction == 102 then   -- Freeport Militia
					    PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/guard/darkelf_guard_service_evil_1_kill_gf_1ec6eff4.mp3", "Death to the enemies of Lucan!", "", 4030922503, 1352663696, Spawn)
					else
						PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_kill_gf_2b7f45ad.mp3", "For the glory of Qeynos!", "", 2825851367, 3848266464, Spawn)
					end
				end
			elseif race == IKSAR then
				if gender == MALE then
					    PlayFlavor(NPC, "", "Death to the enemies of Lucan!", "", 0, 0, Spawn)
				elseif gender == FEMALE then
					    PlayFlavor(NPC, "", "Death to the enemies of Lucan!", "", 0, 0, Spawn)
				end
			elseif race == KERRA then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == OGRE then
				if gender == MALE then

					    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/service/guard/ogre_guard_service_evil_1_kill_gm_1ec6eff4.mp3", "Death to the enemies of Lucan!", "", 2168677813, 2813485230, Spawn)

				elseif gender == FEMALE then
					    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/service/guard/ogre_guard_service_evil_1_kill_gf_1ec6eff4.mp3", "Death to the enemies of Lucan!", "", 2364849445, 1235109620, Spawn)

				end
			elseif race == RATONGA then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == TROLL then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == WOOD_ELF then
				if gender == MALE then
						PlayFlavor(NPC, "", "For the glory of Qeynos!", "", 565962733, 3617633467, Spawn)
				elseif gender == FEMALE then
						PlayFlavor(NPC, "", "For the glory of Qeynos!", "", 565962733, 3617633467, Spawn)
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
end






