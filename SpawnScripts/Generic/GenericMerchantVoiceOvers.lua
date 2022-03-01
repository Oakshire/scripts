--[[
	Script Name	: SpawnScripts/Generic/GenericMerchantVoiceOvers.lua
	Script Purpose	: Handles the generic hails for merchants.
	Script Author	: Scatman (finished by theFoof)
	Script Date	: 2009.10.03  (2013.5.23)
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

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericMerchantHail(NPC, Spawn, faction)
end

function GenericMerchantHail(NPC, Spawn, faction)
    race = GetRace(NPC)
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
				end
			elseif gender == FEMALE then
			    if GOOD then
				    local choice = math.random(1,5)
				    if choice == 1 then
				        PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_good_1/ft/service/merchant/barbarian_merchant_service_good_1_aoi_gf_c5e79ff5.mp3", "Hello there! Can I interest you in some of the finest merchandise this side of Norrath?", "wave", 1536664189, 3665435010, Spawn)
				    elseif choice == 2 then
				        PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_good_1/ft/service/merchant/barbarian_merchant_service_good_1_hail_gf_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 3015552699, 2771723491, Spawn)
				    elseif choice == 3 then
				        PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_good_1/ft/service/merchant/barbarian_merchant_service_good_1_hail_gf_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 2063097698, 2494171847, Spawn)
				    elseif choice == 4 then
				        PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_good_1/ft/service/merchant/barbarian_merchant_service_good_1_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 1501437320, 1208713152, Spawn)
				    elseif choice == 5 then
				        PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_good_1/ft/service/merchant/barbarian_merchant_service_good_1_hail_gf_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 2483059399, 3985999050, Spawn)
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
			    local choice = math.random(1,4)
			    if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/merchant/dwarf_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies, right before ya, to fill your adventuring needs.", "smile", 2986424867, 2267649224, Spawn)
			    elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/merchant/dwarf_merchant_service_good_1_hail_gm_45d92a75.mp3", "Welcome! What is it I can help you with?", "bow", 3654607078, 2614139251, Spawn)
				elseif choice == 3 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/merchant/dwarf_merchant_service_good_1_hail_gm_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 2230797709, 3854601007, Spawn)
                elseif choice == 4 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/merchant/dwarf_merchant_service_good_1_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 2160906698, 176729787, Spawn)
				end
			elseif gender == FEMALE then
			    local choice = math.random(1,4)
				if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/merchant/dwarf_merchant_service_good_1_hail_gf_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 2158784304, 1517987989, Spawn)
				elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/merchant/dwarf_merchant_service_good_1_hail_gf_45d92a75.mp3", "Welcome! What is it I can help you with?", "bow", 578929529, 647853, Spawn)
				elseif choice == 3 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/merchant/dwarf_merchant_service_good_1_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "wink", 2476632966, 344262300, Spawn)
                elseif choice == 4 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/merchant/dwarf_merchant_service_good_1_hail_gf_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 3245529092, 259619326, Spawn)
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
