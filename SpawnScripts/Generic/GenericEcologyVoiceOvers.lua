--[[
    Script Name    : SpawnScripts/Generic/GenericEcologyVoiceOvers.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.12 04:03:04
    Script Purpose : For City Based/Race Based Voiceover Callouts - Improves Zone ecology/immersion/atmosphere. File facilitates ALL generic flavor hails/callouts if they exist. 
               
               Note: VERIFY YOUR DESIRED RACE/GENDER/FACTION HAS VOs (We are missing many here)
                     THIS FILE IS A LIBRARY OF ALL KNOWN ECOLOGY/FLAVOR NPC VOICEOVERS  
                     
         Reference: dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

         Functions: GenericEcologyHail(NPC, Spawn, faction)         for basic hails  
                    GenericEcologyCallout(NPC, Spawn, faction)      basic hails for nearby players  
                    
                    GenericEcology2Hail(NPC, Spawn, faction)        Alternate voices for basic hails (Limited race selection)
                    GenericEcology2Callout(NPC, Spawn, faction)     Alternate basic hails for nearby players  

                    GenericRaceCheckHail(NPC, Spawn, faction)       racial-hails      
                    GenericRaceCheckCallout(NPC, Spawn, faction)    racial-hails for nearby players 

                    FactionChecking(NPC, Spawn, faction)            handles Non-citizen based responses (INCLUDED IN GENERIC HAILS ABOVE)
                    FactionCheckingCallout(NPC, Spawn, faction)     handles Non-citizen based hails for nearby players (INCLUDED IN GENERIC CALLOUTS ABOVE)
 
                    GoodFactionEmotes(NPC, Spawn, faction)          emotes for NPCs to give to opposing faction players
                    EvilFactionEmotes(NPC, Spawn, faction)          emotes for NPCs to give to opposing faction players
                    
                    GenericDrunkHail(NPC, Spawn, faction)           bar/drunk hails - Only Dwarves/Humans
                    GenericDrunkCallout(NPC, Spawn, faction)        bar drunk callout - Only Dwarves/Humans

                    EcologyEmotes(NPC,Spawn)                        collection of random emotes to be used for flavor npcs

                    For Garbled Racial Language, consult dofile("SpawnScripts/Generic/UnknownLanguage.lua")
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

local TimeCheck = false                                                       -- used to delay between hail uses
local CalloutTimeCheck = false                                                -- used to delay between callout uses
local FactionCalloutTimeCheck = false                                         -- used to delay between non-citizen callout uses

function ResetTimer(NPC)                                                      -- resets hail timer after initial use
   TimeCheck = false 
end

function ResetCalloutTimer(NPC)                                               -- resets callout timer after use
   CalloutTimeCheck = false 
end

function ResetFactionCalloutTimer(NPC)                                        -- resets non-citizen callout timer after use
   FactionCalloutTimeCheck = false 
end

-------------------------------------------------------------------------------------------

--                                  GenericEcologyHail

-------------------------------------------------------------------------------------------

function GenericEcologyHail(NPC, Spawn, faction)
    race = GetRace(NPC)
    spawnRace = GetRace(Spawn)
	gender = GetGender(NPC)
	Qfaction = GetFactionAmount(Spawn,11)
	FPfaction = GetFactionAmount(Spawn,12)
	local zone = GetZone(NPC)
	if GetZoneID(zone) >= 220 and GetZoneID(zone) <= 238 then                -- clarifies which zone is designated EVIL or GOOD
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
	
	if TimeCheck == false then                                              -- checks timer
     TimeCheck = true                                                        -- turns on timer to stop player spamming
	AddTimer(NPC,2000,"ResetTimer")                                         -- starts reset clock
	if race >= 0 and race <= 18 and gender >= 1 and gender <= 2 then        -- verifies NPC race/gender fits expected

		if race == BARBARIAN then                                           -- begins NPC race check
			if gender == MALE then                                          -- begins NPC gender check
			    if EVIL then                                                -- begins NPC faction/location check
			    elseif GOOD then                                        --SEE GenericRaceCheckHail FOR MALE BARBARIAN & GenericEcology2Hail FOR EVIL
				end   
			elseif gender == FEMALE then                                
			    if GOOD then                                                
			        if Qfaction <0 then                                     -- checks if player is a citizen
                    FactionChecking(NPC, Spawn, faction)
				    else                                                    -- player is citizen and is hailed
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
				end
			    elseif EVIL then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else    
				    local choice = math.random(1,7)				    
				    if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/barbarian/barbarian_eco_evil_1_hail_gf_56e1abc5.mp3", "Don't worry, the last time I killed someone was a few months ago.  I've almost forgotten how its done.", "nod", 4284816178, 1371321884, Spawn)
				    elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/barbarian/barbarian_eco_evil_1_hail_gf_6b05425a.mp3", "Don't try to make a lady out of me, and I won't try to make a lady out of you!", "hello", 3198450351, 218140189, Spawn)
				    elseif choice == 3 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/barbarian/barbarian_eco_evil_1_hail_gf_7c898040.mp3", "If I wanted to speak with riffraff like you, you'd know it!", "glare", 655386949, 2487090829, Spawn)
				    elseif choice == 4 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/barbarian/barbarian_eco_evil_1_hail_gf_7cbbffe9.mp3", "I wonder how fast you can run with one leg?", "threaten", 466422573, 1844554045, Spawn)
				    elseif choice == 5 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/barbarian/barbarian_eco_evil_1_hail_gf_7d00f821.mp3", "All those rumors about the people I decapitated are false.  Trust me, I've decapitated many more by my count.", "cutthroat", 3428354992, 3197307307, Spawn)
				    elseif choice == 6 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/barbarian/barbarian_eco_evil_1_hail_gf_af792eb2.mp3", "Did you just speak to me?  You're braver than most.", "boggle", 2586690724, 2745188740, Spawn)
				    elseif choice == 7 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/barbarian/barbarian_eco_evil_1_hail_gf_c76c11b.mp3", "No, I didn't say you could look at me or talk to me for that matter.", "no", 1570018463, 964886476, Spawn)
				    end
	    	    end
		    end
		end    
		
		elseif race == DARK_ELF then
			if gender == MALE then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else    
			    local choice = math.random(1,6)
	               if choice == 1 then
		           PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_hail_gm_10f790b8.mp3", "I refuse to be told what to do by simple-minded buffoons!", "no", 2790459232, 1613438336, Spawn)
	               elseif choice == 2 then
		           PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_aoi_gm_23e14704.mp3", "Show your enemies the mercy they deserve: none.", "cutthroat", 2402174307, 2763960224, Spawn)
	               elseif choice == 3 then
		           PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_hail_gm_beeaa42c.mp3", "I would never raise a hand to one below my station.  That's what servants are for.", "wink", 3973342937, 4016890574, Spawn)
	               elseif choice == 4 then
	               PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_hail_gm_ad69e774.mp3", "I despise low-born scum such as you.  Leave me be.", "bye", 917481981, 3977919007, Spawn)
	               elseif choice == 5 then
	               PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_hail_gm_dbd2dbd4.mp3", "Once there was a time when we Teir'Dal were the true masters of Norrath.", "shakefist", 1359499264, 3477163471, Spawn)
	               elseif choice == 6 then
	               PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_hail_gm_ca32ae36.mp3", "I'm sorry.  I haven't any coins for beggers and vagabonds.", "chuckle", 2407101866, 844577329, Spawn)
	               elseif choice == 7 then
		           PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_aoi_gm_308706a0.mp3", "Avert your eyes as I pass, commoner.", "stare", 1301519959, 1375374312, Spawn)
	               elseif choice == 8 then
		           PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_hail_gm_4b8a95bb.mp3", "Things would be much different around here if the Tier'Dal were in power.", "threaten", 3258431623, 3729254237, Spawn)
	               elseif choice == 9 then
		           PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_hail_gm_6d109e97.mp3", "Why do you insist fouling the air with your presence?", "stinky", 2438932566, 2309988451, Spawn)
	               elseif choice == 10 then
		           PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_hail_gm_331c223b.mp3", "Pardon me, but you have mistaken me for someone who cares.", "glare", 385905158, 3095457959, Spawn)
	              		              		              	              		         
		          end
	            end

		elseif gender == FEMALE then
			    	if FPfaction <0 then
                        FactionChecking(NPC, Spawn, faction)
				    else
	           local choice = math.random(1,5)

	                if choice == 1 then
                    PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_aoi_gf_e557f427.mp3", "Anyone who dares to disagree with me will feel the taste of my steel.", "threaten", 1814321919, 1558985390, Spawn)
                	elseif choice == 2 then
                	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_hail_gf_8a6fa526.mp3", "Who do those Iksar think they are?  There will be a reckoning one day, I swear.", "shakefist", 604625870, 159976278, Spawn)
                	elseif choice == 3 then
                	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_hail_gf_269d3910.mp3", "How dare you speak to me as if I was nothing more than a dirty troll!", "glare", 708249483, 3464421673, Spawn)
                	elseif choice == 4 then
                	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_aoi_gf_eb029bed.mp3", "I am sickened by the lack of amenities within this city.", "flustered", 2205842657, 1362436730, Spawn)
                    end
	                end
			    end
			    
			    
		elseif race == DWARF then
			if gender == MALE then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else
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
				end    
		    elseif gender == FEMALE then
		    			if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else
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
		    end
	    	
		
	    elseif race== ERUDITE then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			        
	                local choice = math.random(1,11)
	                    if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_aoi_gm_e90ac60e.mp3", "Looking at you makes me feel so much better about myself.", "snicker", 2865201602, 274049333, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gm_d4015769.mp3", "Have you ever thought the purpose of your life is just to serve as a warning to others?  ", "point", 3095314028, 1070295625, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_aoi_gm_f05af274.mp3", "Amazing!  It CAN actually walk and talk at the same time.", "stare", 1912497577, 4274560045, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gm_d2856502.mp3", "The way you imitate someone who actually has a brain is quite impressive.", "applaude", 664526339, 2273636799, Spawn)
                    	elseif choice == 5 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gm_30b068d9.mp3", "Idiots should speak only when spoken to.", "chuckle", 2652051067, 1412719109, Spawn)
                    	elseif choice == 6 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gm_a059271d.mp3", "If at first you don't succeed, then you should finally accept the truth that you are a failure.", "scold", 3175955235, 2053347238, Spawn)
                    	elseif choice == 7 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gm_2b280a78.mp3", "The mind is a terrible thing to waste.  Feeling guilty, are we?", "glare", 1190376151, 1209115227, Spawn)
                    	elseif choice == 8 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gm_3fda1d89.mp3.mp3", "I can never understand why stupid people don't choke on their tongues.", "confused", 258155375, 1323085568, Spawn)
                     	elseif choice == 9 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gm_8af5b859.mp3.mp3", "The disadvantage of being better than everyone else is that people assume you're pretentious.", "shrug", 3243127514, 1853886391, Spawn)
                      	elseif choice == 10 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gm_bb83989b.mp3.mp3", "I do not speak with animals.  Please try to understand.", "no", 1164489214, 2167310923, Spawn)
                      	elseif choice == 11 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gm_e7bd0c59.mp3.mp3", "Count yourself lucky that the Overlord has not yet outlawed stupidity.  Therefore, you're free to go!", "nod", 1164489214, 2167310923, Spawn)
                    	end
                   end 	
                    	
				elseif GOOD then
				    if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    
				    else
                	local choice = math.random(1,10)

                    	if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gm_681bd632.mp3", "As with all conflict, the correct resolution is to not become involved.", "no", 1961295370, 3396676212, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gm_f2332236.mp3", "It is easy to disperse hateful attitudes with an act of kindness.", "thanks", 2716159461, 2493983068, Spawn)
    	            	elseif choice == 3 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_aoi_gm_500eba11.mp3", "We must preserve Qeynos.  If we do, then a great victory will be upon us all!", "agree", 1282142717, 279173246, Spawn)
	                    elseif choice == 4 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_aoi_gm_bfe41325.mp3", "When darkness reign across the face of Norrath, find solace in your inner light.", "orate", 1747616765, 2317450348, Spawn)
	                    elseif choice == 5 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gm_87ee0892.mp3", "It is impossible to defeat an ignorant man in an argument.", "no", 1688439631, 2741592842, Spawn)
                    	elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gm_92543d16.mp3", "There is one way to every argument to your advantage.  Always be crrect!", "nod", 3847243276, 420228124, Spawn)
	                    elseif choice == 7 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gm_466700a5.mp3", "You must completely devout yourself to the notions of truth and goodness.", "scold", 4256416895, 410466169, Spawn)
	                    elseif choice == 8 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gm_4131077.mp3", "Happiness is achieved by those who are kind within and respectful of others.", "happy", 3493831365, 2273149590, Spawn)
	                    elseif choice == 9 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gm_bf4a6828.mp3", "We all must return to our origins.  Answering our questions of the past arms us to confront a certain future.", "sniff", 2168273293, 2294601502, Spawn)
	                    elseif choice == 10 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gm_cd2c38ae.mp3", "Truth will always be true, regardless of the lack of understanding.", "ponder", 1482635271, 2842583444, Spawn)
	                   end                          	                    	
                    end
                end
				
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  			        
	                local choice = math.random(1,10)
                	if choice == 1 then
	                PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gf_22870e86.mp3", "I have no patience for someone with such a limited mind.", "no", 506026711, 3133038239, Spawn)
                	elseif choice == 2 then
	                PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gf_a4ceea7d.mp3", "Hello.  By the way, I don't care.  Thanks.", "hello", 3118425564, 2914161028, Spawn)
                	elseif choice == 3 then
	                PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_aoi_gf_3b47e8b4.mp3", "I will incinerate anyone who doesn't acknowledge my superiority.", "threaten", 1985606353, 3418018124, Spawn)
                	elseif choice == 4 then
	                PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gf_22f6bb5b.mp3", "I doubt there is anyone in this city more intelligent than myself.", "sniff", 1968386351, 1062373550, Spawn)
                	elseif choice == 5 then
	                PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gf_3a1d92f9.mp3", "The mindless babble of a simpleton delights me to no end.", "sarcasm", 866230564, 1449447935, Spawn)
                	elseif choice == 6 then
	                PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gf_22f6bb5b.mp3", "You disgusting little creature.  Be gone!", "point", 1968386351, 1062373550, Spawn)
                	elseif choice == 7 then
	                PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gf_30a32e42.mp3", "I am unable to grasp the concept of humility.  Perhaps I can watch you for a while.", "shrug", 2312176575, 2681309062, Spawn)
                	elseif choice == 8 then
	                PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gf_71a543b.mp3", "I am deep in throught.  Please deprive me of your company.", "ponder", 1770011628, 3708308885, Spawn)
                	elseif choice == 9 then
	                PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gf_251836f2.mp3", "The harder you try, the dumber you look!  Please, don't let me be the one to stop you.", "chuckle", 120588620, 2055866671, Spawn)
                	elseif choice == 10 then
	                PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gf_d021c931.mp3", "If I pretended you weren't here, would you go away?", "wince", 3960906270, 232532094, Spawn)
                    end	               		               		               		               		               		               		               		               	                
	           end
				elseif GOOD then
				    if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else
                	local choice = math.random(1,12)

    	            	if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_aoi_gf_7fcbca60.mp3", "An era of darkness has finally come to a close. Now we must see what future Norrath has in store.", "confused", 2437621868, 2071976840, Spawn)
	                    elseif choice == 2 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_5453f96d.mp3", "Paradise has always been here on Norrath for those who are thoughtful and responsible for their actions.", "thanks", 3529954798, 1064012556, Spawn)
	                    elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_e0bc946.mp3", "I have felt the stirrings of a strong magical influence.  Good fortune will follow to those with the will to persevere!", "ponder", 4152344209, 239250643, Spawn)
                    	elseif choice == 4 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_84882e21.mp3", "You must not be afraid to trust others.  Openness is the key to finding a correct solution.", "sigh", 1792907516, 2786700542, Spawn)
	                    elseif choice == 5 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_7895591c.mp3", "If we focus on the higher truths that govern our actions, we fathom the underlying power within them.", "curtsey", 2416988832, 3319542974, Spawn)
	                    elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_aoi_gf_ff7f6e34.mp3", "You must be cautious of the draws of evil.  We must master our temptations to preserve our city.", "bye", 4169564254, 3711533067, Spawn)
	                    elseif choice == 7 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_5d08d354.mp3", "It is good to understand your progress.  Voluntary limitations can enhance your personal growth.", "agree", 1896069258, 2274589764, Spawn)
	                    elseif choice == 8 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_9aa6730d.mp3", "To defeat the forces of chaos, you must master your true inner calm.", "orate", 3386290119, 1807725087, Spawn)
	                    elseif choice == 9 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_93a14dae.mp3", "Your master of the Isle was a breakthrough.  Use caution and do not fall into old habbits.", "scold", 3304205084, 3463450420, Spawn)
	                    elseif choice == 10 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_2434ad34.mp3", "The time for ego must be set aside.  Your faith in a higher power will preserve you in the times ahead.", "orate", 2861437371, 3398791867, Spawn)
	                    elseif choice == 11 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_64055b3d.mp3", "All good things will come to the innocent.", "curstey", 3780206991, 3751425250, Spawn)
	                    elseif choice == 12 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_fe6e4528.mp3", "If power is what you seek, you must master the difference between right and wrong.", "nod", 3802952369, 586104398, Spawn)
                        end   
				    end 
			    end
			end	
			
			
		elseif race == FROGLOK then
			if gender == MALE then
			    	if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
            	        PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_aoi_gm_9106b8f.mp3", "Dost thou bite thy thumb at me, sir?  Thou are't rank idle-headed dismel dreaming rat's bane!", "swear", 3764619066, 2005097866, Spawn)
				        end
				    else
            	local choice = math.random(1,12)

                	if choice == 1 then
	                PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_f357bdfe.mp3", "Anon stranger!  If thou has any news of my kin, return to Castleview!", "nod", 1789254366, 4068928413, Spawn)
                	elseif choice == 2 then
                	PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_109feb61.mp3", "Hast thou any news of our lost kin?", "ponder", 2372213836, 4116685779, Spawn)
                	elseif choice == 3 then            	    
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_3f899525.mp3", "Alack!  Dost yon adventurers think to aid in the search for the Sons of Marr?", "boggle", 8384978, 3425989342, Spawn)
                	elseif choice == 4 then            	    
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_aoi_gm_5c47b7fa.mp3", "Of course I noticed him!  He was nothing more than a braggart and a cad.", "frustrated", 432869819, 4218797807, Spawn)
                	elseif choice == 5 then            	    
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_aoi_gm_9106b8f.mp3", "Dost thou bite thy thumb at me, sir?  Thou are't rank idle-headed dismel dreaming rat's bane!", "swear", 3764619066, 2005097866, Spawn)
                	elseif choice == 6 then            	    
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_5300e94.mp3", "Hark!  Another refugee has arrived in the city!  Good show defeating those goblins on the isle.", "hello", 2512274162, 1153168327, Spawn)
                	elseif choice == 7 then            	    
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_9573db0a.mp3", "I say!  Dost though seek to stand with us against the evils and tyranny of the land?", "nod", 1132043246, 1126159291, Spawn)
                	elseif choice == 8 then            	    
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_54051a92.mp3", "Well met, my astute traveler.  The evil rogues of Freeport would never trifle with so dashing an adventurer.", "agree", 2925268962, 3643630927, Spawn)
                	elseif choice == 9 then            	    
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_79306651.mp3", "Aye!  I crave your pardon.  Goodmorrow to you stranger.", "bye", 723971409, 21144837, Spawn)
                	elseif choice == 10 then            	    
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_a446c215.mp3", "Nay traveler.  I have no desire to exchange pleasantries with thou.", "no", 4046949141, 791911027, Spawn)
                	elseif choice == 11 then            	    
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_aeef4870.mp3", "Here, here!  Wonderful to have you with us in the city.", "happy", 1351314175, 2941555770, Spawn)
                	elseif choice == 12 then            	    
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_aeef4870.mp3", "I pray on you, stranger.  Dost thou any news on friends of Gukta?", "bow", 1351314175, 2941555770, Spawn)
                    end
	           end
             elseif gender == FEMALE then
            		if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else
                local choice = math.random(1,9)
                    if choice == 1 then
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_aoi_gf_8d30932a.mp3", "May the gods keep thee.  'Tis a bessing to have Castleview Hamlet as our home in Qeynos.", "bow", 3522764394, 2182159483, Spawn)
                 	elseif choice == 2 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_aoi_gf_bdbdb78e.mp3", "Curse the ill timed luck of it all!  I had hoped thou had'th bring news of our missing families.", "shrug", 1153289100, 392994268, Spawn)
   	                elseif choice == 3 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_3c0848a6.mp3", "I thank thee for the kind hail.  Goodmorrow to you, traveler.", "bye", 4059931003, 1290457989, Spawn)
   	                elseif choice == 4 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_9ff4f18c.mp3", "Fare thee well, my brave adventurer!  If thou hath any news of our kin, return to Castleview!", "curstey", 2304123366, 1172967267, Spawn)
   	                elseif choice == 5 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_a64f6eec.mp3", "What hast thou done?  When one greets a daughter of Marr, a small bow is in order!", "boggle", 2184035287, 59673464, Spawn)
   	                elseif choice == 6 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_aaa0d7f3.mp3", "Mighty good then.  How are't thou on this fine afternoond?", "hello", 725320917, 2360930144, Spawn)
   	                elseif choice == 7 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_c0864f03.mp3", "Now ye shall rejoyce'th within the taverns by night, but we shall not rest until the truth of our kin hath been discovered.", "happy", 1638938881, 2182528216, Spawn)
   	                elseif choice == 8 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_e4cf5b64.mp3", "How now, friend adventurer?  Has't thou seen other daughters of Marr in the wilds?", "ponder", 2966512768, 1279748767, Spawn)
   	                elseif choice == 9 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_f56ada2a.mp3", "The queen calls all of us to service.  We shall find our kin to serve her majesty.", "agree", 484194272, 4099511252, Spawn)
                    end                                                                                                                           
                end
			end

			
		elseif race == GNOME then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  			        
	            local choice = math.random(1,11)

    	            if choice == 1 then
    	        	PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_3b50e81d.mp3", "For the last time, gnomes didn't make Luclin explode!  We would have gone with disintegration.", "grumble", 269246846, 1507536385, Spawn)
    	            elseif choice == 2 then
    	        	PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_3c96722f.mp3", "It is said there is more than one way to skin a cat.  My research proves that saying correct.", "wink", 270865755, 3814599267, Spawn)
    	            elseif choice == 3 then
    	         	PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_a0ec45ef.mp3", "Through the advances in modern magic, anything is possible.", "scheme", 2871018676, 2157629655, Spawn)
                	elseif choice == 4 then
    	        	PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_87cefc8f.mp3", "I will prove to them that I'm not mad!  If I have to kill everyone of them to prove it, I will!", "dance", 3561903619, 1901803882, Spawn)
    	            elseif choice == 5 then
    	        	PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_34756811.mp3", "How many times must I say it?  Acid first, then the eyeballs, not the other way around!", "scold", 3381670490, 1272629802, Spawn)
    	            elseif choice == 6 then
    	        	PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_b7905eb1.mp3", "No, no, no!!!  That will never work!  The person still needs to breathe, don't they?  Don't they?", "shrug", 3693935176, 3848510180, Spawn)
            	    elseif choice == 7 then
    	        	PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_b0ae4c2e.mp3", "I really dislike the word \"conscience\" don't you?", "glare", 125996156, 1415506360, Spawn)
             	    elseif choice == 8 then
               	   	PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_3f3e760a.mp3", "So far, I have found kerrans to have only one life, not nine.  I insist on finding the other eight!", "ponder", 4225274276, 2202716414, Spawn)
               	    elseif choice == 9 then
               		PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_aoi_gm_c6354fcc.mp3", "Oh no, not another failed experiement!  Oh, its just a person.", "facepalm", 4280227325, 2173466505, Spawn)
             	    elseif choice == 10 then
    	        	PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_4d2d14ae.mp3", "So many test subjects, so little time!", "scheme", 2502077, 3261378172, Spawn)
                    elseif choice == 11 then
                    PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_9db76689.mp3", "I must find a wall before I lose this thought!", "frustrated", 1979069834, 1194484208, Spawn)
	                end
	            end		        
			        
				elseif GOOD then
				    if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else
				    local choice = math.random(1,4)

                        if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gm_f3d18eed.mp3", "Happiness is an invention that doesn't blow up in your face.", "cackle", 3009155014, 2014645373, Spawn)
                       	elseif choice == 2 then
	                    PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gm_482b24df.mp3", "Once I can get the steam to stop being hot,  I can give my invention to everyone!", "cheer", 2061305324, 3983971023, Spawn)
                    	elseif choice == 3 then
	                    PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gm_b060ec8f.mp3", "Brilliant!  Water that doesn't get wet!  I must remember to write this down.", "yeah", 3284558618, 1203993958, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gm_cfe720df.mp3", "I wonder how efficient waterfalls would be to power a combustible chocolatizing confectionator?", "confused", 2155652930, 404735102, Spawn)
                       	elseif choice == 5 then
	                    PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gm_a20b5775.mp3", "For every invention there is an equally opposite explosion!", "happy", 772713208, 2603246917, Spawn)
                    	elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gm_275aaf38.mp3", "Wouldn't it be great if fruit was explosive?  It would be a wonderful power source and delicious at the same time!", "agree", 1275295146, 514792648, Spawn)
                    	elseif choice == 7 then
                    	PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_aoi_gm_dad26fdb.mp3", "May your calculations work most of the time!", "thumbsup", 1756949489, 1962052288, Spawn)
		                end
	                 end
                end
				
			elseif gender == FEMALE then
			    if GOOD then
			        if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else
                	local choice = math.random(1,5)
                    	if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gf_3283725c.mp3", "If my calculations are correct, the equation itself is wrong.", "shrug", 969769156, 2288581541, Spawn)
	                    elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gf_65399fc8.mp3", "An invention in repair is worth two in the scrap heap.", "ponder", 2759163216, 541838845, Spawn)
                    	elseif choice == 3 then
	                    PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gf_297592a6.mp3", "If the facts don't fit the theory, I say change the facts!", "smile", 1798028414, 971115717, Spawn)
	                    elseif choice == 4 then
                	    PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gf_9827991a.mp3", "The secret to creativity is knowing how to hide your sources - especially from the neighbors.", "lookaway", 1727327737, 3359456905, Spawn)
                	    elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gf_b6cff742.mp3", "Anyone can be clever, but only true geniuses can innovate.", "agree", 4261250991, 2608600580, Spawn)
                        end
                    end

				elseif EVIL then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  				    
	                local choice = math.random(1,4)
                	    if choice == 1 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_aoi_gf_cf624473.mp3", "I told him that the skin would grow back in time, but did he listen?", "sigh", 2176996699, 617875144, Spawn)
                 	    elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gf_be42d521.mp3", "I have no time to waste on safety measures.", "heckno", 3230037003, 51715991, Spawn)
                	    elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gf_a96fdda8.mp3", "If I found the smallest piece of magical residue in the world and cut it in half, I wonder what would happen?", "scheme", 419040585, 4060599636, Spawn)
	                    elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gf_b0e1446f.mp3", "Only an amateur would bother worrying about ethics!", "wink", 3193611171, 1050666978, Spawn)
				        end
	    	        end
		      end
            end             

		
		elseif race == HALF_ELF then
			if gender == MALE then
			    if GOOD then                                                --SEE SPAWN RACE HAIL FOR GOOD HALFELF
				elseif EVIL then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  				    
				    local choice = math.random(1,12)
	                    if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_4da968d0.mp3", "Keep your hand on your blade when walking around here.", "wink", 730795107, 3036681236, Spawn)
                        elseif choice == 2 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_ef8afd3c.mp3", "I gotta get into the Militia.  Then I could legally beat up people.", "ponder", 2140199906, 2198679856, Spawn)
                        elseif choice == 3 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_2810cabf.mp3", "Who does that Overlord think he is anyway?", "shrug", 1997807892, 1535229241, Spawn)
                        elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_7344f21b.mp3", "I'm in the mood to kick someone in the teeth.", "kick", 620861878, 995351111, Spawn)
                        elseif choice == 5 then
                    	PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_1a67afe9.mp3", "Wipe that smirk off your face before the guards do it for you.", "scold", 895269036, 3337184900, Spawn)
	                    elseif choice == 6 then
                    	PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_aoi_gm_a371c976.mp3", "Were you just looking at me!?  Yeah. That's what I thought!", "whome", 326349229, 2602489299, Spawn)
                        elseif choice == 7 then
                    	PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_aoi_gm_60ba0b55.mp3", "Now ... Whose coin purse am I going to take today?", "ponder", 3034704035, 2487254069, Spawn)
                        elseif choice == 8 then
                    	PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_6bd51371.mp3", "I'm a dual-breed, not a half-elf.  If you call me half-elf again, I'll cut YOU in half!", "cutthroat", 2884965634, 996787293, Spawn)
                        elseif choice == 9 then
                    	PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_852b8675.mp3", "Shove off, mate!", "shakefist", 4223989531, 84768942, Spawn)
                        elseif choice == 10 then
                    	PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_b67a4c90.mp3", "I don't want to be seen talking to you.  Bad for the image, you know?", "lookaway", 3819272384, 2481462860, Spawn)
                        elseif choice == 11 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_1edba7a5.mp3", "Quit breathing my air!", "glare", 2440457715, 1164344641, Spawn)
                        elseif choice == 12 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_aoi_gm_a371c976.mp3", "Were you just look'n at me?  Yeah, that's what I thought.", "stare", 326349229, 2602489299, Spawn)
	                    end    	                        
	                end
	           end   	

			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  			        
				    local choice = math.random(1,7)

                	    if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_e88fad9f.mp3", "Whoa!!!  I don't remember saying I wanted to talk to you!", "heckno", 3869016622, 3073089976, Spawn)
                	    elseif choice == 2 then
               		    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_cec6fc9a.mp3", "If I ruled this city, there would be statues of me EVERYWHERE!", "fullcurtsey", 2776668686, 3459755281, Spawn)
                	    elseif choice == 3 then
               		    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_53c5bc53.mp3", "One day I'll be famous and everyone here will be sorry they ignored me.", "grumble", 1314849459, 3332284891, Spawn)
                	    elseif choice == 4 then
               		    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_29efa844.mp3", "I didn't see or hear anything!  I swear!", "shiver", 485112397, 1983474419, Spawn)
                	    elseif choice == 5 then
               		    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_f2f1105d.mp3", "I already stuck three people today.  Do you want to be the one to make it four?", "scold", 591598271, 2045220321, Spawn)
                    	elseif choice == 6 then
	               	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_e22fa528.mp3", "What's the difference between your face and your bottom?  Yeah,  I can't tell either.", "shrug", 3407089973, 2027516210, Spawn)
	                    elseif choice == 7 then
	               	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_2c74d6d9.mp3", "Get your foul orc-breath away from me!", "stinky", 3849285611, 1607961607, Spawn)
                	    end
                	 end   
				elseif GOOD then
			        if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else				    
                	local choice = math.random(1,12)

	                    if choice == 1 then
	               	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_cbbaf023.mp3", "I've gotta get rid of these clothes; they're so one-hundred years ago.", "grumble", 3038038462, 3464193459, Spawn)
	                    elseif choice == 2 then
	               	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_62804932.mp3", "I'm only happy when it rains.  Well.. I like sunny days too.  Okay... I'm actually happy all the time.", "confused", 1094375942, 2257836955, Spawn)
                	    elseif choice == 3 then
	            	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_5b0f480.mp3", "I'm tired of waiting!  I want to make something of myself!", "pout", 3723196832, 16921270, Spawn)
	                    elseif choice == 4 then
               		    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_94429fcb.mp3", "As soon as I get my own boat, I'm outta here!", "nod", 314587977, 2229036874, Spawn)
                	    elseif choice == 5 then
               		    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_caf99562.mp3", "I don't know why the ancestors whine so much!  I really like Qeynos, why would they want to leave?", "shrug", 3776385844, 3884162072, Spawn)
                  	    elseif choice == 6 then
               		    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_aoi_gf_d3c4c401.mp3", "I hope you find the day to your liking.", "hello", 674577236, 468072811, Spawn)
                	    elseif choice == 7 then
            		    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_4a0665a0.mp3", "I'm so depressed!  I had to work all day!", "sad", 3176397311, 2616932103, Spawn)
	            	    elseif choice == 8 then
	               	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_1f61925a.mp3", "Are my roots showing?  I think I'll go for a light blueberry mixed with jum-jum highlights.", "ponder", 4153154191, 497875539, Spawn)
	                    elseif choice == 9 then
	            	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_5c8eceae.mp3", "My ancestors don't understand me.  They're from a completely different era.", "flustered", 2843616704, 1740340084, Spawn)
 	                    elseif choice == 10 then
               		    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_a9d0aa5.mp3", "The Tier'Dal are so romantic.  The way they're all dark and gloomy.", "flustered", 2994951308, 4256817454, Spawn)
	            	    elseif choice == 11 then
	            	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_892152e8.mp3", "Me and my friends have all agreed to be non-conformists.", "agree", 2451936333, 2413299209, Spawn)
	                    elseif choice == 12 then
	            	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_aoi_gf_f8dd15ce.mp3", " Got any coin?", "beg", 3660925534, 3735346681, Spawn)
		                end
	               end
				end
			end
	
	
	    elseif race == HALFLING then
			if gender == MALE then
		       if Qfaction < 0 then
                    local choice = math.random(1,2)
				        if choice == 1 then
	           	        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_cd9164d6.mp3", "You're a stranger. And I don't like strangers, no sir I don't!", "sulk", 785726454, 3155500140, Spawn)
				        elseif choice == 2 then		           
		                PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 893626909, 4027326251, Spawn)
                        end
                else
	            local choice = math.random(1,12)

            	    if choice == 1 then
	           	    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_cd9164d6.mp3", "You're a stranger. And I don't like strangers, no sir I don't!", "sulk", 785726454, 3155500140, Spawn)
            	    elseif choice == 2 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_75c0e97c.mp3", "Welcome to the city, adventurer. Be mindful of the peace and quiet.  Here in Qeynos, we value our privacy.", "bow", 1955296899, 2249687997, Spawn)
                    elseif choice == 3 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_50622dfa.mp3", "Whoa, hello there!  Eager and in a hurry I see.  My advice, take your time.  The city isn't going anywhere.", "wave", 2627404831, 2664895493, Spawn)
                    elseif choice == 4 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_cf902b40.mp3", "Get on now!  There is plenty of work to be done.  Maybe you should lend a hand if you feel up to it.", "point", 1396062221, 310311489, Spawn)
                    elseif choice == 5 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_f657192c.mp3", "Nostalgia isn't what it use to be.", "no", 2017572665, 1813639796, Spawn)
                    elseif choice == 6 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_7d33c817.mp3", "Nice weather we're having.  Should make for a good harvest this season, if it holds up.", "agree", 3022454580, 2853198849, Spawn)
                    elseif choice == 7 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_aoi_gm_89ed3363.mp3", "Wonderful.  More troublesome adventurers in the city.", "sigh", 3296911201, 4000062691, Spawn)
                    elseif choice == 8 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_1e924418.mp3", "Hail, and welcome to the city friend!", "hello", 3400282816, 2842293637, Spawn)
                    elseif choice == 9 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_aoi_gm_fea5fead.mp3", "The world is round!  Its round, I say.  As well it should be!", "nod", 4205711950, 2062936277, Spawn)
            	    elseif choice == 10 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_b44f103.mp3", "Oh good, another refugee in the city.  I hope you're not a worthless layabout.  We don't abide apathy here.", "sarcasm", 516875735, 233361227, Spawn)
                    elseif choice == 11 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_d79063bf.mp3", "Ahh, that's what I love about Qeynos.  So many bakeries, so many pies!", "happy", 894976267, 1675938925, Spawn)
                    elseif choice == 12 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_103d60c5.mp3", "Well, it looks like its getting close to nap time again.", "yawn", 121409065, 1108008452, Spawn)
                    end
                end

		elseif gender == FEMALE then
            if Qfaction <0 then
                FactionChecking(NPC, Spawn, faction)            
                else

            	local choice = math.random(1,8)		    
             	    if choice == 1 then
	        	    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_bc49d3d0.mp3", "Laziness is nothing more than the habit of resting before you get tired.", "yawn", 2068417649, 3867807288, Spawn)
            	    elseif choice == 2 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_a3259538.mp3", "You should head by the tavern later on! Every night in Qeynos is cause for celebration.", "cheer", 3875741901, 4154770080, Spawn)
	                elseif choice == 3 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_5b6e8d2f.mp3", "Do you like muffins?  Muffins are my favorite, I eat them every chance I get.", "sigh", 4155434475, 829232573, Spawn)
            	    elseif choice == 4 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_3dc6b124.mp3", "Get the wash, get the wash.  This whole city would fall apart if I didn't deliver the clothes on time.  ", "frustrated", 4277096439, 928366048, Spawn)
            	    elseif choice == 5 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_1b77439f.mp3", "Be on the lookout, friend!  I just spoke to the guards.  I've no doubt gnolls are scouting the nearby area.", "lookaway", 495282965, 1739106402, Spawn)
            	    elseif choice == 6 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_6594953c.mp3", "If a thing isn't worth saying, you sing it.", "wink", 1056697572, 3706271932, Spawn)
	                elseif choice == 7 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_19dfb2d9.mp3", "Greetings, stanger.  Enjoying your stay in the city I hope!", "hello", 3259354135, 3198236614, Spawn)
            	    elseif choice == 8 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_aoi_gf_86c7855.mp3", "Let's see.  I'm going to need a Baubbleshire berries, Eldarr root, and a smidgen of spiced fish.", "ponder", 1080385311, 773701526, Spawn)
              
                end
            end
	    end
    		
		
		elseif race == HIGH_ELF then
			if gender == MALE then
			        if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else			    
            	local choice = math.random(1,13)

                	if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_eb4f8f5d.mp3", "I hope you have been sent by someone of importance. I'm quite busy.", "yawn", 111891212, 1507953677, Spawn)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_4fa9c654.mp3", "How do you do! I am always pleased to meet a capable being, such as yourself.", "nod", 4124935177, 986848244, Spawn)
                	elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_6d02d4f.mp3", "Hail, friend and well met. I do hope your visits to our village are frequent. Too often do adventurers fail to return.", "stare", 1030195744, 970105613, Spawn)
                	elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_aoi_gm_13c1cb64.mp3", "The winds carry voices of powerful foes and dragons of unimaginable strength and magic.", "orate", 2352792191, 2945941710, Spawn)
                	elseif choice == 5 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_aoi_gm_683b2a87.mp3", "Ah, it brings me happiness to see so many newcomers arriving to exalted the city of Qeynos.", "hello", 3467550110, 1209341029, Spawn)
                	elseif choice == 6 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_1105e4b5.mp3", "Hail and welcome.  I hope your stay here is uplifting.", "royalwave", 3772090710, 3018384836, Spawn)
                 	elseif choice == 7 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_4d06411b.mp3", "I bid you greetings and welcome to this place I call home!", "bow", 3685974709, 3532617817, Spawn)
                 	elseif choice == 8 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_cc6b24fd.mp3", "Well met, traveler.  Has your journey to our village been troublesome?", "ponder", 2247454484, 3658940037, Spawn)
                 	elseif choice == 9 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_ec2355eb.mp3", "Hail good adventurer!  I trust the journey that brought you here was an enlightening one.", "hello", 2686055828, 988883659, Spawn)
                 	elseif choice == 10 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_57b9ce4e.mp3", "I am sorry.  I am burdened with my own thoughts, and haven't a moment to converse.", "no", 1692526278, 2332878998, Spawn)
                 	elseif choice == 11 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_71b47c01.mp3", "Greetings!  Welcome to our assylum from the torments that plague the lands of Norrath.", "agree", 2714539749, 1799541972, Spawn)
                 	elseif choice == 12 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_cbf85a0c.mp3", "Hail noble!  It is with jubilation that I wind away this time speaking with you.", "royalwave", 899066168, 1514992217, Spawn)
                 	elseif choice == 13 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_cbf85a0c.mp3", "It brings comfort to my heart to see you come to us in safety.", "thanks", 3493354679, 3213252106, Spawn)
        	        end
            	end
			elseif gender == FEMALE then
			    if Qfaction < 0 then  
                FactionChecking(NPC, Spawn, faction)
                else
				local choice = math.random(1,10)
	                if choice == 1 then
		            PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_aeb1a20f.mp3", "It is with honor that I welcome you to our community.", "thanks", 157565536, 4238836509, Spawn)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_a6a7e923.mp3", "Hail to you, it is indeed a pleasure.", "royalwave", 224557122, 3782103568, Spawn)
	                elseif choice == 3 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_869cb34a.mp3", "Hello, young adventurer. It is with the utmost delight that I greet you.", "fullcurtsey", 1236739692, 2465236460, Spawn)
	                elseif choice == 4 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_aoi_gf_4d69aa69.mp3", "Confound those infernal gnomes and their diabolical gadgets!", "frustrated", 683761969, 2806224893, Spawn)
	                elseif choice == 5 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_aoi_gf_b378842e.mp3", "As of late, my dreams show me visions of the lost city of Felwithe, and it is every bit as legendary as I would have imagined it.", "ponder", 1174631927, 1272016193, Spawn)
	                elseif choice == 6 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_42dc41ff.mp3", "Well met.  I find great solace in our meetings.", "bow", 1972105344, 498797338, Spawn)
	                elseif choice == 7 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_e70b6b86.mp3", "Hello!  It is always good to meet someone new in our peaceful village.", "royalwave", 2113607646, 1301209736, Spawn)
	                elseif choice == 8 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_17bda578.mp3", "Hail!  It is ecouraging to see bright faces, such as yours, arrive in the everlasting city of Qeynos.", "hello", 1027180785, 1173518799, Spawn)
	                elseif choice == 9 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_837db26f.mp3", "Hail to you, friend!  I hope you have many happy returns to quaint town.", "nod", 4187653090, 1385095205, Spawn)
	                elseif choice == 10 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_e35fd511.mp3", "Wonderful to make your acquaintance!  Do you find this scenery as whimsical as I?  The day is truely blessed.", "curtsey", 3515560120, 1635596676, Spawn)
                                                                                                                                    
                end
                end
	    	end
		
		
		
		elseif race == HUMAN then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  			        
                	local choice = math.random(1,13)

                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_681a46c7.mp3", "Is it even possible for this city to get more corrupt?", "shrug", 141488306, 2058551020, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_e1633802.mp3", "I was just saying to myself how I really don't like the way your face looks.", "agree", 2892144271, 4226558009, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_e029416.mp3", "Knowing the right people will keep you safe in this city.  You aren't one of them.", "bye", 1565383896, 1832709459, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_dfce6d9.mp3", "If you're looking for trouble, I've got a whole fistful of it waiting for you.", "threaten", 767826754, 1534633302, Spawn)
                    	elseif choice == 5 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_daf01a19.mp3", "If I had another five or six ales, maybe I wouldn't mind talking to you.", "chuckle", 3530112272, 2115498011, Spawn)
                    	elseif choice == 6 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_f18134c1.mp3", "You're lucky there are witnesses watching us right now.", "cutthroat", 234614508, 4277417930, Spawn)
                    	elseif choice == 7 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_c467886b.mp3", "Do I look like someone who cares?", "whome", 2648633348, 1343979863, Spawn)
                    	elseif choice == 8 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_f47447aa.mp3", "Keep to yourself and you just might make it through another day.", "wink", 1457279923, 475736143, Spawn)
                    	elseif choice == 9 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_10e0ca86.mp3", "Just do what the guards say and the beatings won't be so severe.", "lookaway", 1079804543, 441510900, Spawn)
                    	elseif choice == 10 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_aoi_gm_a2d138b9.mp3", "If you know what's good for ya, you didn't see anything!", "scold", 3989425659, 2701948732, Spawn)
                    	elseif choice == 11 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_aoi_gm_20171f6b.mp3", "Where the heck is that horrible stench coming from?   Oh.  You.", "stinky", 369052520, 3267063374, Spawn)
                    	elseif choice == 12 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_34b6867c.mp3", "Get out of my face, loser!", "stare", 1398343887, 3015762585, Spawn)
                    	elseif choice == 13 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_528fccc.mp3", "That look's like an awfuly expensive pair of boots there.. friend.", "ponder", 623577963, 2384305800, Spawn)
	                   	end
	                 end  	
				elseif GOOD then
                    if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
                    else
				    
                	local choice = math.random(1,13)

                    	if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_7e3b456a.mp3", "Hail, pleasure to meet you.", "agree", 471367832, 2417424572, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_ef2b9651.mp3", "Will you quit pestering me?  Don't force me to summon the guards!", "tapfoot", 3345611839, 1442739842, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_26f4c608.mp3", "Greetings visitor, I'm glad to meet you.", "bye", 1300497520, 2713745446, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_13b79d2d.mp3", "Welcome!  Welcome traveler, to the fair city of Qeynos! My, isn't it a magnificent day?", "hello", 3746934207, 794965138, Spawn)
		                elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_e58035f3.mp3", "What do you want? Leave me be!", "shrug", 1323474108, 3355478224, Spawn)
                    	elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gm_2c5409ba.mp3", "Another lovely day in the city of Qeynos!", "smile", 2759856909, 614688407, Spawn)
                    	elseif choice == 7 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gm_4d212798.mp3", "I'm confident that the merchants of our village will fill all equipment needs with the utmost hospitality.", "smile", 2600666744, 586734676, Spawn)
                    	elseif choice == 8 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_9b2049a3.mp3", "Well met, friend.  It's good to make your acquaintance!", "bow", 754727055, 3165426316, Spawn)
                    	elseif choice == 9 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_3fc546db.mp3", "As a citzen of the mighty city of Qeynos, I greet you openly.", "hello", 2645256785, 1334313741, Spawn)
		                elseif choice == 10 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_d38d1fff.mp3", "Ah, what have we here?  Glad to see you endured the journey here adventurer.", "ponder", 2806352129, 3453714070, Spawn)
                    	elseif choice == 11 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_60dfe3da.mp3", "Welcome to Qeynos friend!", "nod", 3850495157, 2924033866, Spawn)
                    	elseif choice == 12 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_34d7a9e6.mp3", "Well met!  Here in Qeynos you shall find a wealth of useful supplies.  More importantly, ale!", "smile", 3467166298, 3144147842, Spawn)
                    	elseif choice == 13 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_5ec5f221.mp3", "Glad you made it.  Was the island as difficult as I remember?", "agree", 3870261841, 3828605353, Spawn)
	                   	                    
	                    end
                    end 
				end
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  			        
	            local choice = math.random(1,10)

	                    if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_e0c9d202.mp3", "I'd give anything to leave this godsforsaken cesspool of a city.", "beg", 167506951, 845500735, Spawn)
	                    elseif choice == 2 then
                 		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_aoi_gf_603e4394.mp3", "Was it just me, or did I hear something jingling in your coin purse?", "listen", 2402158317, 1527601082, Spawn)
                    	elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_d2844e25.mp3", "You can avoid trouble around here as long as you don't make eye contact with anyone.", "lookaway", 2224595311, 1879007102, Spawn)
                    	elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_ed2258.mp3", "If you keep bothering me, I'll scream for help!!", "scream", 3517182304, 1940512214, Spawn)
                    	elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_e1648d49.mp3", "What made you think I wanted to talk to you?", "shrug", 739774986, 813162418, Spawn)
                    	elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_e0c9d202.mp3", "I'd give anything to leave this godsforsaken cesspool of a city.", "beg", 167506951, 845500735, Spawn)
                    	elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_b0f7eb94.mp3", "Unless you know of a way to make some quick coin, we have no reason to talk.", "scold", 3652661564, 2025834564, Spawn)
                    	elseif choice == 8 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_216216bd.mp3", "The next time that guy leers at me, I'm gonna punch him in the throat.", "threaten", 3620511003, 1079805953, Spawn)
                     	elseif choice == 9 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_975b4774.mp3", "I wish those guards would just leave us alone.", "sulk", 453027671, 1457811660, Spawn, 0)
                     	elseif choice == 10 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_aoi_gf_603e4394.mp3", "Was it just me, or did I hear something jingling in your coin purse?", "listen", 2402158317, 1527601082, Spawn, 0)
                        end
	                 end   
				elseif GOOD then
				    if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else
	                local choice = math.random(1,6)

	                    if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_1dba0c5b.mp3", "Salutations and warm greetings to you.", "curtsey", 707852693, 1737331106, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_bf6c3bd5.mp3", "Hello there, friend, I hope the day finds you well.", "nod", 2878226663, 595387800, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_e9f03834.mp3", "Welcome to Qeynos, traveler, know that you are among allies.", "bye", 2097755939, 469858505, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_408eb029.mp3", "Greetings traveler and welcome to our village. Be sure to help us keep it tidy.", "scold", 748098747, 1246453163, Spawn)
	                	elseif choice == 5 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_43b0278c.mp3", "Good day to you. I trust your journey to our village was not overly hazardous.", "fullcurtsey", 374004507, 2165503793, Spawn)
                        elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_c5cb5ec8.mp3", "Hail to you as well, traveler.  There is much work to be done in Qeynos, might as well get started on it now.", "smile", 3197561806, 3190128247, Spawn)
	                	elseif choice == 7 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gf_ffcb538f.mp3", "Qeynos is a bastion of light in the darkness of the land.  I hope you enjoy the sights of the city", "hello", 291039605, 2045457707, Spawn)
                        elseif choice == 8 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gf_7b765111.mp3", "You stand within the sturdy and unyielding walls of Qeynos.  Give thanks for their existance.", "orate", 1908238477, 1252205270, Spawn)
	                	elseif choice == 9 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_9a63d2e3.mp3", "Hail!  I am pleased to see so many eager new adventurers among us.", "bye", 3500366421, 3655995659, Spawn)
                        elseif choice == 10 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_79781fd.mp3", "Welcome to the city, newcomer.  All are welcome within the port of Antonia Bayle.", "curtsey", 4027811518, 2764738720, Spawn)
	                	elseif choice == 11 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_63aeaecb.mp3", "Hail good traveler!", "nod", 3880132810, 2976839399, Spawn)
                        elseif choice == 12 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_a1a2ce02.mp3", "Hello, and welcome to the city.  Everything you need can be found here in Qeynos.", "agree", 3632185330, 3617071255, Spawn)
	                		                	                	                    	    
                	    end
	   				end
	    	    end
            end

		elseif race == IKSAR then
			if gender == MALE then
			        if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroath", 0, 0, Spawn)
				        elseif choice == 2 then
	                    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_aoi_gm_d89fe693.mp3", "Watch yourself.  Don't cross my scales.", "threaten", 2763703578, 1512088342, Spawn)
				        end
				    else  
	                local choice = math.random(1,9)

	                    if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gm_e197e226.mp3", "Get the facts first, then use them to your advantage.", "nod", 2108412157, 569290229, Spawn)
                	    elseif choice == 2 then
                	    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gm_6e77e856.mp3", "Hard work has never killed anyone, but I have.", "nod", 1624540059, 2182897376, Spawn)
                	    elseif choice == 3 then
                	    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gm_b2520f1f.mp3", "The dark elves are inferior creatures led by delusions of grandeur.  How sad.", "sarcasm", 4070116108, 3546866585, Spawn)
                    	elseif choice == 4 then
                	    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gm_e1fe7edd.mp3", "The Sebilisian empire will rise again!", "yeah", 1001389400, 2353755387, Spawn)
                 	    elseif choice == 5 then
                    	PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gm_1c7c97cc.mp3", "Were all the barbarians to be slaughtered, I would call it a mercy killing.", "glare", 3861422265, 4210225893, Spawn)
	                    elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gm_75d6942e.mp3", "Of course we have feelings.  We're just not as attached to them as others.", "glare", 959861962, 664441611, Spawn)
	                    elseif choice == 7 then
	                    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gm_65504a07.mp3", "You don't have to be cold blooded to be a killer, but it helps.", "stare", 162591917, 1585569694, Spawn)
	                    elseif choice == 8 then
	                    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_aoi_gm_d89fe693.mp3", "Watch yourself.  Don't cross my scales.", "threaten", 2763703578, 1512088342, Spawn)
	                    elseif choice == 9 then
	                    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gm_f5670aae.mp3", "Sssilence!  I do not wish to hear your chatter.", "no", 530825766, 210892882, Spawn)
                	                    	                	
                	end
				end
		    elseif gender == FEMALE then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  		    
	               local choice = math.random(1,7)

	                    if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_f69ccf4.mp3", "Now that Cazic is gone, we are all that's left to fear.", "glare", 201991256, 2703372070, Spawn)
	                    elseif choice == 2 then
                	    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_1d6c587a.mp3", "Consequences are insignificant compared to how much power one can grasp.", "swear", 725277130, 442283069, Spawn)
                	    elseif choice == 3 then
                	    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_f01f193d.mp3", "Forgiveness is the first sign of weakness.", "wince", 1541815345, 3425736193, Spawn)
                	    elseif choice == 4 then
                	    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_aee44902.mp3", "The slash of a whip is a good way to get one's attention.", "scold", 1454622396, 2157938475, Spawn)
                	    elseif choice == 5 then
                	    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_31190c6b.mp3", "Many things can happen.  Pray that I'm not one of them.", "tapfoot", 719531656, 2014590208, Spawn)
  	                    elseif choice == 6 then
                	    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_f69ccf4.mp3", "Now that Cazic is gone, we are all that's left to fear.", "glare", 201991256, 2703372070, Spawn)
                	    elseif choice == 7 then
                	    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_9f30f326.mp3", "I have found fear is always a good motivator.", "nod", 968054609, 542822567, Spawn)
                	    end 
            	end
            end	

			
		elseif race == KERRA then
			if gender == MALE then
			    if EVIL then
			        if FPfaction < 0 then
                    FactionChecking(NPC, Spawn, faction)
			        else   
	            local choice = math.random(1,12)

	                if choice == 1 then
		            PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gm_9c3a5e62.mp3", "I don't know why we are here, but I'm sure that it's not to enjoy ourselves. ", "sad", 186474664, 794000823, Spawn)
	                elseif choice == 2 then
		            PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gm_1c352725.mp3", "For Thule's sake!  What is it?", "boggle", 1376194005, 4293301406, Spawn)
	                elseif choice == 3 then
		            PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gm_5504a215.mp3", "There is no safety in numbers or in anything else. ", "no", 775071500, 2570653224, Spawn)
	                elseif choice == 4 then
		            PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gm_1b5995a5.mp3", "The trouble with ratonga is they've got no tact.", "agree", 2368853908, 825736474, Spawn)
	                elseif choice == 5 then
		            PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gm_39a2a132.mp3", "The bigger the smile, the sharper the claws.", "cutthroat", 459074110, 1126636200, Spawn)
	                elseif choice == 6 then
		            PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gm_faa98b82.mp3", "The ratonga are intended to teach us that not everything in nature has a purpose.", "nod", 1619896826, 2577563009, Spawn)
	                elseif choice == 7 then
		            PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gm_a61b7e7b.mp3", "Ratonga are nothing more than overgrown rats. ", "grumble", 3521570309, 987431086, Spawn)
	            	elseif choice == 8 then
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_164ffd98.mp3", "I can purr my way out of anything.", "wink", 4263608089, 504552247, Spawn)
	                elseif choice == 9 then
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_aoi_gf_c9f2b4f1.mp3", "Friendship is too costly around here.", "sigh", 1983387905, 3075550393, Spawn)
	                elseif choice == 10 then
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_aoi_gm_38301159.mp3", "We can't help that!  We're all mad here!", "crazy", 1508409788, 219596858, Spawn)
	                elseif choice == 11 then
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gm_7299ccb7.mp3", "There is no such thing as an unfair advantage.", "no", 927318225, 800142407, Spawn)
					elseif choice == 12 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gm_faa98b82.mp3", "The Ratonga are here to teach us that not everything in nature has a purpose.", "sarcasm", 1619896826, 2577563009, Spawn)
	                end
                end
				elseif GOOD then
			        if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else				    
	            local choice = math.random(1,11)
	            
					if choice == 1 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_good_1_hail_gm_ac88207.mp3", "The goal isn't always catching the pray, rather, its the chase.", "scheme", 152508601, 1517122703, Spawn)
					elseif choice == 2 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_good_1_hail_gm_1f19f9ef.mp3", "Tact is the nack of making a point without making an enemy.", "agree", 216091278, 201326460, Spawn)
					elseif choice == 3 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_44b38e8c.mp3", "Was it me, or did I just see something move over there?", "doubletake", 3599874332, 7461740, Spawn)
					elseif choice == 4 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_6b58eeec.mp3", "I keep my whit as sharp as my claws!  I never know which one I'll need to rely on.", "wink", 3670900464, 1104739099, Spawn)
					elseif choice == 5 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_efb7fbaf.mp3", "Those gnolls don't scare me... well, mabye a little.", "no", 3516960004, 2208859201, Spawn)
					elseif choice == 6 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_f8a140a8.mp3", "Who would have known that one's paws could become so stale from pie?", "confused", 2791956809, 3567994575, Spawn)
					elseif choice == 7 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_3fd40378.mp3", "Keep your ears open!", "listen", 1525987814, 3335262701, Spawn)
					elseif choice == 8 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_8647b14e.mp3", "I am no ordinary Kerra!", "sniff", 3153151742, 2518854444, Spawn)
					elseif choice == 9 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_a981f363.mp3", "It is better to swallow your pride than to lose your life.", "nod", 2178756893, 2548415956, Spawn)
					elseif choice == 10 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_aoi_gm_a3788b05.mp3", "Watch the tail.. watch the tail!", "cringe", 1917905155, 2497295526, Spawn)
					elseif choice == 11 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_aoi_gm_c0c28955.mp3", "Honest as a Kerra when the fish are out of reach.", "nod", 306655625, 4097745959, Spawn)
	     															
					end
			    end
			end
			elseif gender == FEMALE then
			    if EVIL then
			        if FPfaction < 0 then 
                    FactionChecking(NPC, Spawn, faction)
				    else  			        
                
			    local choice = math.random(1,11)
	            
                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_164ffd98.mp3", "I can purr my way out of anything.", "wink", 4263608089, 504552247, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_8a065b90.mp3", "I am a kindly master just so long you remember your place.", "blush", 2082721768, 1564608519, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_5beacd8e.mp3", "Deep down we're all driven by urges.  I just have the courage to live by them!", "agree", 1853094076, 969912178, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_3fe55b38.mp3", "Why, don't I seem to be the popular one today?", "ponder", 946610860, 3180537294, Spawn)
                    	elseif choice == 5 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_64bc078d.mp3", "I like to run around, but I also like to curl up in a warm spot.", "happy", 2561376622, 3362255693, Spawn)
                    	elseif choice == 6 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_8036c73a.mp3", "Some say Kerra are sneaky, evil, and cruel.  True, but we have many other fine qualities as well!", "scheme", 3069604589, 1146575713, Spawn)
                    	elseif choice == 7 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_895b5e07.mp3", "Everything has a price.  What's yours?", "nod", 1824945885, 3397633823, Spawn)
                     	elseif choice == 8 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_996fcd0c.mp3", "I wouldn't be caught dead wearing something like that!", "no", 1201795983, 50062692, Spawn)
                    	elseif choice == 9 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_9f680679.mp3", "I'd kill to know what the overlord has in that citadel.", "scheme", 4188476986, 3254348731, Spawn)
                     	elseif choice == 10 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_aoi_gf_c9f2b4f1.mp3", "Friendship is too costly around here.", "sigh", 1983387905, 3075550393, Spawn)
                    	elseif choice == 11 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_b2ec9ec5.mp3", "I can smell a champion, and you're no champion.", "stinky", 1536648011, 960141252, Spawn)
                   
               	                   	
                    	end
                    end	
				elseif GOOD then
			        if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else				    
                	local choice = math.random(1,10)
            
                    	if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_28445ab7.mp3", "I don't spend as much time grooming as the others say I do.", "sulk", 2675025847, 2696760246, Spawn)
	                    elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_6c9e41c6.mp3", "Don't think that I'm silly, I just happen to like the simple little things.", "flustered", 1426227770, 2304966225, Spawn)
                        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_63881722.mp3", "I'm trying to find a new seasoning for my dried fish.", "ponder", 3802648946, 1171453079, Spawn)
                        elseif choice == 4 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_583e9df5.mp3", "I'm listening!  What is it?", "listen", 1016240701, 776819905, Spawn)
	                    elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_4424ae28.mp3", "How sweet my Tom is to leave such a gift at my doorstep.", "giggle", 206344530, 3671427567, Spawn)
	                    elseif choice == 6 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_eabd8556.mp3", "I heard the Rotanga play it for fun.", "shrug", 1671177, 4253987454, Spawn)
	                    elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_b155e999.mp3", "You won't see me near any of those fountains!", "no", 2380586558, 4131988901, Spawn)
	                    elseif choice == 8 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_e6e5f65f.mp3", "I don't care what they say.  I have a lovely singing voice!", "pout", 2354011280, 3645338272, Spawn)
	                    elseif choice == 9 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_aoi_gf_63950f22.mp3", "Isn't that lovely?  Its just perfect!", "agree", 105644772, 2239483775, Spawn)
	                    elseif choice == 10 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_aoi_gf_9d1dd0e1.mp3", "Time spent with a Kerra is never wasted!", "blush", 797562758, 1364757328, Spawn)
                        end
			   	    end
		         end
		    end

		
		elseif race == OGRE then
			if gender == MALE then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  			    
                	local choice = math.random(1,12)
                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_aoi_gm_68567a75.mp3", "Smite your enemies with no mercy.", "frustrated", 2105760030, 1009467667, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_8e30965a.mp3", "I'm here to conquer and no one is going to stop me.", "wink", 1759444421, 3253544108, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_aoi_gm_dbb40451.mp3", "Watch your step. I'm not forgiving.", "glare", 3270253835, 2410939040, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_82b39f6b.mp3", "In war there is no room for fear.", "agree", 139095494, 3401742216, Spawn)
                    	elseif choice == 5 then
                    	PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_aef9ec6e.mp3", "The best dreams are the flashbacks of the battlefield.", "chuckle", 34784682, 541558536, Spawn)
                    	elseif choice == 6 then
                    	PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_4b96e4f1.mp3", "I've lived this long thanks to my ability to kill.", "thumbsup", 1295486986, 820950525, Spawn)
                    	elseif choice == 7 then
                    	PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_900b92c8.mp3", "Blood, lots of blood on the battlefield.", "confused", 3309525058, 2311238979, Spawn)
                    	elseif choice == 8 then
	                    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_805fa3e9.mp3", "You'd be surprised how easily skulls burst in my fist.", "wink", 292411718, 2806910105, Spawn)
                        elseif choice == 9 then
	                    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_7f5bc8b5.mp3", "Armor could be useful. But I've never needed it.", "smirk", 602319056, 3467693375, Spawn)
                    	elseif choice == 10 then
	                    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_b6f6d58b.mp3", "Sharp teeth, the better to tear flesh with.", "glare", 1727328703, 3032211199, Spawn)
                    	elseif choice == 11 then
                 		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_c13548f0.mp3", "The Overlord knows the strength of the ogres; I'd enjoy reminding the others around here.", "threaten", 3218132325, 996755371, Spawn, 0)
                    	elseif choice == 12 then
                		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_aef9ec6e.mp3", "The best dreams are the flashbacks of the battlefield.", "chuckle", 34784682, 541558536, Spawn, 0)
                   	end	
                     end 	
			elseif gender == FEMALE then
				   end
			
			
		elseif race == RATONGA then
			if gender == MALE then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  			    
	            local choice = math.random(1,9)

	                if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_5e63a07a.mp3", "If winning isn't everything, why do we keep score?", "sneer", 3927334706, 1835318852, Spawn)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_2c495445.mp3", "I dabble in repossessions and personal loans. ", "scheme", 4196817122, 2118800432, Spawn)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_9d45b59e.mp3", "There's no way they're better than us.  We have more.", "thanks", 187163254, 678724024, Spawn)
            	    elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_c698777f.mp3", "I was never even near the bank.", "whome", 3628945834, 3044934463, Spawn)
          	        elseif choice == 5 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_aoi_gm_77ec588f.mp3", "Shuttup!.. an-and tell me what the other idiots is doing!", "scream", 1067250901, 3184475965, Spawn)
            	    elseif choice == 6 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_aoi_gm_a07a0e21.mp3", "Well, whys did'nt's you say so?  That changes everythings!", "ponder", 3142470535, 3537428598, Spawn)
            	    elseif choice == 7 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_6949b435.mp3", "You.. figured out.. somethings th-that never happened!.. and so its all lies!", "heckno", 3372579729, 231666695, Spawn)
           	        elseif choice == 8 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_823edac2.mp3", "Hey!  A deals is a deals, until a better one comes along!", "agree", 2004592633, 659744483, Spawn)
            	    elseif choice == 9 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_f215c30.mp3", "I am no ways interested in that.. glittery thing.. you have!  I promises!", "no", 3269376114, 2020783683, Spawn)
           	        end
                end
	    elseif gender == FEMALE then
	            if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
                    else
			    local choice = math.random(1,8)
            	    if choice == 1 then
                	PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gf_55dfc67a.mp3", "Even a blind ratonga can feel the warm glow of gold.", "happy", 1258231063, 1686655213, Spawn)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gf_13832499.mp3", "I didn't steal that, besides it didn't even fit.", "scold", 950251839, 3594191176, Spawn)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gf_27a99c98.mp3", "I find things that haven't even been lost yet.", "whome", 1136162597, 2259535235, Spawn)
            	    elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gf_e310b68b.mp3", "Never ask when you can just take.  ", "doh", 1994406109, 1294526070, Spawn)
            	    elseif choice == 5 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gf_5aa8fe80.mp3", "It's not true that the kerra always land on their feet.", "giggle", 3437443162, 2325327946, Spawn)
                    elseif choice == 6 then
                	PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gf_27a99c98.mp3", "I find things that haven't even been lost yet.", "whome", 1136162597, 2259535235, Spawn)
                    elseif choice == 7 then
                	PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gf_338379af.mp3", "Risks is part of the games.  Play it for alls its worth!", "scheme", 2615843264, 1281001022, Spawn)
                    elseif choice == 8 then
                	PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gf_a743ae9a.mp3", "That rats snitch better watch her backs tonight!", "shakefist", 3892641048, 724401282, Spawn)
	               	  	               	                
	                end
	    	    end
	    	 end

		
		
		elseif race == TROLL then
			if gender == MALE then                                      --SEE HAIL2 FOR MALE TROLL
			elseif gender == FEMALE then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  			    
            	local choice = math.random(1,12)
            	    if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_d753e09a.mp3", "I like when they not really dead!  It tickles going down!", "itch", 1209825984, 2311485957, Spawn)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_f2709c1f.mp3", "You smell wonderful.  Like chicken.", "sigh", 2782849260, 191866997, Spawn)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_a15b4666.mp3", "Sometimes I sneak into houses and hide under the bed.", "giggle", 2975312620, 2935653424, Spawn)
            	    elseif choice == 4 then
	            	PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_616c3595.mp3", "Gotta nail clothes onto body or I forget to wear them.", "doh", 2977410158, 1117948071, Spawn)
            	    elseif choice == 5 then
	            	PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_20bcb19c.mp3", "Overlord is the strongest troll ever!  He kill twenty of us troll last week.  Wow!", "thumbsup", 829469707, 1999621178, Spawn)
	                elseif choice == 6 then
	            	PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_630d65f1.mp3", "I used to have my own bridge before tasty dark elves took it from me.", "doh", 1590618969, 2701180460, Spawn)
            	    elseif choice == 7 then
	            	PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_22f4ef69.mp3", "Lucky I don't kill you, then eat you!  You luckier!  I don't eat you, then kill you!", "scheme", 1894950839, 2813284738, Spawn)
            	    elseif choice == 8 then
	            	PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_7e735c3b.mp3", "People have so many pretty colors inside them!  Want me to show you?! Hmm?!", "woo", 1455343853, 4263307371, Spawn)
	                elseif choice == 9 then
	            	PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_8300ed84.mp3", "It would have been fun.. to have been on Luclin.. when it blew up!  WeE!", "happy", 3121599387, 285019723, Spawn)
 	                elseif choice == 10 then
	            	PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_df8b21.mp3", "So many things to kill me.  Don't know where to start!", "confused", 158804401, 2959882759, Spawn)
            	    elseif choice == 11 then
	            	PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_aoi_gf_8c8ac0bc.mp3", "If you die, be sure to tell me.  Okay?", "agree", 2279250536, 1602435986, Spawn)
	                elseif choice == 12 then
	            	PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_aoi_gf_5cdd1223.mp3", "Oh, I hope you kill some good person today!", "smile", 2535798381, 710784277, Spawn)
 	                end
			    end
			 end   
			    
		elseif race == WOOD_ELF then
			if gender == MALE then
                if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
                else
            	local choice = math.random(1,13)
                    if choice == 1 then
	          	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_13f00546.mp3", "Patience they say, is a virtue.  It has taken a lot of patience to rebuild our lives so far from home.", "nod", 1108677104, 3869422611, Spawn)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_fcb14e3e.mp3", "We must remain steadfast and vigilant against tyranny.  This will allow nature to shape Norrath around us.", "shakefist", 3130983522, 101511459, Spawn)
	                elseif choice == 3 then
	            	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_62f30b60.mp3", "The Elddar Grove is truly a marvel in these troubled times.", "sigh", 303722838, 1259846495, Spawn)
	                elseif choice == 4 then
	               	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_1568024c.mp3", "I see that you have many adventures ahead of you.  This era of darkness is coming to a close.", "ponder", 3567183056, 3400757896, Spawn)
	                elseif choice == 5 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_75b61001.mp3", "Don't let the nice day fool you.  My knee is acting up, a storm is brewing.  I can smell it.", "stretch", 3641086231, 3980350899, Spawn)
	                elseif choice == 6 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_a2427d62.mp3", "They say time and nature heal all wounds.  Still, some wrongs can never be forgotten.", "sad", 2603397723, 1316741802, Spawn)
                    elseif choice == 7 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_27a6d736.mp3", "I find that a change in attitude often helps me steer through a difficult situation.", "agree", 1273495476, 2557846709, Spawn)
	                elseif choice == 8 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_97a50b10.mp3", "Hello there my fellow adventurer!  In this city, teamwork is what allows us to survive and prosper.", "hello", 1162411642, 2051171798, Spawn)
                    elseif choice == 9 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_a729c22b.mp3", "They say time and nature heal all wounds.  Still, some roles can never be forgotten.", "nod", 970054086, 3496252570, Spawn)
	                elseif choice == 10 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_9350a.mp3", "Keep on your guard.  Even in Qeynos we are not completely invulnerable to attack!", "scold", 2114319546, 1782252134, Spawn)
                    elseif choice == 11 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_9541f1d0.mp3", "Nice to make your aquantince!  I hope you enjoy your stay in our humble city.", "bye", 3115518877, 2344848784, Spawn)
	                elseif choice == 12 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_aoi_gm_a4972edd.mp3", "It was our devotion to truth that enabled us to survive adversity.", "agree", 3728659167, 1934169558, Spawn)
	                elseif choice == 13 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_aoi_gm_de3ef6f8.mp3", "We must calm our emotions through meditation and communion with the spirit of the Eldarr.", "orate", 768027029, 3057323475, Spawn)
                                                                           
                    end
	            end
			elseif gender == FEMALE then
			        if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else			    
            	local choice = math.random(1,10)

            	    if choice == 1 then
	           	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gf_31587971.mp3", "Greetings, friend.  I hope your visit to the city brings both inner peace and prosperity.", "curtsey", 999961843, 2491010297, Spawn)
	                elseif choice == 2 then
	        	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gf_10181485.mp3", "The forces of good are all wrought from the strength of the innocent.", "bow", 1746715399, 2834476927, Spawn)
            	    elseif choice == 3 then
        		    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gf_45ac4aea.mp3", "I never thought it would be so difficult to carry on.  I have no songs left in my heart.", "sigh", 2446660394, 3437698252, Spawn)
            	    elseif choice == 4 then
	           	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gf_46ea1119.mp3", "So much blood and so many lost.  I never believed it would end this way.", "sad", 1351206018, 3386717578, Spawn)
	                elseif choice == 5 then
	        	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gf_67432087.mp3", "We must remain steady against the influence of evil.  Only with perseverance will Qeynos survive!", "shakefist", 927768431, 1576503790, Spawn)
        	        elseif choice == 6 then
        		    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gf_646dc5ff.mp3", "I've found that the right ammount of patients and enthusiasm can open almost any door.", "agree", 1063360943, 3481586683, Spawn)
            	    elseif choice == 7 then
	           	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gf_414392d4.mp3", "As with all relationships in life, sometimes desire can lead to misfortune.  I strive to temper love and discipline.", "ponder", 2120229696, 432481455, Spawn)
	                elseif choice == 8 then
	        	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gf_d31ebb3f.mp3", "I love Qeynos. Though I can still remember the peace and tranquility of Kelethin. How I miss it so!", "sad", 1363914331, 4126926873, Spawn)
	                elseif choice == 9 then
	        	    PlayFlavor(NPC, "voiceover/english/optional2/woodelf_eco_good_2/ft/woodelf/woodelf_eco_good_2_aoi_gf_e67f1023.mp3", "Such a beautiful day!  All I need now is a nice vintage of elven mulberry and my relaxation will be complete.", "yawn", 3245673411, 1934163553, Spawn)
	                elseif choice == 10 then
            		PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_aoi_gf_afb48a33.mp3", "I told him we'd make it.  We made it to Qeynos my friends!  I hope you like our new home.", "cheer", 1733622982, 4215625501, Spawn)
	        	    
	        	    end    
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
end

-------------------------------------------------------------------------------------------

--                                  GenericEcology2Hail

-------------------------------------------------------------------------------------------

function GenericEcology2Hail(NPC, Spawn, faction)
    race = GetRace(NPC)
    spawnRace = GetRace(Spawn)
	gender = GetGender(NPC)
	Qfaction = GetFactionAmount(Spawn,11)
	FPfaction = GetFactionAmount(Spawn,12)
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
	
	if TimeCheck == false then
	TimeCheck = true
	AddTimer(NPC,2500,"ResetTimer")
	if race >= 0 and race <= 18 and gender >= 1 and gender <= 2 then
		if race == BARBARIAN then
			if gender == MALE then -- SEE SPAWN RACE HAIL
			    if EVIL then
			    elseif GOOD then
				end   
			elseif gender == FEMALE then
			    if GOOD then
			    elseif EVIL then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else    
	            local choice = math.random(1,4)

	                if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_7d00f821.mp3", "All those rumors about the people I decapitated are false, trust me. I decapitated many more by my count.", "pout", 2231247084, 2781311359, Spawn)
	                elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_56e1abc5.mp3", "Don't worry. The last time I killed someone was a few months ago. I've almost forgot how its done.", "threaten", 3295546544, 225622615, Spawn)
                	elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_7c898040.mp3", "If I wanted to speak with riff raff like you, you'd know it.", "scold", 2131940659, 1785120161, Spawn)
                 	elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_c76c11b.mp3", "No, I didn't say you could look at me or talk to me for that matter.", "heckno", 1951847708, 3399171438, Spawn)
	                end
	    	    end
		    end
		end    
		
		elseif race == DARK_ELF then
			if gender == MALE then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else    
		       local choice = math.random(1,6)
	               if choice == 1 then
		           PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gm_10f790b8.mp3", "I refuse to be told what to do by simple-minded buffoons!", "no", 2041373045, 1825086337, Spawn)
	               elseif choice == 2 then
		           PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_aoi_gm_23e14704.mp3", "Show your enemies the mercy they deserve: none.", "cutthroat", 1813347600, 2090926840, Spawn)
	               elseif choice == 3 then
		           PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gm_beeaa42c.mp3", "I would never raise a hand to one below my station.  That's what servants are for.", "wink", 1033481133, 1844672914, Spawn)
	               elseif choice == 4 then
	               PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gm_ad69e774.mp3", "I despise low-born scum such as you.  Leave me be.", "bye", 135777579, 1290473150, Spawn)
	               elseif choice == 5 then
	               PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gm_dbd2dbd4.mp3", "Once there was a time when we Teir'Dal were the true masters of Norrath.", "shakefist", 3971986771, 2935281097, Spawn)
	               elseif choice == 6 then
	               PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gm_60bb96c.mp3", "If you do it right, pain is the gift that keeps on giving.", "chuckle", 938348138, 3041886078, Spawn)
		          end	              		              	              		         
		      end
	   		elseif gender == FEMALE then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else
	            local choice = math.random(1,8)

	                if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gf_eb029bed.mp3", "I am sickened by the lack of amenities within this city.", "flustered", 140632112, 1000708438, Spawn)
	                elseif choice == 2 then
	               	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gf_18ec7845.mp3", "Do you honestly believe I would speak with someone like you?", "boggle", 2993277341, 1897394040, Spawn)
	                elseif choice == 3 then
	               	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_aoi_gf_e9678442.mp3", "You may thank me now for gracing you with my presence.", "nod", 362766636, 249197304, Spawn)
                    elseif choice == 4 then
	               	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_hail_gf_eb029bed.mp3", "I am sickened with the lack of amenities within this city!", "sniff", 4143445170, 2458457536, Spawn)
                    elseif choice == 5 then
		            PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_hail_gf_36e1a774.mp3", "Poisoning is always an effective way of winning a debate.", "wink", 84926788, 876892580, Spawn, 0)
                    elseif choice == 6 then
	            	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_hail_gf_8a6fa526.mp3", "Who do those Iksar think they are?  There will be a reckoning one day, I swear.", "shakefist", 3978923373, 3424693067, Spawn, 0)
                    elseif choice == 7 then
             		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_aoi_gf_e9678442.mp3", "You may thank me now for gracing you with my presence.", "royalwave", 362766636, 249197304, Spawn, 0)
                    elseif choice == 8 then
            		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_hail_gf_7fee68f8.mp3", "Everyone knows the Teir'Dal are the true power within Freeport.", "lookaway", 3768775503, 2939885824, Spawn, 0)
	                end
	             end
			  end

			    
		elseif race == DWARF then 
			if gender == MALE then
		    elseif gender == FEMALE then
		    end
	    	
		
	    elseif race== ERUDITE then
			if gender == MALE then
               if EVIL then
				elseif GOOD then
                end
				
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else			        
	           local choice = MakeRandomInt(1,6)

	                if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_2/ft/erudite/erudite_eco_evil_2_hail_gf_251836f2.mp3", "The harder you try, the dumber you look.  Please don\'t let me be the one to stop you.", "curtsey", 3161111023, 90846372, Spawn, 0)
                	elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_2/ft/erudite/erudite_eco_evil_2_aoi_gf_3b47e8b4.mp3", "I will incinerate the next person who does not acknowledge my superiority.", "frustrated", 1620404815, 180939615, Spawn, 0)
                	elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_2/ft/erudite/erudite_eco_evil_2_hail_gf_30a32e42.mp3", "I am unable to grasp the concept of humility.  Perhaps I could watch you for a while?", "confused", 4259595860, 3053187462, Spawn, 0)
                	elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_2/ft/erudite/erudite_eco_evil_2_hail_gf_d021c931.mp3", "If I pretended you weren\'t here, would you go away?", "shrug", 740632684, 1033165397, Spawn, 0)
                	elseif choice == 5 then
            		PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_2/ft/erudite/erudite_eco_evil_2_hail_gf_c9b2ff52.mp3", "When I rule the world, I will enjoy deciding who lives and dies.", "ponder", 3448688096, 4199383884, Spawn, 0)
                	elseif choice == 6 then
            		PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_2/ft/erudite/erudite_eco_evil_2_hail_gf_3a1d92f9.mp3", "The mindless babbling of a simpleton delights me to no end.", "sarcasm", 2419847373, 2143831747, Spawn, 0)
                    end
            	end
				elseif GOOD then
			    end	
			end
			
		    elseif race == FROGLOK then
		    	if gender == MALE then
                elseif gender == FEMALE then
			    end

		elseif race == GNOME then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  			        
                    local choice = math.random(1,10)
                        if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gm_4d2d14ae.mp3", "So many test subjects, so little time.", "sigh", 4071952942, 2215778491, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gm_fc9e7336.mp3", "My work would be so much further along if the voices would stop.", "scream", 4153768257, 1057730606, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gm_b7905eb1.mp3", "No, no, no!!!  That will never work!  The person still needs to breathe, don't they?  Don't they?", "shrug", 4217961596, 2328569229, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gm_3b50e81d.mp3", "For the last time, gnomes didn't make Luclin explode!  We would have gone with disintegration.", "grumble", 1607372881, 3520123002, Spawn)
                    	elseif choice == 5 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gm_87cefc8f.mp3", "I will prove to them that I'm not mad!  If I have to kill everyone of them to prove it, I will!", "dance", 4220511073, 14532676, Spawn)
                    	elseif choice == 6 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gm_a0ec45ef.mp3", "Through the advances in modern magic, anything is possible.", "scheme", 1644993738, 1865011072, Spawn)
                    	elseif choice == 7 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gm_9db76689.mp3", "I must find a wall before I lose this thought!", "frustrated", 835072904, 55030735, Spawn)
	                    elseif choice == 8 then
	                    PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gm_3f3e760a.mp3", "So far, I have found kerrans to have only one life, not nine.  I insist on finding the other eight!", "ponder", 1099412571, 1127198642, Spawn)
                    	elseif choice == 9 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gm_6676fc28.mp3", "I really dislike the word conscience.  Don't you?", "no", 921724824, 3128537430, Spawn)
	                    elseif choice == 10 then
	                    PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gm_34756811.mp3", "How many times must I say it?!  Acid first, then the eyeballs.  Not the otherway around!", "swear", 99921459, 2923203645, Spawn)

      	                end
	            end		        
				elseif GOOD then
                end
			elseif gender == FEMALE then
			    if GOOD then
                elseif EVIL then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  				    
	                local choice = math.random(1,7)

                        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gf_b0e1446f.mp3", "Only an amateur would bother worrying about ethics!", "wink", 2773191651, 675131505, Spawn)
                        elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gf_ba655660.mp3", "If I put crossbows on the heads of sharks, I'm certain they would one day replace guard dogs altogether!", "agree", 377614657, 3505805258, Spawn)
                	    elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gf_bb099045.mp3", "It's interesting how Ratonga always find their way around the maze-like corridors of Temple Street.", "ponder", 3965977474, 2117230268, Spawn)
                	    elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gf_39930e7.mp3", "Good and evil have no place in the pursuit of knowledge.", "nod", 2836283, 3393703988, Spawn)
                	    elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gf_cf624473.mp3", "I told him his skin would grow back in time, but did he listen?", "shrug", 1276299166 , 3081460802, Spawn)
                	    elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gf_be42d521.mp3", "I have no time to waste on safety measures!", "no", 1588984660 , 2899887913, Spawn)
                	    elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gf_a96fdda8.mp3", "If I found the smallest piece of magical residue and cut it in half, I wonder what would happen? ", "scheme", 534591874 , 1834630467, Spawn)
                        end
	    	        end
		        end
            end             

		elseif race == HALF_ELF then
			if gender == MALE then
			    if GOOD then
	                if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  			        
	                local choice = math.random(1,6)
	                    if choice == 1 then
                		PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_768a0c8b.mp3", "Everywhere is walking distance if you have the time!", "agree", 2228417017 , 3880753774, Spawn)
	                    elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_ea435b69.mp3", "I'm gonna get some peicings so I can be unique like everyone else!", "happy", 2468101640 , 903029053, Spawn)
	                    elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_666e9477.mp3", "I think the word 'dualbreed' has a bit more dignity than 'halfelf', don't you?", "ponder", 3563191265 , 3563670932, Spawn)
	                    elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_298c5b7a.mp3", "People just don't understand me!  You'd think it was my hair.", "confused", 1208438852, 749063111, Spawn)
	                    elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_9c815039.mp3", "I can't let what \'they\' say get in the way of my art!", "no", 1111887606, 2356852982, Spawn)
	                    elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_8092bd6e.mp3", "One day I'd like to explore every corner of the oceans!", "smirk", 2508604234, 975747984, Spawn)
	                end
                end
             
				elseif EVIL then
                end
            
			elseif gender == FEMALE then
			    if EVIL then
				elseif GOOD then
				end
			end
	
	
	    elseif race == HALFLING then
			if gender == MALE then
    		elseif gender == FEMALE then
	        end
    		
		
		elseif race == HIGH_ELF then
			if gender == MALE then
			elseif gender == FEMALE then
	    	end
		
		
		
		elseif race == HUMAN then
			if gender == MALE then
			    if EVIL then
                	if FPfaction <0 then
			            local choice = math.random(1,10)
  				        if choice == 1 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_fea511a7.mp3", "You're a stranger ... and I don't talk to strangers.", "sulk", 2430170377, 3065502678, Spawn)
				        elseif choice == 2 then
    				    PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_8d2a0876.mp3", "That look's like an awfully expensive pair of boots there, my friend.", "ponder", 367255988, 2113438867, Spawn)
                	    elseif choice == 3 then
				        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_55c7abb4.mp3", "If you know what's good for ya, you didn't see anything!", "shakefist", 3295550745, 254450600, Spawn)
                	    elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_142b686f.mp3", "I'm going to enjoy watching the Militia slit your throat.", "cutthroat", 507833438, 4154942045, Spawn, 0)
                	    elseif choice == 5 then
                  		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_5195ca4a.mp3", "Do you know what Freeport does to spies?", "scold", 3763693751, 3029107109, Spawn, 0)
                	    elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 980845675, 4241333469, Spawn, 0)
                	    elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 1773924149, 2192447994, Spawn, 0)
                	    elseif choice == 8 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_ef0ff5c7.mp3", "You're a stranger ... and I don't talk to strangers.", "sulk", 2675223743, 1399829526, Spawn, 0)
                	    elseif choice == 9 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 3543602520, 290613226, Spawn, 0)
                	    elseif choice == 10 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_e5838bd0.mp3", "Fool! The Overlord is watching you as we speak.", "lookaway", 2642325989, 4260235172, Spawn, 0)
				        end
				    else
	                local choice = math.random(1,5)
                        if choice == 1 then
                        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gm_dfce6d9.mp3", "You won't live long in this city, fiend.", "nod", 3648628674, 701743400, Spawn, 0)
            	        elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gm_daf01a19.mp3", "If I had another five or six ales, maybe I wouldn't mind talking to you.", "chuckle", 2320297447, 2667582898, Spawn, 0)
            	        elseif choice == 3 then
		                PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gm_e029416.mp3", "You're lucky there are witnesses watching us right now.", "cutthroat", 2950300370, 3231135751, Spawn, 0)
             	        elseif choice == 4 then
                  		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gm_34b6867c.mp3", "Fool! The Overlord is watching you as we speak.", "lookaway", 1513887633, 3325471984, Spawn, 0)
              	        elseif choice == 5 then
                  		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gm_c467886b.mp3", "If you're looking for trouble, I've got a whole fistful of it waiting for you.", "threaten", 2550764265, 16200429, Spawn, 0)
                      end
                    end
				elseif GOOD then
			    end	
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
                    local choice = math.random(1,7)
                    	if choice == 1 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 3939340779, 2731540062, Spawn, 0)
                    	elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_55c7abb4.mp3", "I can't be seen associating with you, worm.", "glare", 2563439969, 3192575181, Spawn, 0)
                    	elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 3457217785, 3805482956, Spawn, 0)
                    	elseif choice == 4 then
               		    PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 4060680490, 1058882345, Spawn, 0)
                    	elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_142b686f.mp3", "I'm going to enjoy watching the Militia slit your throat.", "cutthroat", 605073324, 777296863, Spawn, 0)
                    	elseif choice == 6 then
				        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_5195ca4a.mp3", "Do you know what Freeport does to spies?", "scold", 2290091922, 1343726185, Spawn, 0)
                    	elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_ef0ff5c7.mp3", "You're a stranger ... and I don't talk to strangers.", "sulk", 1921159672, 254720018, Spawn, 0)
                       end
				    else  			        
	                local choice = math.random(1,12)
	                    if choice == 1 then
	                   	PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_aoi_gf_603e4394.mp3", "Was it just me, or did I hear something jingling in your coin purse?", "listen", 2502377022, 3322258847, Spawn)
	                    elseif choice == 2 then
	                   	PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gf_ed2258.mp3", "If you keep bothering me, I'll scream for help!!", "scream", 663270309, 1265685906, Spawn)
	                    elseif choice == 3 then
	                   	PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gf_b0f7eb94.mp3", "Unless you know of a way to make some quick coin, we have no reason to talk.", "scold", 2879661704, 1437151896, Spawn)
	                    elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gf_e0c9d202.mp3", "I'd give anything to leave this godsforsaken cesspool of a city.", "beg", 3902173006, 861701075, Spawn)
                    	elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gf_975b4774.mp3", "I wish those guards would just leave us alone.", "sulk", 1551750792, 514840364, Spawn)
                    	elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gf_e1648d49.mp3", "What made you think I wanted to talk to you?", "shrug", 3374792551, 3346072463, Spawn)
                    	elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gf_79813683.mp3", "You'd be a lot more interesting with a dagger sticking out of your back.", "ponder", 126289530, 1128715810, Spawn)
                    	elseif choice == 8 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gf_501caebd.mp3", "Didn't I see your corpse in the alley?  Hmmm ... Maybe it was someone else.", "confused", 601911164, 3281892455, Spawn)
                    	elseif choice == 9 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gf_216216bd.mp3", "The next time that guy leers at me, I'm gonna punch him in the throat.", "threaten", 185071498, 1736193360, Spawn)
                    	elseif choice == 10 then
	                   	PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_aoi_gf_5dbd05d1.mp3", "Does anyone in this city bathe?", "stinky", 3778681255, 1495535273, Spawn)
                    	elseif choice == 11 then
	                   	PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gf_d2844e25.mp3", "You can avoid trouble around here as long as you don't make eye contact with anyone.", "stare", 1255908565, 2073931972, Spawn)
	                	elseif choice == 12 then
	                   	PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gf_2a5ed43.mp3", "Only the strong survive around here.  Nice knowing you!", "bye", 2636161808, 2711680191, Spawn)
	                                 	                    
	                    end
	                 end   
 
				elseif GOOD then
                end
            end
		
		elseif race == IKSAR then
			if gender == MALE then
		    elseif gender == FEMALE then
			end
			
		elseif race == KERRA then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  			        
                	local choice = math.random(1,7)

                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_9f680679.mp3", "I'd kill to know what the overlord has in that citadel!", "scheme", 3285282644, 3219725501, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_3fe55b38.mp3", "Why, don't I seem to be the popular one today.", "whome", 1475998222, 3731288810, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_895b5e07.mp3", "Everything has a price!  What's yours?", "shrug", 599093835, 2436498104, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_8a065b90.mp3", "I am a kindly master, just so long as you remember your place.", "scold", 1400094764, 1979877393, Spawn)
                    	elseif choice == 5 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_aoi_gf_c9f2b4f1.mp3", "Friendship is too costly around here.", "no", 1460934904, 2228770988, Spawn)
                    	elseif choice == 6 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_5beacd8e.mp3", "Deep down we're all motivated by the same urges.  I just have the courage to live by them.", "agree", 3328230174, 1668734281, Spawn)
                    	elseif choice == 7 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_8036c73a.mp3", "Some say Kerra are sneaky, evil, and cruel.  True.  We have many other fine qualities as well!", "scheme", 98388570, 2862243050, Spawn)
                    	end
                    end
				elseif GOOD then
			    end
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  			        
	                    local choice = MakeRandomInt(1,6)

	                    if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_895b5e07.mp3", "Everything has a price!  What\'s yours?", "shrug", 599093835, 2436498104, Spawn, 0)
	                    elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_3fe55b38.mp3", "Why, don\'t I seem to be the popular one today.", "whome", 1475998222, 3731288810, Spawn, 0)
                    	elseif choice == 3 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_8a065b90.mp3", "I am a kindly master, just so long as you remember your place.", "scold", 1400094764, 1979877393, Spawn, 0)
	                    elseif choice == 4 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_9f680679.mp3", "I\'d kill to know what the overlord has in that citadel!", "scheme", 3285282644, 3219725501, Spawn, 0)
	                    elseif choice == 5 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_aoi_gf_c9f2b4f1.mp3", "Friendship is too costly around here.", "sigh", 1460934904, 2228770988, Spawn, 0)
	                    elseif choice == 6 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_5beacd8e.mp3", "Deep down we're all motivated by the same urges.  I just have the courage to live by them.", "agree", 3328230174, 1668734281, Spawn, 0)
 	                                                               
                        end	
                    end  
				elseif GOOD then
			    	if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  			        
                	local choice = math.random(1,7)

                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_good_2/ft/kerran/kerran_eco_good_2_hail_gf_b155e999.mp3", "You won't see me near any of those fountains!", "heckno", 1123179326, 271243686, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_good_2/ft/kerran/kerran_eco_good_2_hail_gf_eabd8556.mp3", "I heard the ratonga play for fun!", "giggle", 1138200584, 1711242450, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_good_2/ft/kerran/kerran_eco_good_2_hail_gf_28445ab7.mp3", "I don't spend as much time grooming as the others say I do.", "sigh", 1571714850, 824504933, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_good_2/ft/kerran/kerran_eco_good_2_hail_gf_4424ae28.mp3", "How sweet my Tom is to leave such a gift at my door step.", "happy", 2235953436, 2446050201, Spawn)
                    	elseif choice == 5 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_good_2/ft/kerran/kerran_eco_good_2_hail_gf_63881722.mp3", "I'm trying to find a new seasoning for my dried fish.", "ponder", 3322224010, 1564701262, Spawn)
                    end					    
		        end
		    end
	    end
	    
		elseif race == OGRE then
			    if gender == MALE then
			    elseif gender == FEMALE then
	    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  			    
                	local choice = math.random(1,9)
                        if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_2/ft/ogre/ogre_eco_evil_2_aoi_gf_b47ba6c8.mp3", "There is never enough bloodshed in this city.", "grumble", 2738684859, 1457757225, Spawn)
                        elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_2/ft/ogre/ogre_eco_evil_2_aoi_gf_d70efe42.mp3", "Revel in the bloodshed.", "yeah", 3553897837, 3037866776, Spawn)
                        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_2/ft/ogre/ogre_eco_evil_2_hail_gf_ed0025c7.mp3", "Drinking the blood of your enemy only makes you stronger.", "chuckle", 2597493569, 3831571194, Spawn)
                        elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_2/ft/ogre/ogre_eco_evil_2_hail_gf_ebf3ef37.mp3", "In the heat of battle is the only way to die.", "smile", 1938773892, 770731252, Spawn)
                        elseif choice == 5 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_2/ft/ogre/ogre_eco_evil_2_hail_gf_9709be04.mp3", "I can hear breaking bones from many cogs away.", "listen", 2906479371, 2381016468, Spawn)
	                    elseif choice == 6 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_2/ft/ogre/ogre_eco_evil_2_hail_gf_55c24433.mp3", "I use fear to kill my enemies.", "stare", 1684658713, 4281146719, Spawn)
                	    elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_2/ft/ogre/ogre_eco_evil_2_hail_gf_9709be04.mp3", "I can hear breaking bones from many cogs away.", "listen", 2906479371, 2381016468, Spawn)
                	    elseif choice == 8 then
                		PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_2/ft/ogre/ogre_eco_evil_2_hail_gf_1a13bb5d.mp3", "Armor is just an extension of my skin.", "flex", 1229374135, 1249250407, Spawn)
                	    elseif choice == 9 then
                		PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_2/ft/ogre/ogre_eco_evil_2_hail_gf_b16f51a5.mp3", "I travel. As long as its to inflict pain.", "sneer", 3351897420, 1929551634, Spawn)
                    	end
			        end			        
			    end
			
			
		elseif race == RATONGA then
		        if gender == MALE then
	    	    if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  			    
                	local choice = math.random(1,3)
                        if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_evil_2/ft/ratonga/ratonga_eco_evil_2_hail_gm_6983d4f4.mp3", "Do you ever get the feeling someone's watching you?", "doubletake", 1443012999, 225264564, Spawn)
                        elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_evil_2/ft/ratonga/ratonga_eco_evil_2_aoi_gm_77ec588f.mp3", "Shutup!  And tell me what the other idiot is doing!", "swear", 1839404420, 417472111, Spawn)
                        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_evil_2/ft/ratonga/ratonga_eco_evil_2_aoi_gm_a07a0e21.mp3", "Well, why didn't you say so!  That changes everything.", "doh", 392770009, 1670445170, Spawn)
                        end
                    end
	            elseif gender == FEMALE then
	    	    end
            
		elseif race == TROLL then
			    if gender == MALE then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  
            	local choice = math.random(1,7)
            	    if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_f9319fbb.mp3", "I like killing things just to see them die.  Don't you?", "giggle", 2044250119, 1492935869, Spawn)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_60a4050b.mp3", "Me likes it when they are scared.  It tastes better that way.", "thanks", 2363588727, 2924742015, Spawn)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_46facad7.mp3", "If I eats you now, I wouldn't know what you were going to say.", "wink", 191047961, 2382342743, Spawn)
            	    elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_ae48977.mp3", "You can't eat money. Then why people care about it so much?", "wince", 404920869, 3492621289, Spawn)
                    elseif choice == 5 then
        	        PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_5afa1e7.mp3", "The Overlord needs less gold.  Eat more people!  He won't miss them!", "scheme", 2782977705, 136776719, Spawn)
            	    elseif choice == 6 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_f28915a9.mp3", "Friends are good.. until you don't need them anymore!", "agree", 2727950602, 4200124273, Spawn)
            	    elseif choice == 7 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_d5eb6fc.mp3", "Ow! Head hurts when I do that thing.. with my brain! Owww!", "scream", 1058602010, 3235323095, Spawn)
    	            end
        	    end			        
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

-------------------------------------------------------------------------------------------

--                                  GenericRaceCheckHail

-------------------------------------------------------------------------------------------

function GenericRaceCheckHail(NPC, Spawn, faction)
    race = GetRace(NPC)
    spawnRace = GetRace(Spawn)
	gender = GetGender(NPC)
	Qfaction = GetFactionAmount(Spawn,11)
	FPfaction = GetFactionAmount(Spawn,12)
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
	
		if TimeCheck == false then                                          -- checks timer
	       TimeCheck = true                                                 -- sets timer
	AddTimer(NPC,2500,"ResetTimer")                                         -- starts reset clock
	if race >= 0 and race <= 18 and gender >= 1 and gender <= 2 then        -- verify's NPC race/gender
		if race == BARBARIAN then                                           -- begins NPC race check
			if gender == MALE then                                          -- begins NPC gender check
			    if EVIL then                                                -- begins NPC faction/location check
			    	if FPfaction <0 then                                    -- player faction check to determine resposne
                    FactionChecking(NPC, Spawn, faction)
				    else    
				    local choice = math.random(1,3)                         -- player passes faction check, procedes to dialogue
                        if choice == 1 then	
		                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_hail_gm_431b37d1.mp3", "Watch yerself, this city can be rough.", "wink", 1560541305, 226492698, Spawn)
		                elseif choice == 2 then	
                        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_hail_gm_dd0b4913.mp3", "Hah! New around these parts?", "hello", 3252919562, 342739868, Spawn)
                        elseif choice == 3 then				        
				            if spawnRace == BARBARIAN then
                            PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_barbarian_gm_df05bfb0.mp3", "You can push anyone around here except the ogres and trolls.", "nod", 1644989273, 3794783731, Spawn)
                            elseif spawnRace == DARK_ELF then
                            PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_barbarian_gm_df05bfb0.mp3", "Straying a bit, are we?", "glare", 4033200255, 1327891280, Spawn)
                            elseif spawnRace == DWARF then
      		                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_dwarf_gm_bbcba7d5.mp3", "Nasty and short. Foul little creature.", "doh", 3043791526, 2631752167, Spawn, 0)                          
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_erudite_gm_6a360eb1.mp3", "I never was one for the books.  I guess that's why we leave them to you!", "grumble", 271638372, 933214140, Spawn)
                            elseif spawnRace == FROGLOK then
                    		PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_froglok_gm_a725c08a.mp3", "Hey there! Is it true you taste like chicken?", "ponder", 1270685983, 3669150065, Spawn, 0)
                            elseif spawnRace == HALF_ELF then
                    		PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_halfelf_gm_cd562147.mp3", "Yer lucky ya take after yer human side!", "peer", 1663140408, 661893443, Spawn, 0)
                            elseif spawnRace == HUMAN then
                    		PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_human_gm_d03a5e12.mp3", "I've already made my tribute to the Overlord this week.", "lookaway", 3410425137, 3010931289, Spawn, 0)
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_iksar_gm_df4e01c0.mp3", "Scales are obviously tipped in my favor... Eh? Heh Hehuheh!", "chuckle", 2060746310, 2782545175, Spawn)
                            elseif spawnRace == KERRA then
		                    PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_kerra_gm_a4259991.mp3", "With all that fur, don't you get hot out in the Commonlands?", "shrug", 3410911191, 2574627181, Spawn, 0)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_ogre_gm_85d4dfd9.mp3", "If your brain were half as good as your brawn, you'd be a quarter of the warrior I am!", "flex", 3300429686, 1230722065, Spawn)
                            elseif spawnRace == RATONGA then
	                    	PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_ratonga_gm_773f13bf.mp3", "What's the matter, cat got yer tongue? Har har har!", "point", 1345553103, 3128526950, Spawn)
                            else
                           	    local check = math.random(1,2)
                                if check == 1 then	
                                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_hail_gm_431b37d1.mp3", "Watch yourself.  This city can be rough!", "glare", 1560541305, 226492698, Spawn)
                                elseif check == 2 then	
                                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_hail_gm_dd0b4913.mp3", "Hah! New around these parts?", "hello", 3252919562, 342739868, Spawn)
                                end
				            end
				        end
				     end   
			    elseif GOOD then
			        if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
                    else
			    	local choice = math.random(1,3)
	                    if choice == 1 then --racial check
	                        if spawnRace == BARBARIAN then
				                if GetLevel(Spawn) >=50 then
				                local choice = math.random(1,4)     --Calls in Status Praise VO
				                else	                            
	                           	local check = math.random(1,2) 
	                           	    if check == 1 then
					                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_barbarian_gm_de9e8da3.mp3", "Mithaniel Marr never left us.  He will always be apart of our tribe, as long as we remain strong and brave.", "nod", 3368668310, 2187585076, Spawn)
                                    elseif check == 2 then
					                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_barbarian_gm_e7f2037c.mp3", "Perhaps we should go for a Hallas cold brew sometime and share stories about our ancestors.", "wink", 2490006983, 800833318, Spawn)
                                    elseif choice == 3 then	
                                    PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_status_gm_7eecc9cb.mp3", "I can only hope my young cubs would grow to have some measure of your bravery.", "thank", 168452918, 1251241094, Spawn)
                                    elseif choice == 4 then	
                             		PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_status_gm_aac1e025.mp3", "Your bravery extends far beyond the reach of Norrath. You bring great honor to the wolves of the north.", "bow", 2991186258, 3183137783, Spawn, 0)
                                   end
                                end
                            elseif spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_darkelf_gm_d26c37f4.mp3", "Haha! What color does a dark elf bleed, care to tell?", "chuckle", 1543653024, 615533497, Spawn)
	                        elseif spawnRace == DWARF then
	                           	local check = math.random(1,2) 
	                           	    if check == 1 then
					                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_dwarf_gm_a8e32501.mp3", "Its a pleasure to see such strength in an ally so short!", "nod", 4130131362, 1400424363, Spawn)
                                    elseif check == 2 then
					                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_dwarf_gm_e7f2037c.mp3", "Perhaps we should go for a Hallas cold brew sometime and share stories about our ancestors.", "wink", 3235630615, 1033414770, Spawn)
                                    end
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_erudite_gm_e216a8ba.mp3", "Hah! How do you keep warm without any hair on your body?  The tundra would snap your body like an icecicle.", "boggle", 1786373260, 3931240958, Spawn)
                            elseif spawnRace == FROGLOK then
                    		PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_froglok_gm_cfe91e69.mp3", "I knew Mithaniel Marr wouldn't leave us forever. I had a feeling he would return to watch over us.", "", 906365937, 4235011592, Spawn, 0)
                            elseif spawnRace == GNOME then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_gnome_gm_3d767081.mp3", "Heh heh.  I'm sorry.  Your constant chatter about cogs and sprockets makes no sense to me.", "confused", 469705290, 4090933674, Spawn)
                            elseif spawnRace == HALF_ELF then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_halfelf_gm_4794558f.mp3", "If you really want to prove your courage in battle, get yourself a woad. Those can't be taken off so easily.", "nod", 1356161649, 134319671, Spawn)
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_halfling_gm_a61ee5ac.mp3", "Ah, I would have trod upon you had you not spoken up.", "boggle", 2064484408, 3865062610, Spawn)
                            elseif spawnRace == HIGH_ELF then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_highelf_gm_310c09cb.mp3", "Hail to you as well, long lived one.", "hello", 2115413618, 2434193113, Spawn)
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_iksar_gm_88d6b89c.mp3", "Just because Qeynos isn't a freezing climate, doesn't mean a cold-blooded reptile is welcome here.", "scold", 992683295, 3962864221, Spawn)
                            elseif spawnRace == KERRA then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_kerra_gm_8a6840fc.mp3", "You would do well in Hallas in that fur coat.", "agree", 538073635, 999238426, Spawn)
                            elseif spawnRace == TROLL then
                            PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_troll_gm_e224c510.mp3", "I don't care to hear what races are tasty. I prefer you keep that to your swamp friends.", "heckno", 3520208270, 3768333436, Spawn, 0)
                            elseif spawnRace == RATONGA then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_ratonga_gm_4b0a3096.mp3", "Watch where you're going. I might step on you should I choose to forget you were near me.", "point", 783852429, 746396829, Spawn)
                            elseif spawnRace == TROLL then
                            PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_troll_gm_e224c510.mp3", "I don't care to hear what races are tasty. I prefer you keep that to your swamp friends.", "heckno", 3520208270, 3768333436, Spawn, 0)
                            elseif spawnRace == WOOD_ELF then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_woodelf_gm_8dff8cc4.mp3", "Eat more heartily to stand firm, even in the strongest winds!", "happy", 810996081, 628715345, Spawn)
			          	    else
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
                                    PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_d571c130.mp3", "I'm not used to this weather, but my people can adapt to any change in order to survive.", "no", 3421348121, 1004876500, Spawn)
                                    elseif check == 2 then	
                                    PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_5a6b643f.mp3", "Treasures from the past can be found throughout the lands for those who care to look.", "nod", 3614931515, 1601871948, Spawn)
				       		        end                   
		                    end
                        elseif choice == 2 then	
                        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_d571c130.mp3", "I'm not used to this weather, but my people can adapt to any change in order to survive.", "no", 3421348121, 1004876500, Spawn)
                        elseif choice == 3 then	
                        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_5a6b643f.mp3", "Treasures from the past can be found throughout the lands for those who care to look.", "nod", 3614931515, 1601871948, Spawn)
                        end                        				    
				    end 
			    end 
			 
			elseif gender == FEMALE then
			    if GOOD then
			       
			    elseif EVIL then
	    	    end
		    end
		    
		elseif race == DARK_ELF then
                if gender == MALE then			    	
			    	if FPfaction <0 then                                  
                    FactionChecking(NPC, Spawn, faction)
				    else
				    local choice = math.random(1,3)                         
                        if choice == 1 then	
		                PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_hail_gm_eb5fa2b6.mp3", "One day, our lot will improve here!", "nod", 1462094560, 868024293, Spawn)
		                elseif choice == 2 then	
                        PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_hail_gm_8656f5c7.mp3", "Its a fine day for evil to flourish!", "scheme", 2232955380, 3080497078, Spawn)
                        elseif choice == 3 then				        
				            if spawnRace == BARBARIAN then
                            PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_barbarian_gm_46b8ab28.mp3", "Get away from me, brute!", "threaten", 1806259132, 4035381096, Spawn)
                            elseif spawnRace == DARK_ELF then
				                if GetLevel(Spawn) >=50 then
                                local choice = math.random(1,4)
                                else                                
                         	    local check = math.random(1,2)
                                if check == 1 then	
                                PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_darkelf_gm_2fb22326.mp3", "We'll rise again, and then nothing can stop us.", "agree", 1301346574, 4276784701, Spawn)
                                elseif check == 2 then	
                                PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_darkelf_gm_54a02968.mp3", "What a foul dirty place this is compared to Neriak!", "stinky", 3252919562, 342739868, Spawn)
		                        elseif choice == 3 then	
                                PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_status_gm_3139de2e.mp3", "Innoruk's blood you're powerful!", "boggle", 4048173225, 4136711044, Spawn)
		                        elseif choice == 4 then	
                                PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_status_gm_b86ec55f.mp3", "You'll do nicely when we make our play!", "agree", 234032343, 1835792122, Spawn)
                                end
                               end 
                            elseif spawnRace == DWARF then
                    		PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_dwarf_gm_e76b04be.mp3", "Foul. It's a testament to our ruler's weakness that he lets your ilk in here.", "sad", 3576789141, 2531430603, Spawn, 0)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_erudite_gm_592ca86a.mp3", "Where has all of your vaunted intelligence gotten you?", "chuckle", 2330017595, 3612340219, Spawn)
                            elseif spawnRace == GNOME then
					        PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_gnome_gm_8081d786.mp3", "I've no use for a toy soldier.", "no", 2452036802, 1703948999, Spawn)
                            elseif spawnRace == HALF_ELF then
					        PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_halfelf_gm_8677807d.mp3", "Half perfect, half diseased.  Still disgusting!", "sniff", 512466716, 4175253448, Spawn)
                            elseif spawnRace == HIGH_ELF then                        
                    		PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_highelf_gm_9eab37c6.mp3", "An evil high elf?  Dear Innoruuk, we've prevailed!", "cheer", 172789471, 2283627974, Spawn, 0)
                            elseif spawnRace == HUMAN then
					        PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_human_gm_3694a5ae.mp3", "Were your Overlord not around, we Tier'Dal would have crushed Freeport.", "sarcasm", 3436507932, 1702035959, Spawn)
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_iksar_gm_4bb5d364.mp3", "Back off scaley!  No antcient civilization saves you from the same fate I share!", "boggle", 3246025874, 2970292992, Spawn)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_ogre_gm_8cf93c6a.mp3", "The Green Mist missed a few spots.  Its a shame the gods were too weak to finish what they started.", "shrug", 181661249, 784055085, Spawn)
                            elseif spawnRace == RATONGA then
	                    	PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_ratonga_gm_ac7f4092.mp3", "A talking rat?  Ugh, go play with a Ke.", "point", 396338587, 547395314, Spawn)
                            elseif spawnRace == TROLL then
	                    	PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_troll_gm_95179ecf.mp3", "Its a shame the Thexian rulers were weak and allowed you trolls to live in Neriak.", "ponder", 2126071785, 4235896141, Spawn)
                            else
                           	    local check = math.random(1,2)
                                if check == 1 then	
                                PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_hail_gm_eb5fa2b6.mp3", "One day, our lot will improve here!", "nod", 1462094560, 868024293, Spawn)
		                        elseif choice == 2 then	
                                PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_hail_gm_8656f5c7.mp3", "Its a fine day for evil to flourish!", "scheme", 2232955380, 3080497078, Spawn)
                                end
				            end
				        end
			        end
			     
		elseif gender == FEMALE then
	    end

		elseif race == DWARF then
			if gender == MALE then
		    elseif gender == FEMALE then
		    			if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)

				    else
			    local choice = math.random(1,3)
			        if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_race_good/ft/eco/good/dwarf_eco_race_good_hail_gf_bce06b4a.mp3", "A long day of adventure'n makes one long for home, don't it?", "smile", 2210732036, 3144200859, Spawn)
			        elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_race_good/ft/eco/good/dwarf_eco_race_good_hail_gf_c221a26e.mp3", "Ah, what I wouldn't give to be cradle'n a mug of good dwarven ale.", "ponder", 409704670, 4015848226, Spawn)
				    elseif choice == 3 then
                            if spawnRace == HIGH_ELF then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_highelf_gm_310c09cb.mp3", "Elves have been neighbors with us for so long and you still can't handle a couple of dwarven ales.  Don't give me your excuse for elven wine.  That's not real alchohol!", "scold", 2416513387, 2396192573, Spawn)
                            end
                        else
			        local choice = math.random(1,2)
			        if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_race_good/ft/eco/good/dwarf_eco_race_good_hail_gf_bce06b4a.mp3", "If you haven't done ten times your weight in dirt, you haven't done a lick of work.", "no", 2210732036, 3144200859, Spawn)
			        elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_race_good/ft/eco/good/dwarf_eco_race_good_hail_gf_c221a26e.mp3", "Where are ya goin?  It's impolite to go off and fight without invite'n me!", "ponder", 409704670, 4015848226, Spawn)
				    end
				end
		    end
	    end	
		
	    elseif race== ERUDITE then
			if gender == MALE then
			    if EVIL then
			      	if FPfaction <0 then                                  
                    FactionChecking(NPC, Spawn, faction)
				    else
				    local choice = math.random(1,3)                         
                        if choice == 1 then	
                        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gm_43bd22f2.mp3", "Greetings.  One day I hope everyone bows before my intellect.", "hello", 3316681960, 3617003101, Spawn)		            
                        elseif choice == 2 then	                        
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gm_9bc2cf77.mp3", "My time is too valuable to be spent chatting.", "bye", 788162420, 1166698384, Spawn)
                        elseif choice == 3 then				        
				            if spawnRace == BARBARIAN then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_ogre_gm_963391fd.mp3", "Brute you were, and always shall be.", "scold", 181661249, 784055085, Spawn)
                            elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_dwarf_gm_62e8be6f.mp3", "Oh dear, its rather like a small barbarian.", "sneer", 803690924, 2650545024, Spawn)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_erudite_gm_c5bc0931.mp3", "Can you imagine why we're not ruling?", "nod", 1050007971, 1742690856, Spawn)
                            elseif spawnRace == IKSAR then
	                	    PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_iksar_gm_2cdba125.mp3", "It's a shame Cabalis isn't around, it would have made an interesting study.", "sigh", 3903013371, 226829195, Spawn)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_ogre_gm_963391fd.mp3", "Brute you were, and always shall be.", "scold", 181661249, 784055085, Spawn)
                            elseif spawnRace == RATONGA then
	                	    PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_ratonga_gm_4d3aaca.mp3", "One day, I may have use for your services, sneaky.", "nod", 1373077305, 3004061362, Spawn)
                            else
                           	    local check = math.random(1,2)
                                if choice == 1 then	
                                PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gm_43bd22f2.mp3", "Greetings.  One day I hope everyone bows before my intellect.", "hello", 3316681960, 3617003101, Spawn)		               
                                elseif choice == 2 then	                        
	                	        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gm_9bc2cf77.mp3", "My time is too valuable to be spent chatting.", "bye", 788162420, 1166698384, Spawn)
                                end
				            end
				        end
			        end
			    
                    	
				elseif GOOD then
                end
				
			elseif gender == FEMALE then
			    if EVIL then
			      	if FPfaction <0 then                                  
                    FactionChecking(NPC, Spawn, faction)
				    else
				    local choice = math.random(1,3)                         
                        if choice == 1 then	
                        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gf_43bd22f2.mp3", "Greetings.  One day I hope everyone bows before my intellect.", "hello", 833705169, 3091207712, Spawn)		                	
                        elseif choice == 2 then	                        
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gf_9bc2cf77.mp3", "My time is too valuable to be spent chatting.", "bye", 3939605048, 2460746424, Spawn)
                        elseif choice == 3 then				        
                            if spawnRace == DARKELF then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_darkelf_gf_233d5f4f.mp3", "Salutations, dark one.", "hello", 2890047865, 1995916608, Spawn)
                            elseif spawnRace == ERUDITE then
                                local check = math.random(1,2)
                                if choice == 1 then
	                	        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gf_2b43ed1a.mp3", "This lost has no appreciation for our suprerior intellect.", "no", 1152387164, 36321725, Spawn)
                                elseif choice == 2 then	                        
	                	        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gf_c5bc0931.mp3", "Can you imagine why we're not ruling?", "ponder", 1050007971, 1742690856, Spawn)
                                end					        
                            elseif spawnRace == KERRA then
	                	    PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_kerra_gf_85f0b7d.mp3", "Disgusting that the overlord even considers your race.", "sniff", 3422662472, 3860203232, Spawn)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_ogre_gf_ee6a8ad4.mp3", "Brutes you were, and brutes you shall always be.", "nod", 1608330065, 1921728202, Spawn)
                            elseif spawnRace == RATONGA then
	                	    PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_ratonga_gf_4d3aaca.mp3", "One day, I may have use for your services, sneaky.", "nod", 3454516876, 1362938661, Spawn)
                            elseif spawnRace == TROLL then
	                	    PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_troll_gf_e93b7941.mp3", "If you stopped thinking about your stomach, you might be able to form a sentence.", "scold", 3553520221, 3928709815, Spawn)
                                                    
                            else
                           	    local check = math.random(1,2)
                                if choice == 1 then	
                                PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gf_43bd22f2.mp3", "Greetings.  One day I hope everyone bows before my intellect.", "hello", 833705169, 3091207712, Spawn)		                	
                                elseif choice == 2 then	                        
	                	        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gf_9bc2cf77.mp3", "My time is too valuable to be spent chatting.", "bye", 3939605048, 2460746424, Spawn)
                                end
				            end
				        end
			        end
			     
				elseif GOOD then
				    if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else
			    	local choice = math.random(1,3)
	                    if choice == 1 then --racial check
	                        if spawnRace == BARBARIAN then
	                        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_barbarian_gf_f1057cd0.mp3", "I find it refreshing to speak to someone of your physical stature.", "ponder", 36526703, 389726822, Spawn)
                            elseif spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_darkelf_gf_67b4b065.mp3", "The Tier'Dal corrupted my ancestors with the dark arts.  If your intention is the same, I will show you what I do to those who craft in the dark arts.", "stare", 3269037986, 3583430591, Spawn)
	                        elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_dwarf_gf_d09b3368.mp3", "Fascinating!  I thought your kind could not adapt to life after The Shattering.  Interesting to see I was mistakened.", "ponder", 619552095, 1406216651, Spawn)
                            elseif spawnRace == ERUDITE then
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
	                	            PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_erudite_gf_ab1bd57b.mp3", "May Quellious's blessings be upon you and yours.", "curstey", 1402855828, 3071800181, Spawn)
                                    elseif choice == 2 then	
	                	            PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_erudite_gf_9e9d6cce.mp3", "I'm sure whatever you seek, Quellious will help you find it.", "agree", 1152387164, 36321725, Spawn)
				       		        end					        
                            elseif spawnRace == GNOME then
                		    PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_gnome_gf_885ee58d.mp3", "The machinations of the average gnome's mind are really best left untouched.", "nod", 499883228, 2559247313, Spawn)
                            elseif spawnRace == HALF_ELF then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_halfelf_gf_aff989b.mp3", "There are many that wouldn't speak with your kind, but I find your history intriguing.", "nod", 1855380777, 1709969199, Spawn)
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_halfling_gf_1524469a.mp3", "Take care to speak loudly when announcing your presence, less a larger being crush you beneath its toes.", "agree", 1007871270, 3421630084, Spawn)
                            elseif spawnRace == HIGH_ELF then
	                	    PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_highelf_gf_cfbdf659.mp3", "That ensemble is quite becoming to you.  Almost as good as my own.", "hello", 2314937497, 2446209028, Spawn)
                            elseif spawnRace == HUMAN then
	                	    PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_human_gf_3942f6cc", "Nothing's more fruitful than spending your time among the learned.", "agree", 2072395332, 2149802738, Spawn)
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_iksar_gf_92ff3ed3.mp3", "The reptilian brain lacks higher cognitive processing.  Such a lowly creature has no place walking amongst us in the city.", "no", 945836085, 772000445, Spawn)
                            elseif spawnRace == KERRA then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_kerra_gf_f236b75e.mp3", "I'm sorry my ancestors treated your kind so poorly.  The kerra were less civilized back then.  At least now they're making some measurable progress.", "apologize", 4058186530, 3584703264, Spawn)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_ogre_gf_88c97da6.mp3", "Away from me you wraith-brained brute.  Even with the curse lifted your race hasn't aquired any intelligence!","no", 2627346232, 1243123055, Spawn)
                            elseif spawnRace == WOOD_ELF then
                            local check = math.random(1,2) 
	                           	if check == 1 then
	                	        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_woodelf_gf_a25cc08a.mp3", "If a tree falls in the woods but no one is there to hear it, does it make a sound?", "ponder", 1447042742, 1128515123, Spawn)
                                elseif choice == 2 then	
	                	        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_woodelf_gf_b60ad90f.mp3", "Nothing's' more discouraging than to be a woodsman in the midst of grander civilizations, is there?  Well, there might be hope for you yet.", "hello", 84164724, 4245634186, Spawn)
				       		    end
				       		else
                            local check = math.random(1,2) 
	                            if check == 1 then
	                	        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_hail_gf_24e3a5aa.mp3", "I have learned that it is best to trust to your own wisdom rather than the weaponry of your acquaintances.", "nod", 2387566735, 2940828519, Spawn)
                                elseif choice == 2 then	
	                	        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_hail_gf_8f458045.mp3", "Please, I am in the midst of solving a very complex problem and must not be interrupted.", "no", 971990033, 2178584483, Spawn)
				       		    end                   
		                    end
                        elseif choice == 2 then	
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_hail_gf_24e3a5aa.mp3", "I have learned that it is best to trust to your own wisdom rather than the weaponry of your acquaintances.", "nod", 2387566735, 2940828519, Spawn)
                        elseif choice == 3 then	
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_hail_gf_8f458045.mp3", "Please, I am in the midst of solving a very complex problem and must not be interrupted.", "no", 971990033, 2178584483, Spawn)
                        end                        				    
				    end 
			    end 
	    end
	    
		elseif race == FROGLOK then
			if gender == MALE then
            elseif gender == FEMALE then
            		if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else
			    	local choice = math.random(1,3)
	                    if choice == 1 then --racial check
	                        if spawnRace == BARBARIAN then
	                        PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_barbarian_gf_2a05cb73.mp3", "Good to see you watching thy footsteps in the crowd.", "hello", 1081508285, 2427213760, Spawn)
                            elseif spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_darkelf_gf_9a525d02.mp3", "The twisted children of Innoruk have no place amongst the good.  I hope you are here looking for redemption.", "no", 2651815149, 74368302, Spawn)
	                        elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_dwarf_gf_744e2b79.mp3", "Hail to you master of mining and earthen treasure.", "hello", 2566521966, 1120118768, Spawn)
                            elseif spawnRace == ERUDITE then
	                	    PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_erudite_gf_6fc36186.mp3", "Intelligence goes not only to the tall, but to the honorable!", "agree", 723944093, 746238174, Spawn)
                            elseif spawnRace == GNOME then
                	        PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_gnome_gf_42177c87.mp3", "What's that? All thy mutterings about whizzlegigs and furbelows is quite unintelligible.", "confused", 3856971048, 2722248899, Spawn)
                            elseif spawnRace == HALF_ELF then
					        PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_halfelf_gf_17b16261.mp3", "The other races of Qeynos might give you some resepect if you didn't pierce yourselfs like a.. smelly troll!", "scold", 533543002, 2702833807, Spawn)
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_halfling_gf_c99e35d6.mp3", "May the fur upon thy feet never recede!", "curtsey", 2739268859, 2588639054, Spawn)
                            elseif spawnRace == HIGH_ELF then
                           	    local check = math.random(1,2)	                           
	                           	if check == 1 then
                	            PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_highelf_gf_d3687a91.mp3", "It is good to see elven-kind here in Qeynos who can help us defend the laws of the land.", "hello", 3596392273, 2126265241, Spawn)
                                elseif choice == 2 then	
	                	        PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_highelf_gf_47192d0e.mp3", "Justice, honor and valor above all!", "nod", 1395300363, 1594049807, Spawn)
				       		    end
				       		elseif spawnRace == HUMAN then
	                	    PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_human_gf_a6365ebc.mp3", "Always remember that hard work may be the key to some success, honor is the key to valor.", "agree", 1978493922, 2041068107, Spawn)
                             elseif spawnRace == KERRA then
					        PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_kerra_gf_3517943f.mp3", "Its unfortunate that the gift of speech was bestowed upon so many different thoughts and beings.", "sigh", 3288858464, 183825498, Spawn)
                            elseif spawnRace == WOOD_ELF then
					        PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_woodelf_gf_7e2b8462.mp3", "You must miss thyn old woodland home as much as I miss mine.","sad", 387192699, 182364074, Spawn)

				       		else
                            local check = math.random(1,2) 
	                            if check == 1 then
                	            PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_hail_gf_cd3d026e.mp3", "Always step carefully within the city limits -- and even more carefully when outside of the city.", "nod", 2864618200, 434416947, Spawn)
                                elseif choice == 2 then	
                	            PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_hail_gf_eae44fad.mp3", "May the blessings of Mithaniel Marr be upon you.", "hello", 2437408909, 3055505253, Spawn)
				       		    end                   
		                    end
                        elseif choice == 2 then	
                	    PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_hail_gf_cd3d026e.mp3", "Always step carefully within the city limits -- and even more carefully when outside of the city.", "nod", 2864618200, 434416947, Spawn)
                        elseif choice == 3 then	
                    	PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_hail_gf_eae44fad.mp3", "May the blessings of Mithaniel Marr be upon you.", "hello", 2437408909, 3055505253, Spawn)
                        end                        				    
				    end 
			    end 
		
		elseif race == GNOME then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  			        
				        local choice = math.random(1,3)                         
                        if choice == 1 then	
                        PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_hail_gm_dd38c0ae.mp3", "Now what did I do with that gear?", "confused", 4176417694, 571824368, Spawn)		                
                        elseif choice == 2 then	                        
	                	PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_hail_gm_66cbf9a8.mp3", "No time for chatting.  Sorry!", "no", 3060036576, 2175661958, Spawn)
                        elseif choice == 3 then				        
                            if spawnRace == DARKELF then
					        PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_darkelf_gm_d6a4426d.mp3", "Oops!  Pardon me!  Watch the gnome!", "appologize", 57227224, 2068197977, Spawn)
                            elseif spawnRace == ERUDITE then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_erudite_gm_fda5eb48.mp3", "We'll see who's smarter when I finish my ... thingamabob!", "agree", 856975110, 1693275305, Spawn)
                            elseif spawnRace == GNOME then
					        PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_gnome_gm_91c8c95a.mp3", "Sprockets and cogs!  Where's the one I need now?", "doh", 2107565689, 1695469863, Spawn)
                            elseif spawnRace == OGRE then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_troll_gm_fec5e2a0.mp3", "Nooo no no no no!  Get away from me with those feet!  I will NOT let you punt me!", "cringe", 893602615, 1336608806, Spawn)
                            elseif spawnRace == RATONGA then
                           	    local check = math.random(1,2)                                
                                if check == 1 then	
                                PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_ratonga_gm_c4fe5091.mp3", "Its a.. rat race out here!", "chuckle", 3414267492, 3932300678, Spawn)		                
                                elseif check == 2 then	                        
	                	        PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_ratonga_gm_f5bdc8a9.mp3", "Good thing you ratonga have such nimble fingers!", "nod", 3939605048, 2460746424, Spawn)
                                end
                            elseif spawnRace == TROLL then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_troll_gm_fec5e2a0.mp3", "Nooo no no no no!  Get away from me with those feet!  I will NOT let you punt me!", "cringe", 893602615, 1336608806, Spawn)
                                                    
                            else
                           	    local check = math.random(1,2)
                                if check == 1 then	
                                PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_hail_gm_dd38c0ae.mp3", "Now what did I do with that gear?", "confused", 4176417694, 571824368, Spawn)		                
                                elseif check == 2 then	                        
	                	        PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_hail_gm_66cbf9a8.mp3", "No time for chatting.  Sorry!", "no", 3060036576, 2175661958, Spawn)
                                end
				            end
				        end
			        end
			     	        
			        
				elseif GOOD then
                end
				
			elseif gender == FEMALE then
			    if GOOD then
			        if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else
			    local choice = math.random(1,3)
			        if choice == 1 then
	                PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_hail_gf_39da4f6d.mp3", "Cheers and boggle chippers to you!", "hello", 3143145827, 3768593316, Spawn)
			        elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_hail_gf_a39dcf21.mp3", "Oh, have you any spare foozlebits?  Don't you hate being one foozlebit short of a fwinger?!", "happy", 2398830545, 499246232, Spawn)
				    elseif choice == 3 then
                            if spawnRace == BARBARIAN then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_barbarian_gf_68486376.mp3", "Watch your step, you rusty-pated, slow-witted, half-turned knob on a cognizoid!  Can't you see I'm busy?", "", 2020911566, 1624319994, Spawn)
                            elseif spawnRace == DARK_ELF then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_darkelf_gf_2efc2ba3.mp3", "Wha-what?!  There's no underground city for you to cause trouble here!", "heckno", 1347338097, 1975299286, Spawn)
                            elseif spawnRace == DWARF then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_dwarf_gf_39b313df.mp3", "Whoa!  I wish I had some of the metals I've heard you dwarves discovered!", "boggle", 952206232, 2909928469, Spawn)
                            elseif spawnRace == GNOME then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_gnome_gf_cb39ba66.mp3", "May all your gears and whistles work as well as you imagine them!", "bye", 369024553, 1044203209, Spawn)
                            elseif spawnRace == HALFLING then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_halfling_gf_c761c00.mp3", "Ooo, next time I'm working on a quigger, I'd love to have your help!", "agree", 4236485237, 2192659802, Spawn)
                            elseif spawnRace == HIGH_ELF then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_highelf_gf_f878672c.mp3", "I have something that might bring back your eyebrows or.. maybe not.", "nod", 4294799293, 119805891, Spawn)
                            elseif spawnRace == HUMAN then
                    		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_newbie_gf_42435ccc.mp3", "I've noticed you gawking at me.  Have you never seen a gnome before?", "stare", 714753951, 3080319952, Spawn)
                            elseif spawnRace == KERRA then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_kerra_gf_34e32811.mp3", "Oh, about that little incident with the hair growth stimulator.. who knew?!  Oh, guess that wasn't you after all.  Nevermind!", "shrug", 2143057093, 1178408525, Spawn)
                            elseif spawnRace == OGRE then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_ogre_gf_a45b4d4.mp3", "Hmm, floggsockets, flizzkicks, and more.. EhhHAK! Watch where you're going you brute!  I lost track of something important I was working on!", "swear", 1477211600, 2587521479, Spawn)
                             end
                        else
			        local choice = math.random(1,2)

			        if choice == 1 then
	                PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_hail_gf_39da4f6d.mp3", "Cheers and boggle chippers to you!", "hello", 3143145827, 3768593316, Spawn)
			        elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_hail_gf_a39dcf21.mp3", "Oh, have you any spare foozlebits?  Don't you hate being one foozlebit short of a fwinger?!", "happy", 2398830545, 499246232, Spawn)
				    end
				end
		    end
				elseif EVIL then
                end 
            end
		
		elseif race == HALF_ELF then
			if gender == MALE then
			    if GOOD then
			        if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else			        
			    	local choice = math.random(1,3)
	                    if choice == 1 then --racial check
	                        if spawnRace == BARBARIAN then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_barbarian_gm_ef83eace.mp3", "May your paths always be wide enough to accommodate your girth.", "nod", 962891721, 1618197244, Spawn)
                            elseif spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_darkelf_gm_8d88c929.mp3", "Tier'Dal have no place in Qeynos, let with the elvin race!  Go back to the other side of Norrath where I can hope to track you down some day!", "scold", 2347367440, 3750524963, Spawn)
	                        elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_dwarf_gm_8f6df8fc.mp3", "No mines here!  Perhaps you should keep traveling until you find some?", "no", 1423351548, 825772946, Spawn)
                            elseif spawnRace == GNOME then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_gnome_gm_e91c924a.mp3", "If I wanted to build something, I'd ask you.", "no", 4236848712, 1210106222, Spawn)
                            elseif spawnRace == HALF_ELF then
				                if GetLevel(Spawn) >=50 then
				                local choice = math.random(1,3)
				                else
	                            local check = math.random(1,2) 
	                           	    if check == 1 then
                                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_halfelf_gm_7a593271.mp3", "Better for us to watch eachother's backs than to find a blade in them.", "nod", 2010917197, 1213460588, Spawn)
                                    elseif check == 2 then
                                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_halfelf_gm_a3837eb9.mp3", "Nice piercings!  I might get another one later today!", "agree", 2334232424, 3543793461, Spawn)
                                    elseif choice == 3 then
                                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_status_gm_d0e7f760.mp3", "You bring honor to all halfelves.  Thank you for that!", "thank", 2176314453, 1767265279, Spawn)
                                    end
                                end    
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_halfling_gm_51ce1bac.mp3", "Yes what is it?  Oh, just saying hello?  Well then, hello.", "hello", 1202098187, 2620859366, Spawn)
                            elseif spawnRace == HIGH_ELF then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_highelf_gm_24cca44b.mp3", "You're no better than the rest of us no matter whose blessing you think you have.", "no", 1706562095, 4255036175, Spawn)
                            elseif spawnRace == HUMAN then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_human_gm_66e9d70c.mp3", "I'm a little too busy for idle chit-chat if you don't mind.", "no", 2225350729, 1927315216, Spawn)
                            elseif spawnRace == KERRA then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_kerra_gm_8c6c65ff.mp3", "What are you really hiding behind that fur coat?", "ponder", 264615729, 2871771903, Spawn)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_ogre_gm_c0c9fdf0.mp3", "I'd tell you what I really thing about you, but then I'd have to use short.. little words to make sure you can grasp what I'm saying.", "glare", 1121721077, 4276284783, Spawn)
                            elseif spawnRace == WOOD_ELF then
	                            local check = math.random(1,2) 
	                           	    if check == 1 then
                                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gm_2fa5fd3b.mp3", "We'll have to get together for a goblet of wine soon.  Your treat!", "agree", 2999782150, 334868042, Spawn)
                                    elseif check == 2 then
                                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gm_876eb977.mp3", "I wish I had good ol' days to remember like you do...  Oh well, best to worry about today and not yesterday!", "shrug", 918037021, 185336532, Spawn)
                                    end
		          	        else
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
					                PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_15163426.mp3", "You talk to strangers?  What's the purpose of that?", "shrug", 1620470786, 1752689340, Spawn)
                                    elseif check == 2 then	
					                PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_c91da8a3.mp3", "I have nothing to say to you right now.", "no", 2888703527, 1699968860, Spawn)
				       		        end                   
		                    end
                        elseif choice == 2 then	
					    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_15163426.mp3", "You talk to strangers?  What's the purpose of that?", "shrug", 1620470786, 1752689340, Spawn)
                        elseif choice == 3 then	
					    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_c91da8a3.mp3", "I have nothing to say to you right now.", "no", 2888703527, 1699968860, Spawn)
                        end                        				    
				    end 
         
				elseif EVIL then
	           end
	   		    		
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  			        
				    local choice = math.random(1,3)                         
                        if choice == 1 then	
	                   	PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_hail_gf_817ed115.mp3", "Sometimes you have to take what you want.", "nod", 235476376, 378561265, Spawn)
                        elseif choice == 2 then	                        
	                  	PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_hail_gf_3f18f86f.mp3", "Freeport has everything you could want: intrigue, murder, and greed!", "hello", 5269968, 3778619854, Spawn)
                        elseif choice == 3 then				        
                            if spawnRace == DARKELF then
		                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_darkelf_gf_b7243656.mp3", "Get out of here, before I get a few friends and teach you whose turf this is!", "threaten", 1591785045, 2161856385, Spawn)
                            elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "", "I've never met a dwarf before. Is it true they're stupid? ", "stare", 0, 0, Spawn)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_erudite_gf_ba79a909.mp3", "Good day.  Hope you're not planning any experiments around here today.", "hello", 324880456, 63443987, Spawn)
                            elseif spawnRace == IKSAR then
	                	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_iksar_gf_a25f2702.mp3", "Okay, scales.  I don't need luggage right now.", "no", 3274806092, 49060946, Spawn)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_ogre_gf_b1767583.mp3", "You'd think the overlord would have more taste than to let giants in the city!", "sniff", 4005582689, 2179058353, Spawn)
                            elseif spawnRace == RATONGA then
	                   	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_ratonga_gf_9f5502a.mp3", "Where have your sneaky fingers been today?  Hopefully not in my pocket.", "ponder", 3377223212, 405360644, Spawn)
                            elseif spawnRace == TROLL then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_troll_gf_60575245.mp3", "Trolls have to be the most brutish and nasty creatures ever!", "scold", 3572118052, 1252514790, Spawn)
                            elseif spawnRace == WOODELF then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_woodelf_gf_15785897.mp3", "Hmph, I came to Freeport to get away from your kind.", "glare", 3646199817, 3971791216, Spawn)
                            else
                           	    local check = math.random(1,2)
                                if check == 1 then	
	                   	        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_hail_gf_817ed115.mp3", "Sometimes you have to take what you want.", "nod", 235476376, 378561265, Spawn)
                                elseif check == 2 then	                        
	                  	        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_hail_gf_3f18f86f.mp3", "Freeport has everything you could want: intrigue, murder, and greed!", "hello", 5269968, 3778619854, Spawn)
                                end
				            end
				        end
			        end
				elseif GOOD then
		    		if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else
			    local choice = math.random(1,3)
			        if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gf_c91da8a3.mp3", "I have nothing to say to you right now.", "no", 2086714174, 1576219530, Spawn)
			        elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gf_15163426.mp3", "You talk to strangers?  What's the purpose of that?", "confused", 3457658686, 921014902, Spawn)
				    elseif choice == 3 then
                            if spawnRace == WOODELF then
					        PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gf_1f97d15c.mp3", "May your life be filled with the green of trees and your heart be filled with...uh' hope!", "agree", 1410070569, 2067586254, Spawn)
                            end
                        else
			        local choice = math.random(1,2)
			        if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gf_c91da8a3.mp3", "I have nothing to say to you right now.", "no", 2086714174, 1576219530, Spawn)
			        elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gf_15163426.mp3", "You talk to strangers?  What's the purpose of that?", "confused", 3457658686, 921014902, Spawn)
				    end
				    end
		        end
	        end	
	    end
	
	    elseif race == HALFLING then
			if gender == MALE then
		       if Qfaction < 0 then
                    FactionChecking(NPC, Spawn, faction)
                else
			    	local choice = math.random(1,3)
	                    if choice == 1 then --racial check
	                        if spawnRace == BARBARIAN then
					        PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_barbarian_gm_6bb8a4bc.mp3", "I bet your tired of folks asking you how the weather is, huh?", "agree", 19411750, 160006957, Spawn)
                            elseif spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_darkelf_gm_222dadcd.mp3", "You can food some of the fools some of the time, but you can't fool me!  I know what your kind does.  Stay away!", "sulk", 303174091, 2376469392, Spawn)
	                        elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_dwarf_gm_578eaf5f.mp3", "If only my armor looked as sturdy as yours.  Oh well, it works!", "shrug", 1478411764, 638148930, Spawn)
	                        elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_erudite_gm_3d71f09c.mp3", "For thinking their so intelligent, why do Erudites always talk down to me like I'm a child?  Don't they know a halfling when they see one?", "confused", 245912432, 2955433596, Spawn)
                                                   
                            elseif spawnRace == GNOME then
	                            local check = math.random(1,2) 
	                           	    if check == 1 then					       
					                PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_gnome_gm_461d7cf0.mp3", "The next foozlebit I find is yours.  I promise", "nod", 3669283075, 3068866259, Spawn)
                                    elseif check == 2 then
					                PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_gnome_gm_94bf9271.mp3", "Have you considered making an ale-tanker that never empties?  That's a worthy project!", "smile", 1657569571, 2283552256, Spawn)
                                    end                                    
                            elseif spawnRace == HALFLING then
                                if GetLevel(Spawn) >=50 then	                            
	                            local check = math.random(1,4) 
                                else	                            
	                            local check = math.random(1,2) 
	                           	    if check == 1 then					       
					                PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_halfling_gm_319ec8e8.mp3", "One day, we will raise our tankards in Rivervale!", "smile", 3669283075, 3068866259, Spawn)
                                    elseif check == 2 then
					                PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_halfling_gm_4a75dace.mp3", "That was some joke you told the other day! I'm still laughing over it!", "chuckle", 4080228661, 501342601, Spawn)
                                    elseif check == 3 then
					                PlayFlavor(NPC, "", "There are few halflings as big as you are.  Well, not that you're big, size-wise, but you know...you got a big reputation!", "hello", 0, 0, Spawn)
                                    elseif check == 4 then
					                PlayFlavor(NPC, "", "May the fur on your feet be as thick and lustrous as the Misty Thicket.", "bow", 0, 0, Spawn)
                                    end
                                end
                            elseif spawnRace == HIGH_ELF then
					        PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_highelf_gm_d3c11717.mp3", "You haven't heard anything new about the Misty Thicket, have you?  You let me know if you ever do.", "nod", 3019874910, 687397338, Spawn)
                            elseif spawnRace == HUMAN then
					        PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_human_gm_c1a5bf5.mp3", "Just want you to know that I had nothing to do with that barstool collapsing underneath you the other day.  Honest!", "no", 2399290871, 3286868646, Spawn)
                            elseif spawnRace == KERRA then
					        PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_kerra_gm_278d86ce.mp3", "Hey!  How's the weather up there?", "wave", 3541643798, 2984564758, Spawn)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_ogre_gm_7f74bec4.mp3", "If you come any closer I'll kick you so hard in the shins you won't know today from tomorrow!", "glare", 1688273886, 2141431401, Spawn)
                            elseif spawnRace == TROLL then
					        PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_ogre_gm_7f74bec4.mp3", "If you come any closer I'll kick you so hard in the shins you won't know today from tomorrow!", "glare", 1688273886, 2141431401, Spawn)
                            elseif spawnRace == WOOD_ELF then
                             PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_woodelf_gm_b160d4db.mp3", "You must miss home, too, huh?  I've never seen it myself, but I wish I could return to Rivervale.", "sigh", 3826858900, 561795809, Spawn)                                    
		          	        else
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
					                PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_hail_gm_34b03729.mp3", "I'm sure we've met some place before.  You look so familiar!", "ponder", 1550233671, 4104979611, Spawn)
                                    elseif check == 2 then	
					                PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_hail_gm_74b0fd50.mp3", "A good joke deserves a good audiance I always say.", "agree", 95315026, 2602312757, Spawn)
				       		        end                   
		                    end
                        elseif choice == 2 then	
					    PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_hail_gm_34b03729.mp3", "I'm sure we've met some place before.  You look so familiar!", "ponder", 1550233671, 4104979611, Spawn)
                        elseif choice == 3 then	
					    PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_hail_gm_74b0fd50.mp3", "A good joke deserves a good audiance I always say.", "agree", 95315026, 2602312757, Spawn)
                        end                        				    
				    end 
            
		elseif gender == FEMALE then
 --[[           if Qfaction <0 then
            	local choice = math.random(1,2)			      
		        if choice == 1 then
		        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_5afcbd03.mp3", "The streets aren't safe with your kind upon them!", "point", 3071247604, 671588271, Spawn)
                elseif choice == 2 then
		        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 1040511037, 3422590702, Spawn)
                end                
            else
	PlayFlavor(NPC, "voiceover/english/optional2/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_gnome_gf_8e6f2cee.mp3", "What're you working on now, hmm?  Hope this one works out!", "", 1396523759, 1857436654, Spawn)
 ]]--
	    end
    		
		elseif race == HIGH_ELF then
			if gender == MALE then
			elseif gender == FEMALE then
			    if Qfaction < 0 then  
                    FactionChecking(NPC, Spawn, faction)
                else
			    	local choice = math.random(1,3)
	                    if choice == 1 then --racial check
	                        if spawnRace == BARBARIAN then
					        PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_barbarian_gf_76f6ec06.mp3", "I'm sure that even you can see the wisdom of obeying Tunare's chosen.", "nod", 1508778688, 725247692, Spawn)
                            elseif spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_darkelf_gf_66ed5b18.mp3", "This is an outrage!  A Tier'Dal has no place in Qeynos, or set foot and disgrace anything Tunare has graced us with!", "threaten", 3028248049, 1876789572, Spawn)
	                        elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_dwarf_gf_35729e65.mp3", "No, I won't go out for a dwarven ale with you.  Elven wine tastes better anyway.", "no", 266246440, 1778311218, Spawn)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_erudite_gf_cfbdf659.mp3", "That ensom' is quite becoming to you.  Almost as good as my own.", "agree", 1652655342, 62284543, Spawn)
                            elseif spawnRace == GNOME then
					        PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_gnome_gf_6a2b567f.mp3", "Your little gears and gizmos are amusing, but I have no interest in them.", "no", 667401607, 3295814491, Spawn)
                            elseif spawnRace == HALF_ELF then
                            PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_halfelf_gf_1635ab67.mp3", "Hmm.  By the look in your eyes you had potentional, but one of your parents made a poor choice in life.", "nod", 3335501764, 2059212963, Spawn)
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_halfling_gf_d4e1c221.mp3", "I'm sure it will be a glad day when you return to Misty Thicket.", "hello", 1880520908, 1662106306, Spawn)
                            elseif spawnRace == HIGH_ELF then
				                if GetLevel(Spawn) >=50 then
				                local choice = math.random(1,4)
				                else
	                            local check = math.random(1,2) 
	                           	    if check == 1 then
                                    PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_highelf_gf_601050b5.mp3", "May Tunare's blessings be with you and yours.", "hello", 781331093, 1715342825, Spawn)
                                    elseif check == 2 then
                                    PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_highelf_gf_b32f3d7a.mp3", "I am pleased to see other Koad'Dal trying to keep up with this wretched neighborhood.", "agree", 235834078, 3543793461, Spawn)
                                    elseif check == 3 then
                                    PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_status_gf_1a72199d.mp3", "You're a credit to all Koad'Dal.  With your example, Qeynos will see the Koad'Dal as true born leaders.", "thank", 2790557627, 1438660086, Spawn)
                                    elseif check == 4 then
                                    PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_status_gf_c7ce30ef.mp3", "Tunare's blessings are upon you, and those fortunate enough to know you.", "curtsey", 2875458290, 576573838, Spawn)
                                    end
                                end
                            elseif spawnRace == HUMAN then
					        PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_human_gf_6cb03b0e.mp3", "Qeynos has not even a shadow of the beauty of Felwithe.  Still, one makes due with what one has.", "no", 2082586119, 191034265, Spawn)
                            elseif spawnRace == KERRA then
					        PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_kerra_gf_1c61c938.mp3", "I am not interested in fish, so please do not mention them to me.", "no", 222560408, 2184277903, Spawn)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_ogre_gf_271cba3d.mp3", "This abomination of Rallos Zek has no place corrupting what Tunare has graced us with.", "glare", 4177832537, 1219231619, Spawn)
                            elseif spawnRace == WOOD_ELF then
                            PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_woodelf_gf_f474672e.mp3", "I see you're on an errand.  Please don't linger.  There is much work to do around here.", "nod", 597450761, 585294431, Spawn)
		          	        else
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
					                PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_hail_gf_910f06b6.mp3", "Tunare blesses those who are faithful, and trusts in her return.", "royalwave", 2463890902, 2461742088, Spawn)
                                    elseif check == 2 then	
					                PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_hail_gf_1acc6fa6.mp3", "May your eyes be opened to the truths of Tunare's teachings.", "hello", 1915577851, 591578054, Spawn)
				       		        end                   
		                    end
                        elseif choice == 2 then	
					    PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_hail_gf_910f06b6.mp3", "Tunare blesses those who are faithful, and trusts in her return.", "royalwave", 2463890902, 2461742088, Spawn)
                        elseif choice == 3 then
					    PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_hail_gf_1acc6fa6.mp3", "May your eyes be opened to the truths of Tunare's teachings.", "bow", 1915577851, 591578054, Spawn)
                        end                        				    
				    end 
	    	end
		
		elseif race == HUMAN then
			if gender == MALE then
			   if EVIL then
	--[[		    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_55c7abb4.mp3", "If you know what's good for ya, you didn't see anything!", "shakefist", 3295550745, 254450600, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_8d2a0876.mp3", "That look's like an awfully expensive pair of boots there, my friend.", "ponder", 367255988, 2113438867, Spawn)
				        end
				    else  			        
	                 end  ]]--	
				elseif GOOD then
                     if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else
    	            local choice = math.random(1,3)
	                    if choice == 1 then --racial check
                            if spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_darkelf_gm_4cac7ca.mp3", "Don't think for a momment that your citizenship makes you faithful to Qeynos.  After all, you did betray another city.  What's stopping you from doing it again?", "no", 615873384, 2926864365, Spawn)
	                        elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_dwarf_gm_44f15fd2.mp3", "Dwarven ale has such renown.  You don't happen to be carrying any with you, do you?  No?  A pitty.", "agree", 2950701844, 1531526080, Spawn)
                            elseif spawnRace == ERUDITE then
			    	        local check = math.random(1,2)
			    	            if check == 1 then
					            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_erudite_gm_1c69f98b.mp3", "Perhaps we can sit down sometime and you can explain your theories about the shattering.", "ponder", 4035108881, 4044779070, Spawn)
                                elseif check == 2 then
					            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_erudite_gm_9c9b3637.mp3", "If I'm in trouble, I can think of no better ally than someone like you.", "nod", 2515502310, 2808975526, Spawn)
                                end
                            elseif spawnRace == FROGLOK then
	                	    PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_froglok_gm_b1da0602.mp3", "Hail to you, short and shiny one!", "hello", 2380925828, 15459918, Spawn)
                            elseif spawnRace == GNOME then
                		    PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_gnome_gm_a777615.mp3", "I wish I knew what some of these new-fangled gnomish inventions are meant to do.", "confused", 1410161766, 2130476086, Spawn)
                            elseif spawnRace == HALF_ELF then
                            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_halfelf_gm_a64c49f5.mp3", "Its a great day to be alive and to be in Qeynos.", "nod", 2240799501, 2229977030, Spawn)
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_halfling_gm_266398e9.mp3", "I'm curious as to why you halflings are always so cheerful!  Mystified actually.", "confused", 51041711, 4113386184, Spawn)
                            elseif spawnRace == HIGH_ELF then
                		    PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_highelf_gm_a4ddebdc.mp3", "A good day in Qeynos always beats a bad day anywhere else.", "nod", 2563785575, 2973629845, Spawn)
                            elseif spawnRace == HUMAN then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_human_gm_50fe5858.mp3", "Hail to you.  Its a great day to be alive!", "hello", 3039434817, 1919768022, Spawn)
                            elseif spawnRace == KERRA then
			    	        local check = math.random(1,2)
			    	            if check == 1 then
					            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_kerra_gm_ba79272a.mp3", "Fishings a great past time, isn't it?  I make time for it whenever I can.", "agree", 1391107838, 2580038902, Spawn)
                                elseif check == 2 then
					            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_kerra_gm_e2ea62ed.mp3", "Always a pleasure to chat with one of the Kerra.", "nod", 2870132986, 278432843, Spawn)
                                end
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_ogre_gm_bed8b1f1.mp3", "Ogres were made for war.  What could you possibly want within the peaceful walls of Qeynos?", "confused", 1887161829, 1585646853, Spawn)
                            elseif spawnRace == TROLL then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_troll_gm_fdd12de.mp3", "You forgot to leave your stink at the swamp.  Keep it there and don't come back, troll!", "stinky", 1224786635, 2939340176, Spawn)
                            elseif spawnRace == WOOD_ELF then
                		    PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_woodelf_gm_2ab5b9e2.mp3", "I wish I had the ability to keep the plants in my home happy.", "agree", 2624412872, 2478031045, Spawn)
		          	        else
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
	                	            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gm_837968a9.mp3", "Oh, my aching back!  As good a time to stop and chat as any, I say.", "yawn", 3270846909, 2717985314, Spawn)
                                    elseif check == 2 then	
                		            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gm_2d0e8823.mp3", "Almost time to stop and have an ale, isn't it?", "wink", 1106325239, 2982056892, Spawn)
				       		        end                   
		                    end
                        elseif choice == 2 then	
	                	PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gm_837968a9.mp3", "Oh, my aching back!  As good a time to stop and chat as any, I say.", "yawn", 3270846909, 2717985314, Spawn)
                        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gm_2d0e8823.mp3", "Almost time to stop and have an ale, isn't it?", "wink", 1106325239, 2982056892, Spawn)
                        end                        				    
				    end 
                    end 
				
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)

				    else
				        local choice = math.random(1,3)                         
                        if choice == 1 then	
                        PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_hail_gf_93dc38d4.mp3", "Oh drat, I hope not.  Oh, sorry I thought you meant the weather.", "doh", 1692525966, 615682275, Spawn)		                
                        elseif choice == 2 then	                        
	                	PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_hail_gf_1e51f755.mp3", "Yes yes, hello.  I'm busy", "no", 4117973487, 2991449240, Spawn)
                        elseif choice == 3 then				        
                            if spawnRace == BARBARIAN then
                    		PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_barbarian_gf_8a05c752.mp3", "Well met.", "hello", 1804359163, 3445708894, Spawn, 0)
                            elseif spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_darkelf_gf_7231fda9.mp3", "You thought you were so superior and look who you come to for protection when things got rough.", "shame", 3384843872, 927025109, Spawn)
                            elseif spawnRace == DWARF then
                    		PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_dwarf_gf_6be68ccb.mp3", "Well, I'll be. I wonder who you had to beg to get in here.", "ponder", 113434539, 1141319850, Spawn, 0)
                            elseif spawnRace == ERUDITE then
	                	    PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_erudite_gf_8d65fed9.mp3", "Smart or not, you're in Freeport now!", "chuckle", 1504953508, 3033375455, Spawn)
                            elseif spawnRace == GNOME then
		                    PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_gnome_gf_f26215e6.mp3", "Stay away from the ogres, runt.", "stare", 982522108, 3440948860, Spawn, 0)
                            elseif spawnRace == HALF_ELF then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_halfelf_gf_5b7295ad.mp3", "Half right, half wrong.", "glare", 3509473675, 545362230, Spawn)
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "", "I can think of a few words for you other than halfling.", "threaten", 0, 0, Spawn)
                            elseif spawnRace == HIGH_ELF then
                    		PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_highelf_gf_54eddabb.mp3", "Elf, get out of my way before I call the guards on you.", "sneer", 3958771785, 212811507, Spawn, 0)
                            elseif spawnRace == HUMAN then
                                local check = math.random(1,2)
                                if check == 1 then
                                PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_human_gf_6aae649e.mp3", "Grim determination has gotten us where we are now.", "agree", 4149109940, 4022423716, Spawn)		                
                                elseif check ==2 then
                        		PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_hail_gf_93dc38d4.mp3", "Oh, drat, I hope not. Oh, sorry, I thought you might have meant the weather.", "confused", 1692525966, 615682275, Spawn, 0)
                                end    
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_iksar_gf_ba328394.mp3", "Fine day for a slither, eh?", "sneer", 505153156, 1070642363, Spawn)
                            elseif spawnRace == OGRE then
	                	    PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_ogre_gf_e3b4ada3.mp3", "Back off, brute!", "glare", 3484150960, 3962798795, Spawn)
                            elseif spawnRace == RATONGA then
                            PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_ratonga_gf_88d48574.mp3", "A good rat is a dead rat.  Good thing you're not really a rat, eh?", "glare", 1375823265, 2740011522, Spawn)		                
                            elseif spawnRace == TROLL then
	                	    PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_troll_gf_a1817140.mp3", "I can't think of a way you could get uglier.", "shrug", 1476180483, 3762815491, Spawn)
                                                    
                            else
                           	    local check = math.random(1,2)
                                if check == 1 then	
                                PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_hail_gf_93dc38d4.mp3", "Oh drat, I hope not.  Oh, sorry I thought you meant the weather.", "doh", 1692525966, 615682275, Spawn)		                
                                elseif check == 2 then	                        
	                	        PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_hail_gf_1e51f755.mp3", "Yes yes, hello.  I'm busy", "no", 4117973487, 2991449240, Spawn)
                                end
				            end
				        end
	                 end   
				elseif GOOD then
				    if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else
			    	local choice = math.random(1,3)
	                    if choice == 1 then --racial check
                            if spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_darkelf_gf_4cac7ca.mp3", "Don't think for a momment that your citizenship makes you faithful to Qeynos.  After all, you did betray another city.  What's stopping you from doing it again?", "no", 615873384, 2926864365, Spawn)
	                        elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_dwarf_gf_44f15fd2.mp3", "Dwarven ale has such renown.  You don't happen to be carrying any with you, do you?  No?  A pitty.", "agree", 2950701844, 1531526080, Spawn)
                            elseif spawnRace == ERUDITE then
			    	        local check = math.random(1,2)
			    	            if check == 1 then
					            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_erudite_gf_1c69f98b.mp3", "Perhaps we can sit down sometime and you can explain your theories about the shattering.", "ponder", 4035108881, 4044779070, Spawn)
                                elseif check == 2 then
					            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_erudite_gf_9c9b3637.mp3", "If I'm in trouble, I can think of no better ally than someone like you.", "nod", 2515502310, 2808975526, Spawn)
                                end
                            elseif spawnRace == FROGLOK then
	                	    PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_froglok_gf_b1da0602.mp3", "Hail to you, short and shiny one!", "hello", 2380925828, 15459918, Spawn)
                            elseif spawnRace == GNOME then
                		    PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_gnome_gf_a777615.mp3", "I wish I knew what some of these new-fangled gnomish inventions are meant to do.", "confused", 1410161766, 2130476086, Spawn)
                            elseif spawnRace == HALF_ELF then
                            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_halfelf_gf_a64c49f5.mp3", "Its a great day to be alive and to be in Qeynos.", "nod", 2240799501, 2229977030, Spawn)
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_halfling_gf_266398e9.mp3", "I'm curious as to why you halflings are always so cheerful!  Mystified actually.", "confused", 51041711, 4113386184, Spawn)
                            elseif spawnRace == HIGH_ELF then
                		    PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_highelf_gf_a4ddebdc.mp3", "A good day in Qeynos always beats a bad day anywhere else.", "nod", 2563785575, 2973629845, Spawn)
                            elseif spawnRace == HUMAN then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_human_gf_50fe5858.mp3", "Hail to you.  Its a great day to be alive!", "hello", 3039434817, 1919768022, Spawn)
                            elseif spawnRace == KERRA then
			    	        local check = math.random(1,2)
			    	            if check == 1 then
					            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_kerra_gf_ba79272a.mp3", "Fishings a great past time, isn't it?  I make time for it whenever I can.", "agree", 1391107838, 2580038902, Spawn)
                                elseif check == 2 then
					            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_kerra_gf_e2ea62ed.mp3", "Always a pleasure to chat with one of the Kerra.", "nod", 2870132986, 278432843, Spawn)
                                end
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_ogre_gf_bed8b1f1.mp3", "Ogres were made for war.  What could you possibly want within the peaceful walls of Qeynos?", "confused", 1887161829, 1585646853, Spawn)
                            elseif spawnRace == TROLL then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_troll_gf_fdd12de.mp3", "You forgot to leave your stink at the swamp.  Keep it there and don't come back, troll!", "stinky", 1224786635, 2939340176, Spawn)
                            elseif spawnRace == WOOD_ELF then
                		    PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_woodelf_gf_2ab5b9e2.mp3", "I wish I had the ability to keep the plants in my home happy.", "agree", 2624412872, 2478031045, Spawn)
		          	        else
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
	                	            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gf_837968a9.mp3", "Oh, my aching back!  As good a time to stop and chat as any, I say.", "yawn", 3270846909, 2717985314, Spawn)
                                    elseif check == 2 then	
                		            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gf_2d0e8823.mp3", "Almost time to stop and have an ale, isn't it?", "wink", 1106325239, 2982056892, Spawn)
				       		        end                   
		                    end
                        elseif choice == 2 then	
	                	PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gf_837968a9.mp3", "Oh, my aching back!  As good a time to stop and chat as any, I say.", "yawn", 3270846909, 2717985314, Spawn)
                        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gf_2d0e8823.mp3", "Almost time to stop and have an ale, isn't it?", "wink", 1106325239, 2982056892, Spawn)
                        end                        				    
				    end 
	    	    end
            end

		elseif race == IKSAR then
			if gender == MALE then
		    elseif gender == FEMALE then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  		    
                        if choice == 1 then	
            		    PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_hail_gf_5cacd110.mp3", "If you need help, please find someone who'll provide it.", "shrug", 529474944, 2390194258, Spawn)
                        elseif choice == 2 then	                        
            		    PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_hail_gf_c15f0740.mp3", "Welcome. We greet you.", "yawn", 3949639532, 268039246, Spawn)
                        elseif choice == 3 then				        
				            if spawnRace == BARBARIAN then
					        PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_barbarian_gf_1b2797ab.mp3", "The cold has stunted the growth of your brain!", "sneer", 3424128666, 3850388487, Spawn)
                            elseif spawnRace == DARK_ELF then
	            	        PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_darkelf_gf_41fe94ed.mp3", "We share a similar fate -- cast from our homes by the destruction of our world.", "hello", 735434566, 2925685625, Spawn)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_erudite_gf_323e7792.mp3", "Did Erud take the name because of its meaning, or were his parents full of themselves?", "ponder", 3710722032, 2229599390, Spawn)
                            elseif spawnRace == HALF_ELF then
					        PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_halfelf_gf_e12939e8.mp3", "Half a man is a cripple.  What does that make half an elf?", "leer", 1091603440, 2898728412, Spawn)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_ogre_gf_59b86284.mp3", "The will of Thule was too great for the armies of Zek to overcome.", "agree", 2467592637, 1333596797, Spawn)
                            elseif spawnRace == RATONGA then
            		        PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_ratonga_gf_d01ccae8.mp3", "I wonder where you have come from... so little history to draw on.", "ponder", 3355738899, 1187010903, Spawn)
                            else
                           	    local check = math.random(1,2)
                                if choice == 1 then	
            		            PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_hail_gf_5cacd110.mp3", "If you need help, please find someone who'll provide it.", "shrug", 529474944, 2390194258, Spawn)
                                elseif choice == 2 then	                        
            		            PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_hail_gf_c15f0740.mp3", "Welcome. We greet you.", "yawn", 3949639532, 268039246, Spawn)
                                end
				            end
				        end
			        end
			    end
			    
		elseif race == KERRA then
			if gender == MALE then
			    if EVIL then
				elseif GOOD then
			        if Qfaction <0 then
				    else				    
			    	local choice = math.random(1,3)
	                    if choice == 1 then
                            if spawnRace == BARBARIAN then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_barbarian_gm_8290c6e8.mp3", "You have come a long way from your ancestral home too.  A long way indeed.", "agree", 4018981440, 1643885933, Spawn)
                            elseif spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_darkelf_gm_25d2fdb8.mp3", "You're no better than the Erudites who talk about knowledge and learning, but no nothing but hatered and cruelty.", "no", 148704174, 3686564179, Spawn)
	                        elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_dwarf_gm_24fd4d98.mp3", "I don't understand the dwarven need for fermented beverages, yet some of these drinks are rather tasty.  Are they not?", "confused", 3919208441, 3280982158, Spawn)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_erudite_gm_883036a.mp3", "Erudites will pay one day for what they did to the Kerra.  One day, and may I live to see it.", "glare", 2668074718, 3463788086, Spawn)
                            elseif spawnRace == GNOME then
                    	    PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_gnome_gm_5efa2600.mp3", "You make my tail twitch with all your cogs and flizgigs.  Please, keep those away from me.", "agree", 749990561, 792243248, Spawn)
                            elseif spawnRace == HALF_ELF then
                            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_halfelf_gm_55a42c98.mp3", "You understand somewhat how the Kerra feel.  You can not deny it.  Its in your blood.", "nod", 346671646, 3345517623, Spawn)
                            elseif spawnRace == HIGH_ELF then
                    	    PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_highelf_gf_d5455b09.mp3", "Good leaders bide their time, planning all the while.  I'm sure you already know this.", "nod", 2270743009, 1129155946, Spawn)
                            elseif spawnRace == HUMAN then
			    	        local check = math.random(1,2)
			    	            if check == 1 then
					            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_human_gm_1e5f4af6.mp3", "If only you did not shave so often.  You too would have a luxurious coat!", "agree", 1334867520, 1335322677, Spawn)
                                elseif check == 2 then
					            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_human_gm_6692f65a.mp3", "Fishings not for everyone, but those who try it do enjoy it!", "nod", 905168936, 90990383, Spawn)
                                end                            
                            elseif spawnRace == KERRA then
			    	        local check = math.random(1,2)
			    	            if check == 1 then
					            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_kerra_gm_51feb046.mp3", "We should fish together sometime and share our catch with the tribe.", "agree", 3170951601, 1187001972, Spawn)
                                elseif check == 2 then
					            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_kerra_gm_8320096d.mp3", "Your tail stands proudly, and it should no matter where we Kerra find ourselves.", "nod", 2636110079, 1949408393, Spawn)
                                end
                            elseif spawnRace == WOOD_ELF then
                		    PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_woodelf_gm_8f0d8228.mp3", "The woods can close in upon one, but I guess there is solitude.  But at what price to one's health?", "shrug", 4081298696, 427834832, Spawn)
		          	        else
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
                    	            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gm_925a7b74.mp3", "Give me the simplicity of life as the kerra once knew it, and I'll be satisfied.", "agree", 1811725102, 1170705631, Spawn)
                                    elseif choice == 2 then	
                    	            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gm_ca779c92.mp3", "I would like nothing better than to be with my pride, away from the bustle of any town.", "sigh", 2727630899, 2583820258, Spawn)
				       		        end                   
		                    end
                        elseif choice == 2 then	
                    	PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gm_925a7b74.mp3", "Give me the simplicity of life as the kerra once knew it, and I'll be satisfied.", "agree", 1811725102, 1170705631, Spawn)
                        elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gm_ca779c92.mp3", "I would like nothing better than to be with my pride, away from the bustle of any town.", "sigh", 2727630899, 2583820258, Spawn)
                        end                        				    
				    end 
	    	    end				    
			 
			
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  			        
                	local choice = math.random(1,4)
                        if choice == 1 then	
            		    PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_hail_gf_58cce444.mp3", "One day we shall be free in a place of our own once more.", "nod", 3011266241, 3121212413, Spawn)
                        elseif choice == 2 then	                        
            		    PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_hail_gf_a209154b.mp3", "Can you see the beauty of the open plains?", "ponder", 2343521783, 3494299507, Spawn)
                        elseif choice == 3 then				        
                            if spawnRace == DARK_ELF then
	            	        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_darkelf_gf_894e5eba.mp3", "How can you stand living underground for so long?", "confused", 498890951, 482556555, Spawn)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_erudite_gf_18e1ff6e.mp3", "All that has befallen our race can be traced back to your meddling!", "glare", 528136904, 1889578488, Spawn)
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_iksar_gf_dbafbc9c.mp3", "An empire built on the backs of others is not something I'd brag about.", "shame", 909919632, 1775447018, Spawn)
                            elseif spawnRace == KERRA then
                           	    local check = math.random(1,2)
                                if choice == 1 then	
            		            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_kerra_gf_4622b2e3.mp3", "Stay away from the Eruidites.  They have much up their lying sleeves.", "no", 2227913042, 3084375803, Spawn)
                                elseif choice == 2 then	                        
            		            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_kerra_gf_eee737f6.mp3", "Greetings to you my friend!", "hello", 2721382427, 289310078, Spawn)
                                end                            
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_ogre_gf_88a90aba.mp3", "We respect those with the might to carve out their own niche.", "nod", 1618351055, 3981917052, Spawn)
                            elseif spawnRace == RATONGA then
            		        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_ratonga_gf_35221ef9.mp3", "Get that rat!", "threaten", 2643882472, 2295977191, Spawn)
                            else
                           	    local check = math.random(1,2)
                                if choice == 1 then	
            		            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_hail_gf_58cce444.mp3", "One day we shall be free in a place of our own once more.", "nod", 3011266241, 3121212413, Spawn)
                                elseif choice == 2 then	                        
            		            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_hail_gf_a209154b.mp3", "Can you see the beauty of the open plains?", "ponder", 2343521783, 3494299507, Spawn)
                                end
				            end
				        end
			        end
				elseif GOOD then
			        if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else		            
			    	local choice = math.random(1,3)
                         if choice == 1 then	
                            if spawnRace == BARBARIAN then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_barbarian_gf_8290c6e8.mp3", "You have come a long way from your ancestral home too.  A long way indeed.", "agree", 4018981440, 1643885933, Spawn)
                            elseif spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_darkelf_gf_25d2fdb8.mp3", "You're no better than the Erudites who talk about knowledge and learning, but no nothing but hatered and cruelty.", "no", 148704174, 3686564179, Spawn)
	                        elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_dwarf_gf_24fd4d98.mp3", "I don't understand the dwarven need for fermented beverages, yet some of these drinks are rather tasty.  Are they not?", "confused", 3919208441, 3280982158, Spawn)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_erudite_gf_883036a.mp3", "Erudites will pay one day for what they did to the Kerra.  One day, and may I live to see it.", "glare", 2668074718, 3463788086, Spawn)
                            elseif spawnRace == GNOME then
                    	    PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_gnome_gf_5efa2600.mp3", "You make my tail twitch with all your cogs and flizgigs.  Please, keep those away from me.", "agree", 749990561, 792243248, Spawn)
                            elseif spawnRace == HALF_ELF then
                            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_halfelf_gf_55a42c98.mp3", "You understand somewhat how the Kerra feel.  You can not deny it.  Its in your blood.", "nod", 346671646, 3345517623)
                            elseif spawnRace == HIGH_ELF then
                    	    PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_highelf_gf_d5455b09.mp3", "Good leaders bide their time, planning all the while.  I'm sure you already know this.", "nod", 2270743009, 1129155946, Spawn)
                            elseif spawnRace == HUMAN then
			    	        local check = math.random(1,2)
			    	            if check == 1 then
					            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_human_gf_1e5f4af6.mp3", "If only you did not shave so often.  You too would have a luxurious coat!", "agree", 1334867520, 1335322677, Spawn)
                                elseif check == 2 then
					            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_human_gf_6692f65a.mp3", "Fishings not for everyone, but those who try it do enjoy it!", "nod", 905168936, 90990383, Spawn)
                                end                            
                            elseif spawnRace == KERRA then
			    	        local check = math.random(1,2)
			    	            if check == 1 then
					            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_kerra_gf_51feb046.mp3", "We should fish together sometime and share our catch with the tribe.", "agree", 3170951601, 1187001972, Spawn)
                                elseif check == 2 then
					            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_kerra_gf_8320096d.mp3", "Your tail stands proudly, and it should no matter where we Kerra find ourselves.", "nod", 2636110079, 1949408393, Spawn)
                                end
                            elseif spawnRace == WOOD_ELF then
                		    PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_woodelf_gf_8f0d8228.mp3", "The woods can close in upon one, but I guess there is solitude.  But at what price to one's health?", "shrug", 4081298696, 427834832, Spawn)
		          	        else
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
		                            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gf_925a7b74.mp3", "Give me the simplicity of life as the kerra once knew it, and I'll be satisfied.", "", 3093126564, 1574100386, Spawn)
                                    elseif check == 2 then	
                    	            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gf_4ae9178a.mp3", "I would like nothing better than to be with my pride, away from the bustle of any town.", "sigh", 261206360, 3555440428, Spawn)
	                           	    end
	                       end    	    
	                    elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gf_925a7b74.mp3", "Give me the simplicity of life as the kerra once knew it, and I'll be satisfied.", "", 3093126564, 1574100386, Spawn)
                        elseif choice == 3 then	
                        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gf_4ae9178a.mp3", "I would like nothing better than to be with my pride, away from the bustle of any town.", "sigh", 261206360, 3555440428, Spawn)
				       		      				       		        
				       	end                   
		              end			    	
				    end 
	    	    end
            
		
		elseif race == OGRE then
			if gender == MALE then
			elseif gender == FEMALE then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  			    
				        local choice = math.random(1,3)                         
                        if choice == 1 then	
                        PlayFlavor(NPC, "voiceover/english/ogre_eco_race_evil/ft/eco/evil/ogre_eco_race_evil_hail_gf_9fbe09f7.mp3", "So, the Overlord is good.", "confused", 335304683, 2001194684, Spawn)		                
                        elseif choice == 2 then	                        
	                	PlayFlavor(NPC, "voiceover/english/ogre_eco_race_evil/ft/eco/evil/ogre_eco_race_evil_hail_gf_ca94bf5b.mp3", "I greet you, now go.", "hello", 4258225166, 4130890842, Spawn)
                        elseif choice == 3 then				        
                            if spawnRace == GNOME then
					        PlayFlavor(NPC, "voiceover/english/ogre_eco_race_evil/ft/eco/evil/ogre_eco_race_evil_gnome_gf_7e47e298.mp3", "Heuheh.  Gnome kicking is fun game.", "chuckle", 3885636543, 1639205010, Spawn)
                            elseif spawnRace == OGRE then
                           	    local check = math.random(1,2)                                
                                if check == 1 then	
                                PlayFlavor(NPC, "voiceover/english/ogre_eco_race_evil/ft/eco/evil/ogre_eco_race_evil_ogre_gf_7efeea6c.mp3", "Crush your enemies!  They will whimper before you and beg for mercy!", "shakefist", 3378932907, 3321999118, Spawn)		                
                                elseif check == 2 then	                        
	                	        PlayFlavor(NPC, "voiceover/english/ogre_eco_race_evil/ft/eco/evil/ogre_eco_race_evil_ogre_gf_ddcbf6a7.mp3", "One day Rallos come back!  Lead us to victory again!", "happy", 2097451931, 2711808355, Spawn)
                                end                            
                            elseif spawnRace == RATONGA then
	                	    PlayFlavor(NPC, "voiceover/english/ogre_eco_race_evil/ft/eco/evil/ogre_eco_race_evil_ratonga_gf_a8084dbc.mp3", "Tiny cute thing.  Sharp teeth!", "nod", 3938312730, 2796835004, Spawn)
                            elseif spawnRace == TROLL then
	                	    PlayFlavor(NPC, "voiceover/english/ogre_eco_race_evil/ft/eco/evil/ogre_eco_race_evil_troll_gf_7f4b007.mp3", "Trolls so weak.  Couldn't hold on city from little frogies!", "stare", 1181218007, 44921376, Spawn)
                                                    
                            else
                           	    local check = math.random(1,2)
                                if check == 1 then	
                                PlayFlavor(NPC, "voiceover/english/ogre_eco_race_evil/ft/eco/evil/ogre_eco_race_evil_hail_gf_9fbe09f7.mp3", "So, the Overlord is good.", "confused", 335304683, 2001194684, Spawn)		                
                                elseif check == 2 then	                        
	                	        PlayFlavor(NPC, "voiceover/english/ogre_eco_race_evil/ft/eco/evil/ogre_eco_race_evil_hail_gf_ca94bf5b.mp3", "I greet you, now go.", "hello", 4258225166, 4130890842, Spawn)
                                end
				            end
				        end
			        end
		     end
		     
		elseif race == RATONGA then
			if gender == MALE then
	    elseif gender == FEMALE then
	            if FPfaction <0 then
                FactionChecking(NPC, Spawn, faction)
                else
				        local choice = math.random(1,3)                         
                        if choice == 1 then	
            		    PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_hail_gf_5fe381f6.mp3", "Yes, yes, that will do nicely... err, hello, who are you?", "scheme", 3504817921, 2028500155, Spawn)
                        elseif choice == 2 then	                        
	                	PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_hail_gf_bbcb85ec.mp3", "Oooh they will never suspect that.  Nooo they won't!", "giggle", 250411761, 4057906761, Spawn)
                        elseif choice == 3 then				        
                            if spawnRace == DARK_ELF then
	            	        PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_darkelf_gf_12accc66.mp3", "Perhaps the dark ones will require our services in the future.", "scheme", 3576261185, 2087562403, Spawn)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_erudite_gf_38dc60c0.mp3", "Smart, but don't be too impressed your mind.", "no", 2399746563, 2249174631, Spawn)
                            elseif spawnRace == GNOME then
					        PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_gnome_gf_84dc137c.mp3", "Well well.  What have you tinkered today?", "giggle", 926291350, 3056078082, Spawn)
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "", "Small and sneak, but not as sneaky as we!", "scheme", 0, 0, Spawn)
                            elseif spawnRace == OGRE then
                            PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_ogre_gf_7d54c5f1.mp3", "Offer you a ratty back ride?!", "happy", 829028236, 3823634247, Spawn)		                
                            elseif spawnRace == RATONGA then
                           	    local check = math.random(1,2)                                
                                if check == 1 then	
            		            PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_ratonga_gf_7fcc0516.mp3", "Watch for the trolls, they like to eats us!", "hello", 1635718299, 1583941867, Spawn)
                                elseif check == 2 then	                        
            		            PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_ratonga_gf_95e0fb2a.mp3", "Small and fast, we go where others can't!", "nod", 362113991, 3436119366, Spawn)
                                end                        
                            else
                           	    local check = math.random(1,2)
                                if check == 1 then	
            		            PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_hail_gf_5fe381f6.mp3", "Yes, yes, that will do nicely... err, hello, who are you?", "scheme", 3504817921, 2028500155, Spawn)
                                elseif check == 2 then	                        
	                	        PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_hail_gf_bbcb85ec.mp3", "Oooh they will never suspect that.  Nooo they won't!", "giggle", 250411761, 4057906761, Spawn)
                                end
				            end
				        end
			        end
		     end

		
		elseif race == TROLL then
			if gender == MALE then
			elseif gender == FEMALE then
			    	if FPfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else  			    
				        local choice = math.random(1,3)                         
                        if choice == 1 then	
            		    PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_hail_gf_417aa823.mp3", "Nasty scars and boiled tar.  Warriors is what we are!", "stare", 1257994883, 3501955854, Spawn)
                        elseif choice == 2 then	                        
	                	PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_hail_gf_f491bc11.mp3", "Tasty treats, lots of meats!", "giggle", 357958006, 4074544132, Spawn)
                        elseif choice == 3 then				        
                            if spawnRace == DARK_ELF then
	            	        PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_darkelf_gf_50ad1ae0.mp3", "Treat us badly in Neriak!  Hahaheh.  I laugh now we in same spot!", "chuckle", 3570765081, 2205040834, Spawn)
                            elseif spawnRace == DWARF then
                    		PlayFlavor(NPC, "", "Ohh!  I remember dorf!  Mmmm, good eatin'!", "squeal", 0, 0, Spawn, 0)
                            elseif spawnRace == ERUDITE then
		                    PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_erudite_gf_ab9e90ff.mp3", "Erudthings make good brain food! Har har har!", "ponder", 861910160, 2549513923, Spawn, 0)
                            elseif spawnRace == HIGH_ELF then
					        PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_highelf_gf_c9a250ac.mp3", "Ugh, no let elf in city!  What Overlord thinking?!?", "scream", 843646358, 1901406684, Spawn)
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "", "Small, but nice and fatty!", "giggle", 0, 0, Spawn)
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_iksar_gf_7b479161.mp3", "Reptile scales bring death wails!  Heharhar!", "giggle", 1217810742, 1063262246, Spawn)
                            elseif spawnRace == OGRE then
                            PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_ogre_gf_b1f3691c.mp3", "Not mess with you, not mess with me!", "no", 1032294332, 3970520281, Spawn)		                
                            elseif spawnRace == RATONGA then
            		        PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_ratonga_gf_bf61205a.mp3", "Scampering thing that eat my feet make tasty treat?!", "scheme", 344548094, 1299530652, Spawn)
                            elseif spawnRace == TROLL then
					        PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_troll_gf_43775dc6.mp3", "Curses to those who keep us here!", "cackle", 3968048606, 2214308174, Spawn)
                            else
                           	    local check = math.random(1,2)
                                if check == 1 then	
            		            PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_hail_gf_417aa823.mp3", "Nasty scars and boiled tar.  Warriors is what we are!", "stare", 1257994883, 3501955854, Spawn)
                                elseif check == 2 then	                        
	                	        PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_hail_gf_f491bc11.mp3", "Tasty treats, lots of meats!", "giggle", 357958006, 4074544132, Spawn)
                                end
				            end
				        end
			        end
		     end
			    
		elseif race == WOOD_ELF then
			if gender == MALE then
			elseif gender == FEMALE then
			        if Qfaction <0 then
                    FactionChecking(NPC, Spawn, faction)
				    else			    
			    	local choice = math.random(1,3)
	                    if choice == 1 then --racial check
	                        if spawnRace == BARBARIAN then
	                	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_barbarian_gf_91218875.mp3", "The weather would be much more pleasant if there were more trees around here.", "nod", 3303336281, 3062841711, Spawn)
                            elseif spawnRace == DARK_ELF then
                		    PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_darkelf_gf_894a567a.mp3", "The Feir`Dal will not let this traitor of the elven race reside within these city walls. Expect no more than a short welcome here.", "no", 26640370, 1478096414, Spawn)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_erudite_gf_99a1b907.mp3", "Do those runes... hurt?  They're unlike anything I've seen before!", "ponder", 1448423473, 1062251762, Spawn)
                            elseif spawnRace == GNOME then
					        PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_gnome_gf_2a8ece39.mp3", "No, I haven't got a foozle-whiket or whatever it is you're looking for.", "no", 1459338554, 1146648406, Spawn)
                            elseif spawnRace == HALF_ELF then
	                           	local check = math.random(1,2) 
	                           	    if check == 1 then
                		            PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_halfelf_gf_2474b915.mp3", "Let us meet later for a goblet of wine!  I'm sure you have great tales to tell.", "hello", 2915398014, 2744924447, Spawn)
                                    elseif check == 2 then
                		            PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_halfelf_gf_eb3acf89.mp3", "I don't understand the need for piercings, but they look fine on you.", "agree", 1366742481, 2195063196, Spawn)
                                end                            
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1011.mp3", "I miss the woods too, little one.  I miss them too.", "", 0, 0, Spawn)
                            elseif spawnRace == HIGH_ELF then
					        PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_highelf_gf_51612aae.mp3", "Yes, I'm keeping busy.  Thank you for asking.  May Tunare bless your family.", "hello", 4258351464, 2283092283, Spawn)
                            elseif spawnRace == HUMAN then
					        PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_human_gf_ddb65e92.mp3", "You could not know what it is like to lose your home.  You can try, but you cannot know.", "sad", 2761844849, 523697528, Spawn)
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_iksar_gf_751af14.mp3", "Stay away from me!  I will have nothing to do with one who has turned on his own kind!", "wince", 2630410413, 658432755, Spawn)
                            elseif spawnRace == KERRA then
					        PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_kerra_gf_9b0b8b2.mp3", "I've often wondered if a Kerra tail would be a help or a hindrance in life amongst the tree tops.", "ponder", 1005214225, 522504653, Spawn)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_ogre_gf_63762e4a.mp3", "You may try to fit in, but no one trusts a traitor.", "glare", 4238187202, 1962947677, Spawn)
                            elseif spawnRace == WOOD_ELF then
				                    if GetLevel(Spawn) >=50 then
				                    local check = math.random(1,4)     --Calls in Status Praise VO
				                    else	                                     
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
                		            PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_woodelf_gf_5621269a.mp3", "I too long for my home in Faydark.  Someday Tunare will answer us, I'm sure.", "nod", 3953058409, 3176959607, Spawn)
                                    elseif check == 2 then	
	                   	            PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_woodelf_gf_601050b5.mp3", "May Tunare's blessings be with you and yours.", "hello", 3511142094, 3935712685, Spawn)
				       		        elseif check == 3 then	
                		            PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_status_gf_80ffe645.mp3", "You have proven yourself among all those who doubt the Feir'Dal's worth.  Well done!", "thank", 670005551, 4229139858, Spawn)
				       		        elseif check == 4 then	
	                   	            PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_status_gf_8ef3f45.mp3", "I wish I've had half the adventures you've had.  Heh, but then, it seems I have.", "chuckle", 4263480174, 2069256069, Spawn)
				       		        end
				       		     end   
		          	        else
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
	                	            PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_3e59423a.mp3", "The blessing of Tunare is the highest blessing of all.", "thank", 853299003, 3297095439, Spawn)
                                    elseif check == 2 then	
                                    PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_50387146.mp3", "To be amongst the highest branches of a tree is to feel free!", "nod", 1191446540, 711911709, Spawn)
				       		        end                   
		                    end
                        elseif choice == 2 then	
	                	PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_3e59423a.mp3", "The blessing of Tunare is the highest blessing of all.", "thank", 853299003, 3297095439, Spawn)
                        elseif choice == 3 then	
                        PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_50387146.mp3", "To be amongst the highest branches of a tree is to feel free!", "nod", 1191446540, 711911709, Spawn)
                        end                        				    
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
end

-------------------------------------------------------------------------------------------

--                                  GenericEcologyCallout

-------------------------------------------------------------------------------------------

function GenericEcologyCallout(NPC, Spawn, faction)
    race = GetRace(NPC)
    spawnRace = GetRace(Spawn)
	gender = GetGender(NPC)
	Qfaction = GetFactionAmount(Spawn,11)
	FPfaction = GetFactionAmount(Spawn,12)
	local zone = GetZone(NPC)
	if GetZoneID(zone) >= 220 and GetZoneID(zone) <= 238 then                -- clarifies which zone is designated EVIL or GOOD
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
	
if race >= 0 and race <= 18 and gender >= 1 and gender <= 2 then        -- verifies NPC race/gender fits expected

		if race == BARBARIAN then                                           -- begins NPC race check
			if gender == MALE then                                          -- begins NPC gender check
			    if EVIL then                                                -- begins NPC faction/location check
			    elseif GOOD then                                        --SEE GenericRaceCheckHail FOR MALE BARBARIAN & GenericEcology2Hail FOR EVIL
				end   
			elseif gender == FEMALE then                                
			    if GOOD then                                                
			        if Qfaction <0 then-- checks if player is a citizen
			           if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
                        FaceTarget(NPC, Spawn)			            
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")
                        FactionCheckingCallout(NPC, Spawn, faction)
				    end    
				    else                                                    -- player is citizen and is hailed
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
                        FaceTarget(NPC, Spawn)			            
			            AddTimer(NPC,30000,"ResetCalloutTimer")                        
				    local choice = math.random(1,11)
				    if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_aoi_gf_2e85d8db.mp3", "Good day, love.  Enjoy yourself, ya hear?", "hello", 3358539218, 1293822221)
				    elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_aoi_gf_9fd46bc0.mp3", "You enjoying this weather?  I sure hope so!", "sniff", 4073398098, 738882758)
				    elseif choice == 3 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_2a467de4.mp3", "I fear no man or beast!", "flex", 2128441275, 1043815687)
				    elseif choice == 4 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_2dfeaa0a.mp3", "Many times I face death with no one to know.", "shrug", 2744180681, 630277713)
				    elseif choice == 5 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_65c7cb8c.mp3", "There is always a way, if desire is coupled with courage.", "nod", 1919974860, 3511707276)
				    elseif choice == 6 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_294af22b.mp3", "Breath that free air.  Its all the sweeter when you've earned it.", "sniff", 224238865, 4224982307)
				    elseif choice == 7 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_a3621b3b.mp3", "An ale a day keeps the blues away.", "smile", 3906908244, 1910427566)
				    elseif choice == 8 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_f6a79cd4.mp3", "Helping others keeps the soul pure.", "nod", 795123123, 1574455490)
				    elseif choice == 9 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_ec4612.mp3", "Always be vigil.  You never know when evil will strike!", "threaten", 1096415868, 4151719434)
				    elseif choice == 10 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_fad03256.mp3", "I'm as nervious as a karren in a room full of rocking chairs!", "squeal", 4225695611, 2945190068)
				    elseif choice == 11 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_28155374.mp3", "I'm not into politics.  I'm into survival!", "no", 4282239803, 2774251573)
				    end
				end
		    end end  --added 2 ends for timer and random checks
		
			    elseif EVIL then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")
                        FactionCheckingCallout(NPC, Spawn, faction)
				      end  
			        else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer") 			        
				    local choice = math.random(1,7)				    
				    if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/barbarian/barbarian_eco_evil_1_hail_gf_56e1abc5.mp3", "Don't worry, the last time I killed someone was a few months ago.  I've almost forgotten how its done.", "nod", 4284816178, 1371321884)
				    elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/barbarian/barbarian_eco_evil_1_hail_gf_6b05425a.mp3", "Don't try to make a lady out of me, and I won't try to make a lady out of you!", "hello", 3198450351, 218140189)
				    elseif choice == 3 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/barbarian/barbarian_eco_evil_1_hail_gf_7c898040.mp3", "If I wanted to speak with riffraff like you, you'd know it!", "glare", 655386949, 2487090829)
				    elseif choice == 4 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/barbarian/barbarian_eco_evil_1_hail_gf_7cbbffe9.mp3", "I wonder how fast you can run with one leg?", "threaten", 466422573, 1844554045)
				    elseif choice == 5 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/barbarian/barbarian_eco_evil_1_hail_gf_7d00f821.mp3", "All those rumors about the people I decapitated are false.  Trust me, I've decapitated many more by my count.", "cutthroat", 3428354992, 3197307307)
				    elseif choice == 6 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/barbarian/barbarian_eco_evil_1_hail_gf_af792eb2.mp3", "Did you just speak to me?  You're braver than most.", "boggle", 2586690724, 2745188740)
				    elseif choice == 7 then
				    PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/barbarian/barbarian_eco_evil_1_hail_gf_c76c11b.mp3", "No, I didn't say you could look at me or talk to me for that matter.", "no", 1570018463, 964886476)
				    end
	    	    end
		    end
		end    
	        end end --added 2 ends for timer and random checks


		elseif race == DARK_ELF then
			if gender == MALE then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
			    		if CalloutTimeCheck == false then
			            if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer") 				        
			    local choice = math.random(1,6)
	               if choice == 1 then
		           PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_hail_gm_10f790b8.mp3", "I refuse to be told what to do by simple-minded buffoons!", "no", 2790459232, 1613438336)
	               elseif choice == 2 then
		           PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_aoi_gm_23e14704.mp3", "Show your enemies the mercy they deserve: none.", "cutthroat", 2402174307, 2763960224)
	               elseif choice == 3 then
		           PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_hail_gm_beeaa42c.mp3", "I would never raise a hand to one below my station.  That's what servants are for.", "wink", 3973342937, 4016890574)
	               elseif choice == 4 then
	               PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_hail_gm_ad69e774.mp3", "I despise low-born scum such as you.  Leave me be.", "bye", 917481981, 3977919007)
	               elseif choice == 5 then
	               PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_hail_gm_dbd2dbd4.mp3", "Once there was a time when we Teir'Dal were the true masters of Norrath.", "shakefist", 1359499264, 3477163471)
	               elseif choice == 6 then
	               PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_hail_gm_ca32ae36.mp3", "I'm sorry.  I haven't any coins for beggers and vagabonds.", "chuckle", 2407101866, 844577329)
	               elseif choice == 7 then
		           PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_aoi_gm_308706a0.mp3", "Avert your eyes as I pass, commoner.", "stare", 1301519959, 1375374312)
	               elseif choice == 8 then
		           PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_hail_gm_4b8a95bb.mp3", "Things would be much different around here if the Tier'Dal were in power.", "threaten", 3258431623, 3729254237)
	               elseif choice == 9 then
		           PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_hail_gm_6d109e97.mp3", "Why do you insist fouling the air with your presence?", "stinky", 2438932566, 2309988451)
	               elseif choice == 10 then
		           PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_hail_gm_331c223b.mp3", "Pardon me, but you have mistaken me for someone who cares.", "glare", 385905158, 3095457959)
	                end 		              		              	              		         
		          end
	            end end  --added 2 ends for timer and random checks

		elseif gender == FEMALE then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
                         end
				    else
			    		if CalloutTimeCheck == false then
			            if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer") 				        
	           local choice = math.random(1,5)

	                if choice == 1 then
                    PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_aoi_gf_e557f427.mp3", "Anyone who dares to disagree with me will feel the taste of my steel.", "threaten", 1814321919, 1558985390)
                	elseif choice == 2 then
                	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_hail_gf_8a6fa526.mp3", "Who do those Iksar think they are?  There will be a reckoning one day, I swear.", "shakefist", 604625870, 159976278)
                	elseif choice == 3 then
                	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_hail_gf_269d3910.mp3", "How dare you speak to me as if I was nothing more than a dirty troll!", "glare", 708249483, 3464421673)
                	elseif choice == 4 then
                	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_aoi_gf_eb029bed.mp3", "I am sickened by the lack of amenities within this city.", "flustered", 2205842657, 1362436730)
                    end
	                end
			    end
			 end end   --added 2 ends for timer and random checks
			    
		elseif race == DWARF then
			if gender == MALE then
			        if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")	
			            local choice = math.random(1,2)
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
			    		if CalloutTimeCheck == false then
			            if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer") 
			    local choice = math.random(1,9)
			        if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_aoi_gm_b4ff8ace.mp3", "I'm itch'n for a good fight!  Are those goblins back yet?", "shakefist", 478033729, 3488014331)
			        elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gm_18f9b118.mp3", "Oh, ho!  You snuck up on me.  Good to see ya.", "doubletake", 2049370386, 4131204607)
				    elseif choice == 3 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gm_1f07ffb4.mp3", "Its good to always have a sharp axe and a full belly!", "wink", 2265630972, 3685791755)
                    elseif choice == 4 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gm_4a5e53d4.mp3", "Sure. I'm sure sometimes it seems like I'm sober, but trust me, I'm not.", "no", 2723897486, 2019496108)
			        elseif choice == 5 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gm_82c80dc0.mp3", "I've got a good mind to go in the tavern and never come out.", "nod", 927450741, 2295220361)
				    elseif choice == 6 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gm_8e3bb3e0.mp3", "I've seen it all!  Now I just want to relax in the comfort of the city.", "orate", 1484754695, 1754363723)
                    elseif choice == 7 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gm_f593b7f4.mp3", "I prefer the dark freshly dug tunnels underground, but I guess this city will do.", "shrug", 2336463438, 545977097)
                    elseif choice == 8 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gm_5f40e3c4.mp3", "How can you refuse a woman with ale and whiskers?", "confused", 3537795037, 2047005583)
			        elseif choice == 9 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gm_bd8ccf81.mp3", "Ale may be the life's blood, but fighting is the soul my existence!", "nod", 4220338619, 1417901850)
				    end
				end 
				end end
		    elseif gender == FEMALE then
		    			if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")		    			    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
			    local choice = math.random(1,10)
			    		if CalloutTimeCheck == false then
			            if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer") 			    
			        if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_aoi_gf_5475f635.mp3", "If you haven't done ten times your weight in dirt, you haven't done a lick of work.", "no", 221273044, 4217910335)
			        elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_aoi_gf_5615016.mp3", "Where are ya goin?  It's impolite to go off and fight without invite'n me!", "ponder", 115051805, 1662538455)
				    elseif choice == 3 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gf_6bb475f8.mp3", "Oh, I love baked cakes.  Straight from the oven!", "chuckle", 857774146, 1935419474)
                    elseif choice == 4 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gf_a1f97cb0.mp3", "Only real dwarven men can handle a dwarven woman.", "nod", 2568025342, 2377695865)
			        elseif choice == 5 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gf_b02d9ccd.mp3", "Good friends and good food is all I ask.", "nod", 1880629444, 3748722817)
				    elseif choice == 6 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gf_dd68828f.mp3", "The city is nice, but it feels a bit chilly up here.", "shiver", 3508028135, 2362399902)
                    elseif choice == 7 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gf_147a85da.mp3", "I love a good adventure. 'Specially any that involve bake'n!  Pies are a real challenge!", "happy", 981410795, 126534529)
                    elseif choice == 8 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gf_14a2c689.mp3", "I only dream of short days and long nights in the tavern.", "nod", 3089133697, 1701815749)
			        elseif choice == 9 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gf_10269245.mp3", "Stout, hairy, and round! What more could you ask for in a man?", "woo", 941422359, 868281087)
	                elseif choice == 10 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gf_13e943bf.mp3", "I still dream of the good ol' days.  Digging up gems and gold.", "ponder", 2352081128, 819343353)
                    end
				end
		    end
	    end end	
		
	    elseif race== ERUDITE then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
			    		if CalloutTimeCheck == false then
			            if math.random(1, 100) <= 20 then
			            FaceTarget(NPC,Spawn)
                        CalloutTimeCheck = true
			            AddTimer(NPC,30000,"ResetCalloutTimer")				        
	                local choice = math.random(1,11)
	                    if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_aoi_gm_e90ac60e.mp3", "Looking at you makes me feel so much better about myself.", "snicker", 2865201602, 274049333)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gm_d4015769.mp3", "Have you ever thought the purpose of your life is just to serve as a warning to others?  ", "point", 3095314028, 1070295625)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_aoi_gm_f05af274.mp3", "Amazing!  It CAN actually walk and talk at the same time.", "stare", 1912497577, 4274560045)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gm_d2856502.mp3", "The way you imitate someone who actually has a brain is quite impressive.", "applaude", 664526339, 2273636799)
                    	elseif choice == 5 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gm_30b068d9.mp3", "Idiots should speak only when spoken to.", "chuckle", 2652051067, 1412719109)
                    	elseif choice == 6 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gm_a059271d.mp3", "If at first you don't succeed, then you should finally accept the truth that you are a failure.", "scold", 3175955235, 2053347238)
                    	elseif choice == 7 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gm_2b280a78.mp3", "The mind is a terrible thing to waste.  Feeling guilty, are we?", "glare", 1190376151, 1209115227)
                    	elseif choice == 8 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gm_3fda1d89.mp3.mp3", "I can never understand why stupid people don't choke on their tongues.", "confused", 258155375, 1323085568)
                     	elseif choice == 9 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gm_8af5b859.mp3.mp3", "The disadvantage of being better than everyone else is that people assume you're pretentious.", "shrug", 3243127514, 1853886391)
                      	elseif choice == 10 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gm_bb83989b.mp3.mp3", "I do not speak with animals.  Please try to understand.", "no", 1164489214, 2167310923)
                      	elseif choice == 11 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gm_e7bd0c59.mp3.mp3", "Count yourself lucky that the Overlord has not yet outlawed stupidity.  Therefore, you're free to go!", "nod", 1164489214, 2167310923)
                    	end
                   end 	
                end end    	
				elseif GOOD then
				    if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")				        
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
			    		if CalloutTimeCheck == false then
			            if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")				        
                	local choice = math.random(1,10)

                    	if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gm_681bd632.mp3", "As with all conflict, the correct resolution is to not become involved.", "no", 1961295370, 3396676212)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gm_f2332236.mp3", "It is easy to disperse hateful attitudes with an act of kindness.", "thanks", 2716159461, 2493983068)
    	            	elseif choice == 3 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_aoi_gm_500eba11.mp3", "We must preserve Qeynos.  If we do, then a great victory will be upon us all!", "agree", 1282142717, 279173246)
	                    elseif choice == 4 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_aoi_gm_bfe41325.mp3", "When darkness reign across the face of Norrath, find solace in your inner light.", "orate", 1747616765, 2317450348)
	                    elseif choice == 5 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gm_87ee0892.mp3", "It is impossible to defeat an ignorant man in an argument.", "no", 1688439631, 2741592842)
                    	elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gm_92543d16.mp3", "There is one way to every argument to your advantage.  Always be crrect!", "nod", 3847243276, 420228124)
	                    elseif choice == 7 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gm_466700a5.mp3", "You must completely devout yourself to the notions of truth and goodness.", "scold", 4256416895, 410466169)
	                    elseif choice == 8 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gm_4131077.mp3", "Happiness is achieved by those who are kind within and respectful of others.", "happy", 3493831365, 2273149590)
	                    elseif choice == 9 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gm_bf4a6828.mp3", "We all must return to our origins.  Answering our questions of the past arms us to confront a certain future.", "sniff", 2168273293, 2294601502)
	                    elseif choice == 10 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gm_cd2c38ae.mp3", "Truth will always be true, regardless of the lack of understanding.", "ponder", 1482635271, 2842583444)
	                   end                          	                    	
                    end
                end
			end end	
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")				        
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
			    		if CalloutTimeCheck == false then
			            if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")					        
	                local choice = math.random(1,10)
                	if choice == 1 then
	                PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gf_22870e86.mp3", "I have no patience for someone with such a limited mind.", "no", 506026711, 3133038239)
                	elseif choice == 2 then
	                PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gf_a4ceea7d.mp3", "Hello.  By the way, I don't care.  Thanks.", "hello", 3118425564, 2914161028)
                	elseif choice == 3 then
	                PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_aoi_gf_3b47e8b4.mp3", "I will incinerate anyone who doesn't acknowledge my superiority.", "threaten", 1985606353, 3418018124)
                	elseif choice == 4 then
	                PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gf_22f6bb5b.mp3", "I doubt there is anyone in this city more intelligent than myself.", "sniff", 1968386351, 1062373550)
                	elseif choice == 5 then
	                PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gf_3a1d92f9.mp3", "The mindless babble of a simpleton delights me to no end.", "sarcasm", 866230564, 1449447935)
                	elseif choice == 6 then
	                PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gf_22f6bb5b.mp3", "You disgusting little creature.  Be gone!", "point", 1968386351, 1062373550)
                	elseif choice == 7 then
	                PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gf_30a32e42.mp3", "I am unable to grasp the concept of humility.  Perhaps I can watch you for a while.", "shrug", 2312176575, 2681309062)
                	elseif choice == 8 then
	                PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gf_71a543b.mp3", "I am deep in throught.  Please deprive me of your company.", "ponder", 1770011628, 3708308885)
                	elseif choice == 9 then
	                PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gf_251836f2.mp3", "The harder you try, the dumber you look!  Please, don't let me be the one to stop you.", "chuckle", 120588620, 2055866671)
                	elseif choice == 10 then
	                PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/erudite/erudite_eco_evil_1_hail_gf_d021c931.mp3", "If I pretended you weren't here, would you go away?", "wince", 3960906270, 232532094)
                    end	               		               		               		               		               		               		               		               	                
	           end
	        end end
				elseif GOOD then
				    if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")				        
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
			    		if CalloutTimeCheck == false then
			            if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")					        
                	local choice = math.random(1,12)

    	            	if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_aoi_gf_7fcbca60.mp3", "An era of darkness has finally come to a close. Now we must see what future Norrath has in store.", "confused", 2437621868, 2071976840)
	                    elseif choice == 2 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_5453f96d.mp3", "Paradise has always been here on Norrath for those who are thoughtful and responsible for their actions.", "thanks", 3529954798, 1064012556)
	                    elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_e0bc946.mp3", "I have felt the stirrings of a strong magical influence.  Good fortune will follow to those with the will to persevere!", "ponder", 4152344209, 239250643)
                    	elseif choice == 4 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_84882e21.mp3", "You must not be afraid to trust others.  Openness is the key to finding a correct solution.", "sigh", 1792907516, 2786700542)
	                    elseif choice == 5 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_7895591c.mp3", "If we focus on the higher truths that govern our actions, we fathom the underlying power within them.", "curtsey", 2416988832, 3319542974)
	                    elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_aoi_gf_ff7f6e34.mp3", "You must be cautious of the draws of evil.  We must master our temptations to preserve our city.", "bye", 4169564254, 3711533067)
	                    elseif choice == 7 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_5d08d354.mp3", "It is good to understand your progress.  Voluntary limitations can enhance your personal growth.", "agree", 1896069258, 2274589764)
	                    elseif choice == 8 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_9aa6730d.mp3", "To defeat the forces of chaos, you must master your true inner calm.", "orate", 3386290119, 1807725087)
	                    elseif choice == 9 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_93a14dae.mp3", "Your master of the Isle was a breakthrough.  Use caution and do not fall into old habbits.", "scold", 3304205084, 3463450420)
	                    elseif choice == 10 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_2434ad34.mp3", "The time for ego must be set aside.  Your faith in a higher power will preserve you in the times ahead.", "orate", 2861437371, 3398791867)
	                    elseif choice == 11 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_64055b3d.mp3", "All good things will come to the innocent.", "bow", 3780206991, 3751425250)
	                    elseif choice == 12 then
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_fe6e4528.mp3", "If power is what you seek, you must master the difference between right and wrong.", "nod", 3802952369, 586104398)
                        end   
				    end 
			    end
			end	
		end end	
			
		elseif race == FROGLOK then
			if gender == MALE then
			    	if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
			    		if CalloutTimeCheck == false then
			            if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")				        
            	local choice = math.random(1,12)

                	if choice == 1 then
	                PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_f357bdfe.mp3", "Anon stranger!  If thou has any news of my kin, return to Castleview!", "nod", 1789254366, 4068928413)
                	elseif choice == 2 then
                	PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_109feb61.mp3", "Hast thou any news of our lost kin?", "ponder", 2372213836, 4116685779)
                	elseif choice == 3 then            	    
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_3f899525.mp3", "Alack!  Dost yon adventurers think to aid in the search for the Sons of Marr?", "boggle", 8384978, 3425989342)
                	elseif choice == 4 then            	    
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_aoi_gm_5c47b7fa.mp3", "Of course I noticed him!  He was nothing more than a braggart and a cad.", "frustrated", 432869819, 4218797807)
                	elseif choice == 5 then            	    
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_aoi_gm_9106b8f.mp3", "Dost thou bite thy thumb at me, sir?  Thou are't rank idle-headed dismel dreaming rat's bane!", "swear", 3764619066, 2005097866)
                	elseif choice == 6 then            	    
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_5300e94.mp3", "Hark!  Another refugee has arrived in the city!  Good show defeating those goblins on the isle.", "hello", 2512274162, 1153168327)
                	elseif choice == 7 then            	    
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_9573db0a.mp3", "I say!  Dost though seek to stand with us against the evils and tyranny of the land?", "nod", 1132043246, 1126159291)
                	elseif choice == 8 then            	    
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_54051a92.mp3", "Well met, my astute traveler.  The evil rogues of Freeport would never trifle with so dashing an adventurer.", "agree", 2925268962, 3643630927)
                	elseif choice == 9 then            	    
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_79306651.mp3", "Aye!  I crave your pardon.  Goodmorrow to you stranger.", "bye", 723971409, 21144837)
                	elseif choice == 10 then            	    
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_a446c215.mp3", "Nay traveler.  I have no desire to exchange pleasantries with thou.", "no", 4046949141, 791911027)
                	elseif choice == 11 then            	    
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_aeef4870.mp3", "Here, here!  Wonderful to have you with us in the city.", "happy", 1351314175, 2941555770)
                	elseif choice == 12 then            	    
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_aeef4870.mp3", "I pray on you, stranger.  Dost thou any news on friends of Gukta?", "bow", 1351314175, 2941555770)
                    end
	           end
	       end end
             elseif gender == FEMALE then
            		if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")            		    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
			    		if CalloutTimeCheck == false then
			            if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")					        
                local choice = math.random(1,9)
                    if choice == 1 then
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_aoi_gf_8d30932a.mp3", "May the gods keep thee.  'Tis a bessing to have Castleview Hamlet as our home in Qeynos.", "bow", 3522764394, 2182159483)
                 	elseif choice == 2 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_aoi_gf_bdbdb78e.mp3", "Curse the ill timed luck of it all!  I had hoped thou had'th bring news of our missing families.", "shrug", 1153289100, 392994268)
   	                elseif choice == 3 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_3c0848a6.mp3", "I thank thee for the kind hail.  Goodmorrow to you, traveler.", "bye", 4059931003, 1290457989)
   	                elseif choice == 4 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_9ff4f18c.mp3", "Fare thee well, my brave adventurer!  If thou hath any news of our kin, return to Castleview!", "curstey", 2304123366, 1172967267)
   	                elseif choice == 5 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_a64f6eec.mp3", "What hast thou done?  When one greets a daughter of Marr, a small bow is in order!", "boggle", 2184035287, 59673464)
   	                elseif choice == 6 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_aaa0d7f3.mp3", "Mighty good then.  How are't thou on this fine afternoond?", "hello", 725320917, 2360930144)
   	                elseif choice == 7 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_c0864f03.mp3", "Now ye shall'th rejoyce within the taverns by night, but we shall not rest until the truth of our kin hath been discovered.", "happy", 1638938881, 2182528216)
   	                elseif choice == 8 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_e4cf5b64.mp3", "How now, friend adventurer?  Has't thou seen other daughters of Marr in the wilds?", "ponder", 2966512768, 1279748767)
   	                elseif choice == 9 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_f56ada2a.mp3", "The queen calls all of us to service.  We shall find our kin to serve her majesty.", "agree", 484194272, 4099511252)
                    end                                                                                                                           
                end
			end
        end end
			
		elseif race == GNOME then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")  			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
			    		if CalloutTimeCheck == false then
			            if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")					        
	            local choice = math.random(1,11)

    	            if choice == 1 then
    	        	PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_3b50e81d.mp3", "For the last time, gnomes didn't make Luclin explode!  We would have gone with disintegration.", "grumble", 269246846, 1507536385)
    	            elseif choice == 2 then
    	        	PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_3c96722f.mp3", "It is said there is more than one way to skin a cat.  My research proves that saying correct.", "wink", 270865755, 3814599267)
    	            elseif choice == 3 then
    	         	PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_a0ec45ef.mp3", "Through the advances in modern magic, anything is possible.", "scheme", 2871018676, 2157629655)
                	elseif choice == 4 then
    	        	PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_87cefc8f.mp3", "I will prove to them that I'm not mad!  If I have to kill everyone of them to prove it, I will!", "dance", 3561903619, 1901803882)
    	            elseif choice == 5 then
    	        	PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_34756811.mp3", "How many times must I say it?  Acid first, then the eyeballs, not the other way around!", "scold", 3381670490, 1272629802)
    	            elseif choice == 6 then
    	        	PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_b7905eb1.mp3", "No, no, no!!!  That will never work!  The person still needs to breathe, don't they?  Don't they?", "shrug", 3693935176, 3848510180)
            	    elseif choice == 7 then
    	        	PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_b0ae4c2e.mp3", "I really dislike the word \"conscience\" don't you?", "glare", 125996156, 1415506360)
             	    elseif choice == 8 then
               	   	PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_3f3e760a.mp3", "So far, I have found kerrans to have only one life, not nine.  I insist on finding the other eight!", "ponder", 4225274276, 2202716414)
               	    elseif choice == 9 then
               		PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_aoi_gm_c6354fcc.mp3", "Oh no, not another failed experiement!  Oh, its just a person.", "facepalm", 4280227325, 2173466505)
             	    elseif choice == 10 then
    	        	PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_4d2d14ae.mp3", "So many test subjects, so little time!", "scheme", 2502077, 3261378172)
                    elseif choice == 11 then
                    PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_9db76689.mp3", "I must find a wall before I lose this thought!", "frustrated", 1979069834, 1194484208)
	                end
	            end		        
			end end        
				elseif GOOD then
				    if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")  				        
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
			    		if CalloutTimeCheck == false then
			            if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            AddTimer(NPC,30000,"ResetCalloutTimer")					        
			            FaceTarget(NPC,Spawn)
				    local choice = math.random(1,4)

                        if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gm_f3d18eed.mp3", "Happiness is an invention that doesn't blow up in your face.", "cackle", 3009155014, 2014645373)
                       	elseif choice == 2 then
	                    PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gm_482b24df.mp3", "Once I can get the steam to stop being hot,  I can give my invention to everyone!", "cheer", 2061305324, 3983971023)
                    	elseif choice == 3 then
	                    PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gm_b060ec8f.mp3", "Brilliant!  Water that doesn't get wet!  I must remember to write this down.", "yeah", 3284558618, 1203993958)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gm_cfe720df.mp3", "I wonder how efficient waterfalls would be to power a combustible chocolatizing confectionator?", "confused", 2155652930, 404735102)
                       	elseif choice == 5 then
	                    PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gm_a20b5775.mp3", "For every invention there is an equally opposite explosion!", "happy", 772713208, 2603246917)
                    	elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gm_275aaf38.mp3", "Wouldn't it be great if fruit was explosive?  It would be a wonderful power source and delicious at the same time!", "agree", 1275295146, 514792648)
                    	elseif choice == 7 then
                    	PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_aoi_gm_dad26fdb.mp3", "May your calculations work most of the time!", "thumbsup", 1756949489, 1962052288)
		                end
	                 end
                end
			end end	
			elseif gender == FEMALE then
			    if GOOD then
			        if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			            
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
			    		if CalloutTimeCheck == false then
			            if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")					        
                	local choice = math.random(1,5)
                    	if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gf_3283725c.mp3", "If my calculations are correct, the equation itself is wrong.", "shrug", 969769156, 2288581541)
	                    elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gf_65399fc8.mp3", "An invention in repair is worth two in the scrap heap.", "ponder", 2759163216, 541838845)
                    	elseif choice == 3 then
	                    PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gf_297592a6.mp3", "If the facts don't fit the theory, I say change the facts!", "smile", 1798028414, 971115717)
	                    elseif choice == 4 then
                	    PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gf_9827991a.mp3", "The secret to creativity is knowing how to hide your sources - especially from the neighbors.", "lookaway", 1727327737, 3359456905)
                	    elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_hail_gf_b6cff742.mp3", "Anyone can be clever, but only true geniuses can innovate.", "agree", 4261250991, 2608600580)
                        end
                    end
                end end
				elseif EVIL then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer") 			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
			    		if CalloutTimeCheck == false then
			            if math.random(1, 100) <= 20 then
 			            FaceTarget(NPC,Spawn)
                       CalloutTimeCheck = true
			            AddTimer(NPC,30000,"ResetCalloutTimer")					        
	                local choice = math.random(1,4)
                	    if choice == 1 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_aoi_gf_cf624473.mp3", "I told him that the skin would grow back in time, but did he listen?", "sigh", 2176996699, 617875144)
                 	    elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gf_be42d521.mp3", "I have no time to waste on safety measures.", "heckno", 3230037003, 51715991)
                	    elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gf_a96fdda8.mp3", "If I found the smallest piece of magical residue in the world and cut it in half, I wonder what would happen?", "scheme", 419040585, 4060599636)
	                    elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gf_b0e1446f.mp3", "Only an amateur would bother worrying about ethics!", "wink", 3193611171, 1050666978)
				        end
	    	        end
		        end
            end             
        end end
		
		elseif race == HALF_ELF then
			if gender == MALE then
			    if GOOD then                                                --SEE SPAWN RACE HAIL FOR GOOD HALFELF
				elseif EVIL then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer") 			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
			    		if CalloutTimeCheck == false then
			            if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")					        
				    local choice = math.random(1,12)
	                    if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_4da968d0.mp3", "Keep your hand on your blade when walking around here.", "wink", 730795107, 3036681236)
                        elseif choice == 2 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_ef8afd3c.mp3", "I gotta get into the Militia.  Then I could legally beat up people.", "ponder", 2140199906, 2198679856)
                        elseif choice == 3 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_2810cabf.mp3", "Who does that Overlord think he is anyway?", "shrug", 1997807892, 1535229241)
                        elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_7344f21b.mp3", "I'm in the mood to kick someone in the teeth.", "kick", 620861878, 995351111)
                        elseif choice == 5 then
                    	PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_1a67afe9.mp3", "Wipe that smirk off your face before the guards do it for you.", "scold", 895269036, 3337184900)
	                    elseif choice == 6 then
                    	PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_aoi_gm_a371c976.mp3", "Were you just looking at me!?  Yeah. That's what I thought!", "whome", 326349229, 2602489299)
                        elseif choice == 7 then
                    	PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_aoi_gm_60ba0b55.mp3", "Now ... Whose coin purse am I going to take today?", "ponder", 3034704035, 2487254069)
                        elseif choice == 8 then
                    	PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_6bd51371.mp3", "I'm a dual-breed, not a half-elf.  If you call me half-elf again, I'll cut YOU in half!", "cutthroat", 2884965634, 996787293)
                        elseif choice == 9 then
                    	PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_852b8675.mp3", "Shove off, mate!", "shakefist", 4223989531, 84768942)
                        elseif choice == 10 then
                    	PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_b67a4c90.mp3", "I don't want to be seen talking to you.  Bad for the image, you know?", "lookaway", 3819272384, 2481462860)
                        elseif choice == 11 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_1edba7a5.mp3", "Quit breathing my air!", "glare", 2440457715, 1164344641)
                        elseif choice == 12 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_aoi_gm_a371c976.mp3", "Were you just look'n at me?  Yeah, that's what I thought.", "stare", 326349229, 2602489299)
	                    end    	                        
	                end
	           end   	
            end end
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer") 			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
			    		if CalloutTimeCheck == false then
			            if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")					        
				    local choice = math.random(1,7)

                	    if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_e88fad9f.mp3", "Whoa!!!  I don't remember saying I wanted to talk to you!", "heckno", 3869016622, 3073089976)
                	    elseif choice == 2 then
               		    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_cec6fc9a.mp3", "If I ruled this city, there would be statues of me EVERYWHERE!", "fullcurtsey", 2776668686, 3459755281)
                	    elseif choice == 3 then
               		    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_53c5bc53.mp3", "One day I'll be famous and everyone here will be sorry they ignored me.", "grumble", 1314849459, 3332284891)
                	    elseif choice == 4 then
               		    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_29efa844.mp3", "I didn't see or hear anything!  I swear!", "shiver", 485112397, 1983474419)
                	    elseif choice == 5 then
               		    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_f2f1105d.mp3", "I already stuck three people today.  Do you want to be the one to make it four?", "scold", 591598271, 2045220321)
                    	elseif choice == 6 then
	               	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_e22fa528.mp3", "What's the difference between your face and your bottom?  Yeah,  I can't tell either.", "shrug", 3407089973, 2027516210)
	                    elseif choice == 7 then
	               	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_2c74d6d9.mp3", "Get your foul orc-breath away from me!", "stinky", 3849285611, 1607961607)
                	    end
            	    end
            	 end end
				elseif GOOD then
			        if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer") 			            
			            local choice = math.random(1,2)
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
			    		if CalloutTimeCheck == false then
			            if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")					        
                	local choice = math.random(1,12)

	                    if choice == 1 then
	               	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_cbbaf023.mp3", "I've gotta get rid of these clothes; they're so one-hundred years ago.", "grumble", 3038038462, 3464193459)
	                    elseif choice == 2 then
	               	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_62804932.mp3", "I'm only happy when it rains.  Well.. I like sunny days too.  Okay... I'm actually happy all the time.", "confused", 1094375942, 2257836955)
                	    elseif choice == 3 then
	            	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_5b0f480.mp3", "I'm tired of waiting!  I want to make something of myself!", "pout", 3723196832, 16921270)
	                    elseif choice == 4 then
               		    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_94429fcb.mp3", "As soon as I get my own boat, I'm outta here!", "nod", 314587977, 2229036874)
                	    elseif choice == 5 then
               		    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_caf99562.mp3", "I don't know why the ancestors whine so much!  I really like Qeynos, why would they want to leave?", "shrug", 3776385844, 3884162072)
                  	    elseif choice == 6 then
               		    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_aoi_gf_d3c4c401.mp3", "I hope you find the day to your liking.", "hello", 674577236, 468072811)
                	    elseif choice == 7 then
            		    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_4a0665a0.mp3", "I'm so depressed!  I had to work all day!", "sad", 3176397311, 2616932103)
	            	    elseif choice == 8 then
	               	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_1f61925a.mp3", "Are my roots showing?  I think I'll go for a light blueberry mixed with jum-jum highlights.", "ponder", 4153154191, 497875539)
	                    elseif choice == 9 then
	            	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_5c8eceae.mp3", "My ancestors don't understand me.  They're from a completely different era.", "flustered", 2843616704, 1740340084)
 	                    elseif choice == 10 then
               		    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_a9d0aa5.mp3", "The Tier'Dal are so romantic.  The way they're all dark and gloomy.", "flustered", 2994951308, 4256817454)
	            	    elseif choice == 11 then
	            	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_hail_gf_892152e8.mp3", "Me and my friends have all agreed to be non-conformists.", "agree", 2451936333, 2413299209)
	                    elseif choice == 12 then
	            	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_aoi_gf_f8dd15ce.mp3", " Got any coin?", "beg", 3660925534, 3735346681)
		                end
	               end
				end
			end
	    end end
	
	    elseif race == HALFLING then
			if gender == MALE then
		       if Qfaction < 0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")		           
                        FactionCheckingCallout(NPC, Spawn, faction)
                        end
                else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")                       
	            local choice = math.random(1,12)

            	    if choice == 1 then
	           	    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_cd9164d6.mp3", "You're a stranger. And I don't like strangers, no sir I don't!", "sulk", 785726454, 3155500140)
            	    elseif choice == 2 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_75c0e97c.mp3", "Welcome to the city, adventurer. Be mindful of the peace and quiet.  Here in Qeynos, we value our privacy.", "bow", 1955296899, 2249687997)
                    elseif choice == 3 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_50622dfa.mp3", "Whoa, hello there!  Eager and in a hurry I see.  My advice, take your time.  The city isn't going anywhere.", "wave", 2627404831, 2664895493)
                    elseif choice == 4 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_cf902b40.mp3", "Get on now!  There is plenty of work to be done.  Maybe you should lend a hand if you feel up to it.", "point", 1396062221, 310311489)
                    elseif choice == 5 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_f657192c.mp3", "Nostalgia isn't what it use to be.", "no", 2017572665, 1813639796)
                    elseif choice == 6 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_7d33c817.mp3", "Nice weather we're having.  Should make for a good harvest this season, if it holds up.", "agree", 3022454580, 2853198849)
                    elseif choice == 7 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_aoi_gm_89ed3363.mp3", "Wonderful.  More troublesome adventurers in the city.", "sigh", 3296911201, 4000062691)
                    elseif choice == 8 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_1e924418.mp3", "Hail, and welcome to the city friend!", "hello", 3400282816, 2842293637)
                    elseif choice == 9 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_aoi_gm_fea5fead.mp3", "The world is round!  Its round, I say.  As well it should be!", "nod", 4205711950, 2062936277)
            	    elseif choice == 10 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_b44f103.mp3", "Oh good, another refugee in the city.  I hope you're not a worthless layabout.  We don't abide apathy here.", "sarcasm", 516875735, 233361227)
                    elseif choice == 11 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_d79063bf.mp3", "Ahh, that's what I love about Qeynos.  So many bakeries, so many pies!", "happy", 894976267, 1675938925)
                    elseif choice == 12 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_103d60c5.mp3", "Well, it looks like its getting close to nap time again.", "yawn", 121409065, 1108008452)
                    end
                end
            end end
		elseif gender == FEMALE then
            if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")                
                        FactionCheckingCallout(NPC, Spawn, faction)
                    end
                    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
			            FaceTarget(NPC,Spawn)
                        CalloutTimeCheck = true
			            AddTimer(NPC,30000,"ResetCalloutTimer")   
            	local choice = math.random(1,8)		    
             	    if choice == 1 then
	        	    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_bc49d3d0.mp3", "Laziness is nothing more than the habit of resting before you get tired.", "yawn", 2068417649, 3867807288)
            	    elseif choice == 2 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_a3259538.mp3", "You should head by the tavern later on! Every night in Qeynos is cause for celebration.", "cheer", 3875741901, 4154770080)
	                elseif choice == 3 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_5b6e8d2f.mp3", "Do you like muffins?  Muffins are my favorite, I eat them every chance I get.", "sigh", 4155434475, 829232573)
            	    elseif choice == 4 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_3dc6b124.mp3", "Get the wash, get the wash.  This whole city would fall apart if I didn't deliver the clothes on time.  ", "frustrated", 4277096439, 928366048)
            	    elseif choice == 5 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_1b77439f.mp3", "Be on the lookout, friend!  I just spoke to the guards.  I've no doubt gnolls are scouting the nearby area.", "lookaway", 495282965, 1739106402)
            	    elseif choice == 6 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_6594953c.mp3", "If a thing isn't worth saying, you sing it.", "wink", 1056697572, 3706271932)
	                elseif choice == 7 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_19dfb2d9.mp3", "Greetings, stanger.  Enjoying your stay in the city I hope!", "hello", 3259354135, 3198236614)
            	    elseif choice == 8 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_aoi_gf_86c7855.mp3", "Let's see.  I'm going to need a Baubbleshire berries, Eldarr root, and a smidgen of spiced fish.", "ponder", 1080385311, 773701526)
              
                end
            end
	    end
    end end		
		
		elseif race == HIGH_ELF then
			if gender == MALE then
			        if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			            
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
			            FaceTarget(NPC,Spawn)
                        CalloutTimeCheck = true
			            AddTimer(NPC,30000,"ResetCalloutTimer")   				        
            	local choice = math.random(1,13)

                	if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_eb4f8f5d.mp3", "I hope you have been sent by someone of importance. I'm quite busy.", "yawn", 111891212, 1507953677)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_4fa9c654.mp3", "How do you do! I am always pleased to meet a capable being, such as yourself.", "nod", 4124935177, 986848244)
                	elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_6d02d4f.mp3", "Hail, friend and well met. I do hope your visits to our village are frequent. Too often do adventurers fail to return.", "stare", 1030195744, 970105613)
                	elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_aoi_gm_13c1cb64.mp3", "The winds carry voices of powerful foes and dragons of unimaginable strength and magic.", "orate", 2352792191, 2945941710)
                	elseif choice == 5 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_aoi_gm_683b2a87.mp3", "Ah, it brings me happiness to see so many newcomers arriving to exalted the city of Qeynos.", "hello", 3467550110, 1209341029)
                	elseif choice == 6 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_1105e4b5.mp3", "Hail and welcome.  I hope your stay here is uplifting.", "royalwave", 3772090710, 3018384836)
                 	elseif choice == 7 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_4d06411b.mp3", "I bid you greetings and welcome to this place I call home!", "bow", 3685974709, 3532617817)
                 	elseif choice == 8 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_cc6b24fd.mp3", "Well met, traveler.  Has your journey to our village been troublesome?", "ponder", 2247454484, 3658940037)
                 	elseif choice == 9 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_ec2355eb.mp3", "Hail good adventurer!  I trust the journey that brought you here was an enlightening one.", "hello", 2686055828, 988883659)
                 	elseif choice == 10 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_57b9ce4e.mp3", "I am sorry.  I am burdened with my own thoughts, and haven't a moment to converse.", "no", 1692526278, 2332878998)
                 	elseif choice == 11 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_71b47c01.mp3", "Greetings!  Welcome to our assylum from the torments that plague the lands of Norrath.", "agree", 2714539749, 1799541972)
                 	elseif choice == 12 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_cbf85a0c.mp3", "Hail noble!  It is with jubilation that I wind away this time speaking with you.", "royalwave", 899066168, 1514992217)
                 	elseif choice == 13 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_cbf85a0c.mp3", "It brings comfort to my heart to see you come to us in safety.", "thanks", 3493354679, 3213252106)
       	        end
            	end
            end end	
			elseif gender == FEMALE then
			    if Qfaction < 0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			        
                        FactionCheckingCallout(NPC, Spawn, faction)
                        end
                else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")                       
				local choice = math.random(1,10)
	                if choice == 1 then
		            PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_aeb1a20f.mp3", "It is with honor that I welcome you to our community.", "thanks", 157565536, 4238836509)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_a6a7e923.mp3", "Hail to you, it is indeed a pleasure.", "royalwave", 224557122, 3782103568)
	                elseif choice == 3 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_869cb34a.mp3", "Hello, young adventurer. It is with the utmost delight that I greet you.", "fullcurtsey", 1236739692, 2465236460)
	                elseif choice == 4 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_aoi_gf_4d69aa69.mp3", "Confound those infernal gnomes and their diabolical gadgets!", "frustrated", 683761969, 2806224893)
	                elseif choice == 5 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_aoi_gf_b378842e.mp3", "As of late, my dreams show me visions of the lost city of Felwithe, and it is every bit as legendary as I would have imagined it.", "ponder", 1174631927, 1272016193)
	                elseif choice == 6 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_42dc41ff.mp3", "Well met.  I find great solace in our meetings.", "bow", 1972105344, 498797338)
	                elseif choice == 7 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_e70b6b86.mp3", "Hello!  It is always good to meet someone new in our peaceful village.", "royalwave", 2113607646, 1301209736)
	                elseif choice == 8 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_17bda578.mp3", "Hail!  It is ecouraging to see bright faces, such as yours, arrive in the everlasting city of Qeynos.", "hello", 1027180785, 1173518799)
	                elseif choice == 9 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_837db26f.mp3", "Hail to you, friend!  I hope you have many happy returns to quaint town.", "nod", 4187653090, 1385095205)
	                elseif choice == 10 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_e35fd511.mp3", "Wonderful to make your acquaintance!  Do you find this scenery as whimsical as I?  The day is truely blessed.", "curtsey", 3515560120, 1635596676)
                                                                                                                                   
                    end
                end
	    	end
		end end
		
		
		elseif race == HUMAN then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
				        FaceTarget(NPC,Spawn)
		                AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")   				        
                	local choice = math.random(1,13)

                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_681a46c7.mp3", "Is it even possible for this city to get more corrupt?", "shrug", 141488306, 2058551020)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_e1633802.mp3", "I was just saying to myself how I really don't like the way your face looks.", "agree", 2892144271, 4226558009)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_e029416.mp3", "Knowing the right people will keep you safe in this city.  You aren't one of them.", "bye", 1565383896, 1832709459)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_dfce6d9.mp3", "If you're looking for trouble, I've got a whole fistful of it waiting for you.", "threaten", 767826754, 1534633302)
                    	elseif choice == 5 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_daf01a19.mp3", "If I had another five or six ales, maybe I wouldn't mind talking to you.", "chuckle", 3530112272, 2115498011)
                    	elseif choice == 6 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_f18134c1.mp3", "You're lucky there are witnesses watching us right now.", "cutthroat", 234614508, 4277417930)
                    	elseif choice == 7 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_c467886b.mp3", "Do I look like someone who cares?", "whome", 2648633348, 1343979863)
                    	elseif choice == 8 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_f47447aa.mp3", "Keep to yourself and you just might make it through another day.", "wink", 1457279923, 475736143)
                    	elseif choice == 9 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_10e0ca86.mp3", "Just do what the guards say and the beatings won't be so severe.", "lookaway", 1079804543, 441510900)
                    	elseif choice == 10 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_aoi_gm_a2d138b9.mp3", "If you know what's good for ya, you didn't see anything!", "shakefist", 3989425659, 2701948732)
                    	elseif choice == 11 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_aoi_gm_20171f6b.mp3", "Where the heck is that horrible stench coming from?   Oh.  You.", "stinky", 369052520, 3267063374)
                    	elseif choice == 12 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_34b6867c.mp3", "Get out of my face, loser!", "stare", 1398343887, 3015762585)
                    	elseif choice == 13 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_528fccc.mp3", "That look's like an awfuly expensive pair of boots there.. friend.", "ponder", 623577963, 2384305800)
                                            		                   		                   	
	                   	end
                    end
                end end 
				elseif GOOD then
                    if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")                        
                          FactionCheckingCallout(NPC, Spawn, faction)
                    	end
                    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")   				    
                	local choice = math.random(1,13)

                    	if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_7e3b456a.mp3", "Hail, pleasure to meet you.", "agree", 471367832, 2417424572)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_ef2b9651.mp3", "Will you quit pestering me?  Don't force me to summon the guards!", "tapfoot", 3345611839, 1442739842)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_26f4c608.mp3", "Greetings visitor, I'm glad to meet you.", "bye", 1300497520, 2713745446)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_13b79d2d.mp3", "Welcome!  Welcome traveler, to the fair city of Qeynos! My, isn't it a magnificent day?", "hello", 3746934207, 794965138)
		                elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_e58035f3.mp3", "What do you want? Leave me be!", "shrug", 1323474108, 3355478224)
                    	elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gm_2c5409ba.mp3", "Another lovely day in the city of Qeynos!", "sigh", 2759856909, 614688407)
                    	elseif choice == 7 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gm_4d212798.mp3", "I'm confident that the merchants of our village will fill all equipment needs with the utmost hospitality.", "smile", 2600666744, 586734676)
                    	elseif choice == 8 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_9b2049a3.mp3", "Well met, friend.  It's good to make your acquaintance!", "bow", 754727055, 3165426316)
                    	elseif choice == 9 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_3fc546db.mp3", "As a citzen of the mighty city of Qeynos, I greet you openly.", "hello", 2645256785, 1334313741)
		                elseif choice == 10 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_d38d1fff.mp3", "Ah, what have we here?  Glad to see you endured the journey here adventurer.", "ponder", 2806352129, 3453714070)
                    	elseif choice == 11 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_60dfe3da.mp3", "Welcome to Qeynos friend!", "nod", 3850495157, 2924033866)
                    	elseif choice == 12 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_34d7a9e6.mp3", "Well met!  Here in Qeynos you shall find a wealth of useful supplies.  More importantly, ale!", "smile", 3467166298, 3144147842)
                    	elseif choice == 13 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_5ec5f221.mp3", "Glad you made it.  Was the island as difficult as I remember?", "agree", 3870261841, 3828605353)
	                   	                    
	                    end
                    end 
				end
			end end	
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")   				        
	            local choice = math.random(1,10)

	                    if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_e0c9d202.mp3", "I'd give anything to leave this godsforsaken cesspool of a city.", "beg", 167506951, 845500735)
	                    elseif choice == 2 then
                 		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_aoi_gf_603e4394.mp3", "Was it just me, or did I hear something jingling in your coin purse?", "listen", 2402158317, 1527601082)
                    	elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_d2844e25.mp3", "You can avoid trouble around here as long as you don't make eye contact with anyone.", "lookaway", 2224595311, 1879007102)
                    	elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_ed2258.mp3", "If you keep bothering me, I'll scream for help!!", "scream", 3517182304, 1940512214)
                    	elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_e1648d49.mp3", "What made you think I wanted to talk to you?", "shrug", 739774986, 813162418)
                    	elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_e0c9d202.mp3", "I'd give anything to leave this godsforsaken cesspool of a city.", "beg", 167506951, 845500735)
                    	elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_b0f7eb94.mp3", "Unless you know of a way to make some quick coin, we have no reason to talk.", "scold", 3652661564, 2025834564)
                    	elseif choice == 8 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_216216bd.mp3", "The next time that guy leers at me, I'm gonna punch him in the throat.", "threaten", 3620511003, 1079805953)
                     	elseif choice == 9 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_975b4774.mp3", "I wish those guards would just leave us alone.", "sulk", 453027671, 1457811660)
                     	elseif choice == 10 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_aoi_gf_603e4394.mp3", "Was it just me, or did I hear something jingling in your coin purse?", "listen", 2402158317, 1527601082)
                       end
	                 end   
                end end
	                    
				elseif GOOD then
				    if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")				        
			            local choice = math.random(1,2)
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")   				        
	                local choice = math.random(1,6)

	                    if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_1dba0c5b.mp3", "Salutations and warm greetings to you.", "curtsey", 707852693, 1737331106)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_bf6c3bd5.mp3", "Hello there, friend, I hope the day finds you well.", "nod", 2878226663, 595387800)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_e9f03834.mp3", "Welcome to Qeynos, traveler, know that you are among allies.", "bye", 2097755939, 469858505)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_408eb029.mp3", "Greetings traveler and welcome to our village. Be sure to help us keep it tidy.", "scold", 748098747, 1246453163)
	                	elseif choice == 5 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_43b0278c.mp3", "Good day to you. I trust your journey to our village was not overly hazardous.", "fullcurtsey", 374004507, 2165503793)
                        elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_c5cb5ec8.mp3", "Hail to you as well, traveler.  There is much work to be done in Qeynos, might as well get started on it now.", "smile", 3197561806, 3190128247)
	                	elseif choice == 7 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gf_ffcb538f.mp3", "Qeynos is a bastion of light in the darkness of the land.  I hope you enjoy the sights of the city!", "wave", 291039605, 2045457707)
                        elseif choice == 8 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gf_7b765111.mp3", "You stand within the sturdy and unyielding walls of Qeynos.  Give thanks for their existance.", "orate", 1908238477, 1252205270)
	                	elseif choice == 9 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_9a63d2e3.mp3", "Hail!  I am pleased to see so many eager new adventurers among us.", "bye", 3500366421, 3655995659)
                        elseif choice == 10 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_79781fd.mp3", "Welcome to the city, newcomer.  All are welcome within the port of Antonia Bayle.", "curtsey", 4027811518, 2764738720)
	                	elseif choice == 11 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_63aeaecb.mp3", "Hail good traveler!", "nod", 3880132810, 2976839399)
                        elseif choice == 12 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_a1a2ce02.mp3", "Hello, and welcome to the city.  Everything you need can be found here in Qeynos.", "agree", 3632185330, 3617071255)
	                		                	                	                    	    
                	    end
	   				end
	    	    end
            end
        end end
        
		elseif race == IKSAR then
			if gender == MALE then
			        if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			            
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")   				        
	                local choice = math.random(1,9)

	                    if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gm_e197e226.mp3", "Get the facts first, then use them to your advantage.", "nod", 2108412157, 569290229)
                	    elseif choice == 2 then
                	    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gm_6e77e856.mp3", "Hard work has never killed anyone, but I have.", "nod", 1624540059, 2182897376)
                	    elseif choice == 3 then
                	    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gm_b2520f1f.mp3", "The dark elves are inferior creatures led by delusions of grandeur.  How sad.", "sarcasm", 4070116108, 3546866585)
                    	elseif choice == 4 then
                	    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gm_e1fe7edd.mp3", "The Sebilisian empire will rise again!", "yeah", 1001389400, 2353755387)
                 	    elseif choice == 5 then
                    	PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gm_1c7c97cc.mp3", "Were all the barbarians to be slaughtered, I would call it a mercy killing.", "glare", 3861422265, 4210225893)
	                    elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gm_75d6942e.mp3", "Of course we have feelings.  We're just not as attached to them as others.", "glare", 959861962, 664441611)
	                    elseif choice == 7 then
	                    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gm_65504a07.mp3", "You don't have to be cold blooded to be a killer, but it helps.", "stare", 162591917, 1585569694)
	                    elseif choice == 8 then
	                    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_aoi_gm_d89fe693.mp3", "Watch yourself.  Don't cross my scales.", "threaten", 2763703578, 1512088342)
	                    elseif choice == 9 then
	                    PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gm_f5670aae.mp3", "Sssilence!  I do not wish to hear your chatter.", "no", 530825766, 210892882)
                	    end                	                	
                	end
				end end
		    elseif gender == FEMALE then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")   				        
	               local choice = math.random(1,7)

	                    if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_f69ccf4.mp3", "Now that Cazic is gone, we are all that's left to fear.", "glare", 201991256, 2703372070)
	                    elseif choice == 2 then
                	    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_1d6c587a.mp3", "Consequences are insignificant compared to how much power one can grasp.", "swear", 725277130, 442283069)
                	    elseif choice == 3 then
                	    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_f01f193d.mp3", "Forgiveness is the first sign of weakness.", "wince", 1541815345, 3425736193)
                	    elseif choice == 4 then
                	    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_aee44902.mp3", "The slash of a whip is a good way to get one's attention.", "scold", 1454622396, 2157938475)
                	    elseif choice == 5 then
                	    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_31190c6b.mp3", "Many things can happen.  Pray that I'm not one of them.", "tapfoot", 719531656, 2014590208)
  	                    elseif choice == 6 then
                	    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_f69ccf4.mp3", "Now that Cazic is gone, we are all that's left to fear.", "glare", 201991256, 2703372070)
                	    elseif choice == 7 then
                	    PlayFlavor(NPC, "voiceover/english/optional2/iksar_eco_evil_1/ft/iksar/iksar_eco_evil_1_hail_gf_9f30f326.mp3", "I have found fear is always a good motivator.", "nod", 968054609, 542822567)
                	    end 
            	    end
                end	
            end end
			
		elseif race == KERRA then
			if gender == MALE then
			    if EVIL then
			        if FPfaction < 0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FaceTarget(NPC,Spawn)
			            FactionCalloutTimeCheck = true
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			            
                        FactionCheckingCallout(NPC, Spawn, faction)
			            end
			        else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")   
	            local choice = math.random(1,12)

	                if choice == 1 then
		            PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gm_9c3a5e62.mp3", "I don't know why we are here, but I'm sure that it's not to enjoy ourselves. ", "sad", 186474664, 794000823)
	                elseif choice == 2 then
		            PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gm_1c352725.mp3", "For Thule's sake!  What is it?", "boggle", 1376194005, 4293301406)
	                elseif choice == 3 then
		            PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gm_5504a215.mp3", "There is no safety in numbers or in anything else. ", "no", 775071500, 2570653224)
	                elseif choice == 4 then
		            PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gm_1b5995a5.mp3", "The trouble with ratonga is they've got no tact.", "agree", 2368853908, 825736474)
	                elseif choice == 5 then
		            PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gm_39a2a132.mp3", "The bigger the smile, the sharper the claws.", "cutthroat", 459074110, 1126636200)
	                elseif choice == 6 then
		            PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gm_faa98b82.mp3", "The ratonga are intended to teach us that not everything in nature has a purpose.", "nod", 1619896826, 2577563009)
	                elseif choice == 7 then
		            PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gm_a61b7e7b.mp3", "Ratonga are nothing more than overgrown rats. ", "grumble", 3521570309, 987431086)
	            	elseif choice == 8 then
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_164ffd98.mp3", "I can purr my way out of anything.", "wink", 4263608089, 504552247)
	                elseif choice == 9 then
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_aoi_gf_c9f2b4f1.mp3", "Friendship is too costly around here.", "sigh", 1983387905, 3075550393)
	                elseif choice == 10 then
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_aoi_gm_38301159.mp3", "We can't help that!  We're all mad here!", "crazy", 1508409788, 219596858)
	                elseif choice == 11 then
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gm_7299ccb7.mp3", "There is no such thing as an unfair advantage.", "no", 927318225, 800142407)
					elseif choice == 12 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gm_faa98b82.mp3", "The Ratonga are here to teach us that not everything in nature has a purpose.", "sarcasm", 1619896826, 2577563009)
 	     			 	                	                
	                end
                end
            end end
				elseif GOOD then
			        if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			            
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")   				        
	            local choice = math.random(1,11)
	            
					if choice == 1 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_good_1_hail_gm_ac88207.mp3", "The goal isn't always catching the pray, rather, its the chase.", "scheme", 152508601, 1517122703)
					elseif choice == 2 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_good_1_hail_gm_1f19f9ef.mp3", "Tact is the nack of making a point without making an enemy.", "agree", 216091278, 201326460)
					elseif choice == 3 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_44b38e8c.mp3", "Was it me, or did I just see something move over there?", "doubletake", 3599874332, 7461740)
					elseif choice == 4 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_6b58eeec.mp3", "I keep my whit as sharp as my claws!  I never know which one I'll need to rely on.", "wink", 3670900464, 1104739099)
					elseif choice == 5 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_efb7fbaf.mp3", "Those gnolls don't scare me... well, mabye a little.", "no", 3516960004, 2208859201)
					elseif choice == 6 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_f8a140a8.mp3", "Who would have known that one's paws could become so stale from pie?", "confused", 2791956809, 3567994575)
					elseif choice == 7 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_3fd40378.mp3", "Keep your ears open!", "listen", 1525987814, 3335262701)
					elseif choice == 8 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_8647b14e.mp3", "I am no ordinary Kerra!", "sniff", 3153151742, 2518854444)
					elseif choice == 9 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_a981f363.mp3", "It is better to swallow your pride than to lose your life.", "nod", 2178756893, 2548415956)
					elseif choice == 10 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_aoi_gm_a3788b05.mp3", "Watch the tail.. watch the tail!", "cringe", 1917905155, 2497295526)
					elseif choice == 11 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_aoi_gm_c0c28955.mp3", "Honest as a Kerra when the fish are out of reach.", "nod", 306655625, 4097745959)
	     															
					end
			    end
			end
		end end	
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else  			        
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")                   
			    local choice = math.random(1,11)
	            
                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_164ffd98.mp3", "I can purr my way out of anything.", "wink", 4263608089, 504552247)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_8a065b90.mp3", "I am a kindly master just so long you remember your place.", "blush", 2082721768, 1564608519)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_5beacd8e.mp3", "Deep down we're all driven by urges.  I just have the courage to live by them!", "agree", 1853094076, 969912178)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_3fe55b38.mp3", "Why, don't I seem to be the popular one today?", "ponder", 946610860, 3180537294)
                    	elseif choice == 5 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_64bc078d.mp3", "I like to run around, but I also like to curl up in a warm spot.", "happy", 2561376622, 3362255693)
                    	elseif choice == 6 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_8036c73a.mp3", "Some say Kerra are sneaky, evil, and cruel.  True, but we have many other fine qualities as well!", "scheme", 3069604589, 1146575713)
                    	elseif choice == 7 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_895b5e07.mp3", "Everything has a price.  What's yours?", "nod", 1824945885, 3397633823)
                     	elseif choice == 8 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_996fcd0c.mp3", "I wouldn't be caught dead wearing something like that!", "no", 1201795983, 50062692)
                    	elseif choice == 9 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_9f680679.mp3", "I'd kill to know what the overlord has in that citadel.", "scheme", 4188476986, 3254348731)
                     	elseif choice == 10 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_aoi_gf_c9f2b4f1.mp3", "Friendship is too costly around here.", "sigh", 1983387905, 3075550393)
                    	elseif choice == 11 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_b2ec9ec5.mp3", "I can smell a champion, and you're no champion.", "stinky", 1536648011, 960141252)
                        end                  
               	    end           	
                end end
                    	
				elseif GOOD then
			        if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			            
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
                	local choice = math.random(1,10)
            
                    	if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_28445ab7.mp3", "I don't spend as much time grooming as the others say I do.", "sulk", 2675025847, 2696760246)
	                    elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_6c9e41c6.mp3", "Don't think that I'm silly, I just happen to like the simple little things.", "flustered", 1426227770, 2304966225)
                        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_63881722.mp3", "I'm trying to find a new seasoning for my dried fish.", "ponder", 3802648946, 1171453079)
                        elseif choice == 4 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_583e9df5.mp3", "I'm listening!  What is it?", "listen", 1016240701, 776819905)
	                    elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_4424ae28.mp3", "How sweet my Tom is to leave such a gift at my doorstep.", "scheme", 206344530, 3671427567)
	                    elseif choice == 6 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_eabd8556.mp3", "I heard the Rotanga play it for fun.", "shrug", 1671177, 4253987454)
	                    elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_b155e999.mp3", "You won't see me near any of those fountains!", "no", 2380586558, 4131988901)
	                    elseif choice == 8 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_e6e5f65f.mp3", "I don't care what they say.  I have a lovely singing voice!", "pout", 2354011280, 3645338272)
	                    elseif choice == 9 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_aoi_gf_63950f22.mp3", "Isn't that lovely?  Its just perfect!", "agree", 105644772, 2239483775)
	                    elseif choice == 10 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_aoi_gf_9d1dd0e1.mp3", "Time spent with a Kerra is never wasted!", "blush", 797562758, 1364757328)
                        end
			   	    end
		         end
		    end
        end end
		
		elseif race == OGRE then
			if gender == MALE then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
                	local choice = math.random(1,12)
                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_aoi_gm_68567a75.mp3", "Smite your enemies with no mercy.", "frustrated", 2105760030, 1009467667)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_8e30965a.mp3", "I'm here to conquer and no one is going to stop me.", "wink", 1759444421, 3253544108)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_aoi_gm_dbb40451.mp3", "Watch your step. I'm not forgiving.", "glare", 3270253835, 2410939040)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_82b39f6b.mp3", "In war there is no room for fear.", "agree", 139095494, 3401742216)
                    	elseif choice == 5 then
                    	PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_aef9ec6e.mp3", "The best dreams are the flashbacks of the battlefield.", "chuckle", 34784682, 541558536)
                    	elseif choice == 6 then
                    	PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_4b96e4f1.mp3", "I've lived this long thanks to my ability to kill.", "thumbsup", 1295486986, 820950525)
                    	elseif choice == 7 then
                    	PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_900b92c8.mp3", "Blood, lots of blood on the battlefield.", "confused", 3309525058, 2311238979)
                    	elseif choice == 8 then
	                    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_805fa3e9.mp3", "You'd be surprised how easily skulls burst in my fist.", "wink", 292411718, 2806910105)
                        elseif choice == 9 then
	                    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_7f5bc8b5.mp3", "Armor could be useful. But I've never needed it.", "smirk", 602319056, 3467693375)
                    	elseif choice == 10 then
	                    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_b6f6d58b.mp3", "Sharp teeth, the better to tear flesh with.", "glare", 1727328703, 3032211199)
                    	elseif choice == 11 then
                 		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_c13548f0.mp3", "The Overlord knows the strength of the ogres; I'd enjoy reminding the others around here.", "threaten", 3218132325, 996755371)
                    	elseif choice == 12 then
                		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_aef9ec6e.mp3", "The best dreams are the flashbacks of the battlefield.", "chuckle", 34784682, 541558536)
                   	    end	
                    end
                 end end
			elseif gender == FEMALE then
				   end
			
			
		elseif race == RATONGA then
			if gender == MALE then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
	            local choice = math.random(1,9)

	                if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_5e63a07a.mp3", "If winning isn't everything, why do we keep score?", "sneer", 3927334706, 1835318852)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_2c495445.mp3", "I dabble in repossessions and personal loans. ", "scheme", 4196817122, 2118800432)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_9d45b59e.mp3", "There's no way they're better than us.  We have more.", "thanks", 187163254, 678724024)
            	    elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_c698777f.mp3", "I was never even near the bank.", "whome", 3628945834, 3044934463)
          	        elseif choice == 5 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_aoi_gm_77ec588f.mp3", "Shuttup!.. an-and tell me what the other idiots is doing!", "scream", 1067250901, 3184475965)
            	    elseif choice == 6 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_aoi_gm_a07a0e21.mp3", "Well, whys did'nt's you say so?  That changes everythings!", "ponder", 3142470535, 3537428598)
            	    elseif choice == 7 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_6949b435.mp3", "You.. figured out.. somethings th-that never happened!.. and so its all lies!", "heckno", 3372579729, 231666695)
           	        elseif choice == 8 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_823edac2.mp3", "Hey!  A deals is a deals, until a better one comes along!", "agree", 2004592633, 659744483)
            	    elseif choice == 9 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_f215c30.mp3", "I am no ways interested in that.. glittery thing.. you have!  I promises!", "no", 3269376114, 2020783683)
           	        end
                end
            end end
	    elseif gender == FEMALE then
	            if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")	                
                        FactionCheckingCallout(NPC, Spawn, faction)
                        end
                else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")                        
			    local choice = math.random(1,8)
            	    if choice == 1 then
                	PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gf_55dfc67a.mp3", "Even a blind ratonga can feel the warm glow of gold.", "happy", 1258231063, 1686655213)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gf_13832499.mp3", "I didn't steal that, besides it didn't even fit.", "scold", 950251839, 3594191176)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gf_27a99c98.mp3", "I find things that haven't even been lost yet.", "whome", 1136162597, 2259535235)
            	    elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gf_e310b68b.mp3", "Never ask when you can just take.  ", "doh", 1994406109, 1294526070)
            	    elseif choice == 5 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gf_5aa8fe80.mp3", "It's not true that the kerra always land on their feet.", "giggle", 3437443162, 2325327946)
                    elseif choice == 6 then
                	PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gf_27a99c98.mp3", "I find things that haven't even been lost yet.", "whome", 1136162597, 2259535235)
                    elseif choice == 7 then
                	PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gf_338379af.mp3", "Risks is part of the games.  Play it for alls its worth!", "scheme", 2615843264, 1281001022)
                    elseif choice == 8 then
                	PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gf_a743ae9a.mp3", "That rats snitch better watch her backs tonight!", "shakefist", 3892641048, 724401282)
	               	  	               	                
	                end
	    	    end
	    	 end
        end end
		
		
		elseif race == TROLL then
			if gender == MALE then                                      --SEE HAIL2 FOR MALE TROLL
			elseif gender == FEMALE then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
            	local choice = math.random(1,12)
            	    if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_d753e09a.mp3", "I like when they not really dead!  It tickles going down!", "itch", 1209825984, 2311485957)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_f2709c1f.mp3", "You smell wonderful.  Like chicken.", "sigh", 2782849260, 191866997)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_a15b4666.mp3", "Sometimes I sneak into houses and hide under the bed.", "giggle", 2975312620, 2935653424)
            	    elseif choice == 4 then
	            	PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_616c3595.mp3", "Gotta nail clothes onto body or I forget to wear them.", "doh", 2977410158, 1117948071)
            	    elseif choice == 5 then
	            	PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_20bcb19c.mp3", "Overlord is the strongest troll ever!  He kill twenty of us troll last week.  Wow!", "thumbsup", 829469707, 1999621178)
	                elseif choice == 6 then
	            	PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_630d65f1.mp3", "I used to have my own bridge before tasty dark elves took it from me.", "doh", 1590618969, 2701180460)
            	    elseif choice == 7 then
	            	PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_22f4ef69.mp3", "Lucky I don't kill you, then eat you!  You luckier!  I don't eat you, then kill you!", "scheme", 1894950839, 2813284738)
            	    elseif choice == 8 then
	            	PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_7e735c3b.mp3", "People have so many pretty colors inside them!  Want me to show you?! Hmm?!", "woo", 1455343853, 4263307371)
	                elseif choice == 9 then
	            	PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_8300ed84.mp3", "It would have been fun.. to have been on Luclin.. when it blew up!  WeE!", "happy", 3121599387, 285019723)
 	                elseif choice == 10 then
	            	PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_df8b21.mp3", "So many things to kill me.  Don't know where to start!", "confused", 158804401, 2959882759)
            	    elseif choice == 11 then
	            	PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_aoi_gf_8c8ac0bc.mp3", "If you die, be sure to tell me.  Okay?", "agree", 2279250536, 1602435986)
	                elseif choice == 12 then
	            	PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_aoi_gf_5cdd1223.mp3", "Oh, I hope you kill some good person today!", "smile", 2535798381, 710784277)
 	                end
			    end
			 end   
	end end
	
		elseif race == WOOD_ELF then
			if gender == MALE then
                if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")                    
                        FactionCheckingCallout(NPC, Spawn, faction)
                        end
                else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")                        
            	local choice = math.random(1,13)
                    if choice == 1 then
	          	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_13f00546.mp3", "Patience they say, is a virtue.  It has taken a lot of patience to rebuild our lives so far from home.", "nod", 1108677104, 3869422611)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_fcb14e3e.mp3", "We must remain steadfast and vigilant against tyranny.  This will allow nature to shape Norrath around us.", "shakefist", 3130983522, 101511459)
	                elseif choice == 3 then
	            	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_62f30b60.mp3", "The Elddar Grove is truly a marvel in these troubled times.", "sigh", 303722838, 1259846495)
	                elseif choice == 4 then
	               	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_1568024c.mp3", "I see that you have many adventures ahead of you.  This era of darkness is coming to a close.", "ponder", 3567183056, 3400757896)
	                elseif choice == 5 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_75b61001.mp3", "Don't let the nice day fool you.  My knee is acting up, a storm is brewing.  I can smell it.", "stretch", 3641086231, 3980350899)
	                elseif choice == 6 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_a2427d62.mp3", "They say time and nature heal all wounds.  Still, some wrongs can never be forgotten.", "sad", 2603397723, 1316741802)
                    elseif choice == 7 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_27a6d736.mp3", "I find that a change in attitude often helps me steer through a difficult situation.", "agree", 1273495476, 2557846709)
	                elseif choice == 8 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_97a50b10.mp3", "Hello there my fellow adventurer!  In this city, teamwork is what allows us to survive and prosper.", "hello", 1162411642, 2051171798)
                    elseif choice == 9 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_a729c22b.mp3", "They say time and nature heal all wounds.  Still, some roles can never be forgotten.", "nod", 970054086, 3496252570)
	                elseif choice == 10 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_9350a.mp3", "Keep on your guard.  Even in Qeynos we are not completely invulnerable to attack!", "scold", 2114319546, 1782252134)
                    elseif choice == 11 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_9541f1d0.mp3", "Nice to make your aquantince!  I hope you enjoy your stay in our humble city.", "bye", 3115518877, 2344848784)
	                elseif choice == 12 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_aoi_gm_a4972edd.mp3", "It was our devotion to truth that enabled us to survive adversity.", "agree", 3728659167, 1934169558)
	                elseif choice == 13 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_aoi_gm_de3ef6f8.mp3", "We must calm our emotions through meditation and communion with the spirit of the Eldarr.", "orate", 768027029, 3057323475)
                                                                           
                    end
	            end
	        end end     
			elseif gender == FEMALE then
			        if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			            
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
            	local choice = math.random(1,10)

            	    if choice == 1 then
	           	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gf_31587971.mp3", "Greetings, friend.  I hope your visit to the city brings both inner peace and prosperity.", "curtsey", 999961843, 2491010297)
	                elseif choice == 2 then
	        	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gf_10181485.mp3", "The forces of good are all wrought from the strength of the innocent.", "bow", 1746715399, 2834476927)
            	    elseif choice == 3 then
        		    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gf_45ac4aea.mp3", "I never thought it would be so difficult to carry on.  I have no songs left in my heart.", "sigh", 2446660394, 3437698252)
            	    elseif choice == 4 then
	           	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gf_46ea1119.mp3", "So much blood and so many lost.  I never believed it would end this way.", "sad", 1351206018, 3386717578)
	                elseif choice == 5 then
	        	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gf_67432087.mp3", "We must remain steady against the influence of evil.  Only with perseverance will Qeynos survive!", "shakefist", 927768431, 1576503790)
        	        elseif choice == 6 then
        		    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gf_646dc5ff.mp3", "I've found that the right ammount of patients and enthusiasm can open almost any door.", "agree", 1063360943, 3481586683)
            	    elseif choice == 7 then
	           	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gf_414392d4.mp3", "As with all relationships in life, sometimes desire can lead to misfortune.  I strive to temper love and discipline.", "ponder", 2120229696, 432481455)
	                elseif choice == 8 then
	        	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gf_d31ebb3f.mp3", "I love Qeynos. Though I can still remember the peace and tranquility of Kelethin. How I miss it so!", "sad", 1363914331, 4126926873)
	                elseif choice == 9 then
	        	    PlayFlavor(NPC, "voiceover/english/optional2/woodelf_eco_good_2/ft/woodelf/woodelf_eco_good_2_aoi_gf_e67f1023.mp3", "Such a beautiful day!  All I need now is a nice vintage of elven mulberry and my relaxation will be complete.", "stretch", 3245673411, 1934163553)
	                elseif choice == 10 then
            		PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_aoi_gf_afb48a33.mp3", "I told him we'd make it.  We made it to Qeynos my friends!  I hope you like our new home.", "cheer", 1733622982, 4215625501)
	   	        	    	        	    	        	    
	        	    end    
                end   
            end
        end end
		
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


-------------------------------------------------------------------------------------------

--                                  GenericEcology2Callout

-------------------------------------------------------------------------------------------

function GenericEcology2Callout(NPC, Spawn, faction)
    race = GetRace(NPC)
    spawnRace = GetRace(Spawn)
	gender = GetGender(NPC)
	Qfaction = GetFactionAmount(Spawn,11)
	FPfaction = GetFactionAmount(Spawn,12)
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
			if gender == MALE then -- SEE SPAWN RACE HAIL
			    if EVIL then
			    elseif GOOD then
				end   
			elseif gender == FEMALE then
			    if GOOD then
			    elseif EVIL then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else 
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
	            local choice = math.random(1,4)

	                if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_7d00f821.mp3", "All those rumors about the people I decapitated are false, trust me. I decapitated many more by my count.", "pout", 2231247084, 2781311359)
	                elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_56e1abc5.mp3", "Don't worry. The last time I killed someone was a few months ago. I've almost forgot how its done.", "threaten", 3295546544, 225622615)
                	elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_7c898040.mp3", "If I wanted to speak with riff raff like you, you'd know it.", "scold", 2131940659, 1785120161)
                 	elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_c76c11b.mp3", "No, I didn't say you could look at me or talk to me for that matter.", "heckno", 1951847708, 3399171438)
	                end
	    	    end
		    end
		end    
    end end

		elseif race == DARK_ELF then
			if gender == MALE then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
		       local choice = math.random(1,6)
	               if choice == 1 then
		           PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gm_10f790b8.mp3", "I refuse to be told what to do by simple-minded buffoons!", "no", 2041373045, 1825086337)
	               elseif choice == 2 then
		           PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_aoi_gm_23e14704.mp3", "Show your enemies the mercy they deserve: none.", "cutthroat", 1813347600, 2090926840)
	               elseif choice == 3 then
		           PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gm_beeaa42c.mp3", "I would never raise a hand to one below my station.  That's what servants are for.", "wink", 1033481133, 1844672914)
	               elseif choice == 4 then
	               PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gm_ad69e774.mp3", "I despise low-born scum such as you.  Leave me be.", "bye", 135777579, 1290473150)
	               elseif choice == 5 then
	               PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gm_dbd2dbd4.mp3", "Once there was a time when we Teir'Dal were the true masters of Norrath.", "shakefist", 3971986771, 2935281097)
	               elseif choice == 6 then
	               PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gm_60bb96c.mp3", "If you do it right, pain is the gift that keeps on giving.", "chuckle", 938348138, 3041886078)
		          end	              		              	              		         
		      end
		  end end    
	   		elseif gender == FEMALE then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
	            local choice = math.random(1,8)

	                if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gf_eb029bed.mp3", "I am sickened by the lack of amenities within this city.", "flustered", 140632112, 1000708438)
	                elseif choice == 2 then
	               	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gf_18ec7845.mp3", "Do you honestly believe I would speak with someone like you?", "boggle", 2993277341, 1897394040)
	                elseif choice == 3 then
	               	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_aoi_gf_e9678442.mp3", "You may thank me now for gracing you with my presence.", "nod", 362766636, 249197304)
                    elseif choice == 4 then
	               	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_hail_gf_eb029bed.mp3", "I am sickened with the lack of amenities within this city!", "sniff", 4143445170, 2458457536)
                    elseif choice == 5 then
		            PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_hail_gf_36e1a774.mp3", "Poisoning is always an effective way of winning a debate.", "wink", 84926788, 876892580)
                    elseif choice == 6 then
             		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_aoi_gf_e9678442.mp3", "You may thank me now for gracing you with my presence.", "royalwave", 362766636, 249197304)
                    elseif choice == 7 then
		            PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_hail_gf_8a6fa526.mp3", "Who do those Iksar think they are?  There will be a reckoning one day, I swear.", "shakefist", 3978923373, 3424693067)
                    elseif choice == 8 then
            		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_hail_gf_7fee68f8.mp3", "Everyone knows the Teir'Dal are the true power within Freeport.", "lookaway", 3768775503, 2939885824)
	                end
	             end
			  end
        end end
			    
		elseif race == DWARF then 
			if gender == MALE then
		    elseif gender == FEMALE then
		    end
	    	
		
	    elseif race== ERUDITE then
			if gender == MALE then
               if EVIL then
				elseif GOOD then
                end
				
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
	           local choice = MakeRandomInt(1,6)

	                if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_2/ft/erudite/erudite_eco_evil_2_hail_gf_251836f2.mp3", "The harder you try, the dumber you look.  Please don\'t let me be the one to stop you.", "curtsey", 3161111023, 90846372)
                	elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_2/ft/erudite/erudite_eco_evil_2_aoi_gf_3b47e8b4.mp3", "I will incinerate the next person who does not acknowledge my superiority.", "frustrated", 1620404815, 180939615)
                	elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_2/ft/erudite/erudite_eco_evil_2_hail_gf_30a32e42.mp3", "I am unable to grasp the concept of humility.  Perhaps I could watch you for a while?", "confused", 4259595860, 3053187462)
                	elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_2/ft/erudite/erudite_eco_evil_2_hail_gf_d021c931.mp3", "If I pretended you weren\'t here, would you go away?", "shrug", 740632684, 1033165397)
                	elseif choice == 5 then
            		PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_2/ft/erudite/erudite_eco_evil_2_hail_gf_c9b2ff52.mp3", "When I rule the world, I will enjoy deciding who lives and dies.", "ponder", 3448688096, 4199383884)
                	elseif choice == 6 then
            		PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_evil_2/ft/erudite/erudite_eco_evil_2_hail_gf_3a1d92f9.mp3", "The mindless babbling of a simpleton delights me to no end.", "sarcasm", 2419847373, 2143831747)
                    end
            	end
            end end	
				elseif GOOD then
			    end	
			end
			
		    elseif race == FROGLOK then
		    	if gender == MALE then
                elseif gender == FEMALE then
			    end

		elseif race == GNOME then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
                    local choice = math.random(1,10)
                        if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gm_4d2d14ae.mp3", "So many test subjects, so little time.", "sigh", 4071952942, 2215778491)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gm_fc9e7336.mp3", "My work would be so much further along if the voices would stop.", "scream", 4153768257, 1057730606)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gm_b7905eb1.mp3", "No, no, no!!!  That will never work!  The person still needs to breathe, don't they?  Don't they?", "shrug", 4217961596, 2328569229)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gm_3b50e81d.mp3", "For the last time, gnomes didn't make Luclin explode!  We would have gone with disintegration.", "grumble", 1607372881, 3520123002)
                    	elseif choice == 5 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gm_87cefc8f.mp3", "I will prove to them that I'm not mad!  If I have to kill everyone of them to prove it, I will!", "dance", 4220511073, 14532676)
                    	elseif choice == 6 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gm_a0ec45ef.mp3", "Through the advances in modern magic, anything is possible.", "scheme", 1644993738, 1865011072)
                    	elseif choice == 7 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gm_9db76689.mp3", "I must find a wall before I lose this thought!", "frustrated", 835072904, 55030735, Spawn)
	                    elseif choice == 8 then
	                    PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gm_3f3e760a.mp3", "So far, I have found kerrans to have only one life, not nine.  I insist on finding the other eight!", "ponder", 1099412571, 1127198642)
                    	elseif choice == 9 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gm_6676fc28.mp3", "I really dislike the word conscience.  Don't you?", "no", 921724824, 3128537430)
	                    elseif choice == 10 then
	                    PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gm_34756811.mp3", "How many times must I say it?!  Acid first, then the eyeballs.  Not the otherway around!", "swear", 99921459, 2923203645)
                        end
      	            end
	            end end		        
				elseif GOOD then
                end
			elseif gender == FEMALE then
			    if GOOD then
                elseif EVIL then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
	                local choice = math.random(1,7)

                        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gf_b0e1446f.mp3", "Only an amateur would bother worrying about ethics!", "wink", 2773191651, 675131505)
                        elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gf_ba655660.mp3", "If I put crossbows on the heads of sharks, I'm certain they would one day replace guard dogs altogether!", "agree", 377614657, 3505805258)
                	    elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gf_bb099045.mp3", "It's interesting how Ratonga always find their way around the maze-like corridors of Temple Street.", "ponder", 3965977474, 2117230268)
                	    elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gf_39930e7.mp3", "Good and evil have no place in the pursuit of knowledge.", "nod", 2836283, 3393703988)
                	    elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gf_cf624473.mp3", "I told him his skin would grow back in time, but did he listen?", "shrug", 1276299166 , 3081460802)
                	    elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gf_be42d521.mp3", "I have no time to waste on safety measures!", "no", 1588984660 , 2899887913)
                	    elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_evil_2/ft/gnome/gnome_eco_evil_2_hail_gf_a96fdda8.mp3", "If I found the smallest piece of magical residue and cut it in half, I wonder what would happen? ", "scheme", 534591874 , 1834630467)
                        end
	    	        end
		        end
            end             
        end end
        
		elseif race == HALF_ELF then
			if gender == MALE then
			    if GOOD then
	                if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")	                    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
	                local choice = math.random(1,6)
	                    if choice == 1 then
                		PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_768a0c8b.mp3", "Everywhere is walking distance if you have the time!", "agree", 2228417017 , 3880753774)
	                    elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_ea435b69.mp3", "I'm gonna get some peicings so I can be unique like everyone else!", "happy", 2468101640 , 903029053)
	                    elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_666e9477.mp3", "I think the word 'dualbreed' has a bit more dignity than 'halfelf', don't you?", "ponder", 3563191265 , 3563670932)
	                    elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_298c5b7a.mp3", "People just don't understand me!  You'd think it was my hair.", "confused", 1208438852, 749063111)
	                    elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_9c815039.mp3", "I can't let what \'they\' say get in the way of my art!", "no", 1111887606, 2356852982)
	                    elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_8092bd6e.mp3", "One day I'd like to explore every corner of the oceans!", "smirk", 2508604234, 975747984)
	               end
                end
            end end 
				elseif EVIL then
                end
            
			elseif gender == FEMALE then
			    if EVIL then
				elseif GOOD then
				end
			end
	
	
	    elseif race == HALFLING then
			if gender == MALE then
    		elseif gender == FEMALE then
	        end
    		
		
		elseif race == HIGH_ELF then
			if gender == MALE then
			elseif gender == FEMALE then
	    	end
		
		
		
		elseif race == HUMAN then
			if gender == MALE then
			    if EVIL then
			           if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			
			            local choice = math.random(1,10)
  				        if choice == 1 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_fea511a7.mp3", "You're a stranger ... and I don't talk to strangers.", "sulk", 2430170377, 3065502678)
				        elseif choice == 2 then
    				    PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_8d2a0876.mp3", "That look's like an awfully expensive pair of boots there, my friend.", "ponder", 367255988, 2113438867)
                	    elseif choice == 3 then
				        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_55c7abb4.mp3", "If you know what's good for ya, you didn't see anything!", "shakefist", 3295550745, 254450600)
                	    elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_142b686f.mp3", "I'm going to enjoy watching the Militia slit your throat.", "cutthroat", 507833438, 4154942045)
                	    elseif choice == 5 then
                  		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_5195ca4a.mp3", "Do you know what Freeport does to spies?", "scold", 3763693751, 3029107109)
                	    elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 980845675, 4241333469)
                	    elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 1773924149, 2192447994)
                	    elseif choice == 8 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_ef0ff5c7.mp3", "You're a stranger ... and I don't talk to strangers.", "sulk", 2675223743, 1399829526)
                	    elseif choice == 9 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 3543602520, 290613226)
                	    elseif choice == 10 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_e5838bd0.mp3", "Fool! The Overlord is watching you as we speak.", "lookaway", 2642325989, 4260235172)
				        end
                    end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")
			            local choice = math.random(1,5)
                        if choice == 1 then
                        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gm_dfce6d9.mp3", "You won't live long in this city, fiend.", "nod", 3648628674, 701743400)
            	        elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gm_daf01a19.mp3", "If I had another five or six ales, maybe I wouldn't mind talking to you.", "chuckle", 2320297447, 2667582898)
            	        elseif choice == 3 then
		                PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gm_e029416.mp3", "You're lucky there are witnesses watching us right now.", "cutthroat", 2950300370, 3231135751)
             	        elseif choice == 4 then
                  		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gm_34b6867c.mp3", "Fool! The Overlord is watching you as we speak.", "lookaway", 1513887633, 3325471984)
              	        elseif choice == 5 then
                  		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gm_c467886b.mp3", "If you're looking for trouble, I've got a whole fistful of it waiting for you.", "threaten", 2550764265, 16200429)
                        end
                  end
              end end
              
				elseif GOOD then
			    end	
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
			            local choice = math.random(1,7)
				        if choice == 1 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 4060680490, 1058882345)
                    	elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 3939340779, 2731540062)
                    	elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_55c7abb4.mp3", "I can't be seen associating with you, worm.", "glare", 2563439969, 3192575181)
                    	elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 3457217785, 3805482956)
                    	elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_142b686f.mp3", "I'm going to enjoy watching the Militia slit your throat.", "cutthroat", 605073324, 777296863)
                    	elseif choice == 6 then
				        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_5195ca4a.mp3", "Do you know what Freeport does to spies?", "scold", 2290091922, 1343726185)
                    	elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_ef0ff5c7.mp3", "You're a stranger ... and I don't talk to strangers.", "sulk", 1921159672, 254720018)
                        end
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
	                local choice = math.random(1,12)
	                    if choice == 1 then
	                   	PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_aoi_gf_603e4394.mp3", "Was it just me, or did I hear something jingling in your coin purse?", "listen", 2502377022, 3322258847)
	                    elseif choice == 2 then
	                   	PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gf_ed2258.mp3", "If you keep bothering me, I'll scream for help!!", "scream", 663270309, 1265685906)
	                    elseif choice == 3 then
	                   	PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gf_b0f7eb94.mp3", "Unless you know of a way to make some quick coin, we have no reason to talk.", "scold", 2879661704, 1437151896)
	                    elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gf_e0c9d202.mp3", "I'd give anything to leave this godsforsaken cesspool of a city.", "beg", 3902173006, 861701075)
                    	elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gf_975b4774.mp3", "I wish those guards would just leave us alone.", "sulk", 1551750792, 514840364)
                    	elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gf_e1648d49.mp3", "What made you think I wanted to talk to you?", "shrug", 3374792551, 3346072463)
                    	elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gf_79813683.mp3", "You'd be a lot more interesting with a dagger sticking out of your back.", "ponder", 126289530, 1128715810)
                    	elseif choice == 8 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gf_501caebd.mp3", "Didn't I see your corpse in the alley?  Hmmm ... Maybe it was someone else.", "confused", 601911164, 3281892455)
                    	elseif choice == 9 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gf_216216bd.mp3", "The next time that guy leers at me, I'm gonna punch him in the throat.", "threaten", 185071498, 1736193360)
                    	elseif choice == 10 then
	                   	PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_aoi_gf_5dbd05d1.mp3", "Does anyone in this city bathe?", "stinky", 3778681255, 1495535273)
                    	elseif choice == 11 then
	                   	PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gf_d2844e25.mp3", "You can avoid trouble around here as long as you don't make eye contact with anyone.", "stare", 1255908565, 2073931972)
	                	elseif choice == 12 then
	                   	PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gf_2a5ed43.mp3", "Only the strong survive around here.  Nice knowing you!", "bye", 2636161808, 2711680191)
	                                 	                    
	                    end
	                end   
                end end
            
				elseif GOOD then
                end
            end
		
		elseif race == IKSAR then
			if gender == MALE then
		    elseif gender == FEMALE then
			end
			
		elseif race == KERRA then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
                	local choice = math.random(1,7)

                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_9f680679.mp3", "I'd kill to know what the overlord has in that citadel!", "scheme", 3285282644, 3219725501)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_3fe55b38.mp3", "Why, don't I seem to be the popular one today.", "whome", 1475998222, 3731288810)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_895b5e07.mp3", "Everything has a price!  What's yours?", "shrug", 599093835, 2436498104)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_8a065b90.mp3", "I am a kindly master, just so long as you remember your place.", "scold", 1400094764, 1979877393)
                    	elseif choice == 5 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_aoi_gf_c9f2b4f1.mp3", "Friendship is too costly around here.", "no", 1460934904, 2228770988)
                    	elseif choice == 6 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_5beacd8e.mp3", "Deep down we're all motivated by the same urges.  I just have the courage to live by them.", "agree", 3328230174, 1668734281)
                    	elseif choice == 7 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_8036c73a.mp3", "Some say Kerra are sneaky, evil, and cruel.  True.  We have many other fine qualities as well!", "scheme", 98388570, 2862243050)
                    	end
                    end
                end end
				elseif GOOD then
			    end
			    
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
	                    local choice = MakeRandomInt(1,6)

	                    if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_895b5e07.mp3", "Everything has a price!  What\'s yours?", "shrug", 599093835, 2436498104)
	                    elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_3fe55b38.mp3", "Why, don\'t I seem to be the popular one today.", "whome", 1475998222, 3731288810)
                    	elseif choice == 3 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_8a065b90.mp3", "I am a kindly master, just so long as you remember your place.", "scold", 1400094764, 1979877393)
	                    elseif choice == 4 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_9f680679.mp3", "I\'d kill to know what the overlord has in that citadel!", "scheme", 3285282644, 3219725501)
	                    elseif choice == 5 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_aoi_gf_c9f2b4f1.mp3", "Friendship is too costly around here.", "sigh", 1460934904, 2228770988)
	                    elseif choice == 6 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_5beacd8e.mp3", "Deep down we're all motivated by the same urges.  I just have the courage to live by them.", "agree", 3328230174, 1668734281)
 	                                                               
                        end	
                    end
                end end    
				elseif GOOD then
			    	if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
                	local choice = math.random(1,7)

                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_good_2/ft/kerran/kerran_eco_good_2_hail_gf_b155e999.mp3", "You won't see me near any of those fountains!", "heckno", 1123179326, 271243686)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_good_2/ft/kerran/kerran_eco_good_2_hail_gf_eabd8556.mp3", "I heard the ratonga play for fun!", "giggle", 1138200584, 1711242450)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_good_2/ft/kerran/kerran_eco_good_2_hail_gf_28445ab7.mp3", "I don't spend as much time grooming as the others say I do.", "sigh", 1571714850, 824504933)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_good_2/ft/kerran/kerran_eco_good_2_hail_gf_4424ae28.mp3", "How sweet my Tom is to leave such a gift at my door step.", "happy", 2235953436, 2446050201)
                    	elseif choice == 5 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_good_2/ft/kerran/kerran_eco_good_2_hail_gf_63881722.mp3", "I'm trying to find a new seasoning for my dried fish.", "ponder", 3322224010, 1564701262)
                        end					    
		            end
		        end
		    end end
	    end
	    
		elseif race == OGRE then
			    if gender == MALE then
			    elseif gender == FEMALE then
	    	        if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")	    	            
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
                	local choice = math.random(1,9)
                        if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_2/ft/ogre/ogre_eco_evil_2_aoi_gf_b47ba6c8.mp3", "There is never enough bloodshed in this city.", "grumble", 2738684859, 1457757225)
                        elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_2/ft/ogre/ogre_eco_evil_2_aoi_gf_d70efe42.mp3", "Revel in the bloodshed.", "yeah", 3553897837, 3037866776)
                        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_2/ft/ogre/ogre_eco_evil_2_hail_gf_ed0025c7.mp3", "Drinking the blood of your enemy only makes you stronger.", "chuckle", 2597493569, 3831571194)
                        elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_2/ft/ogre/ogre_eco_evil_2_hail_gf_ebf3ef37.mp3", "In the heat of battle is the only way to die.", "smile", 1938773892, 770731252)
                        elseif choice == 5 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_2/ft/ogre/ogre_eco_evil_2_hail_gf_9709be04.mp3", "I can hear breaking bones from many cogs away.", "listen", 2906479371, 2381016468)
	                    elseif choice == 6 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_2/ft/ogre/ogre_eco_evil_2_hail_gf_55c24433.mp3", "I use fear to kill my enemies.", "stare", 1684658713, 4281146719)
                	    elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_2/ft/ogre/ogre_eco_evil_2_hail_gf_9709be04.mp3", "I can hear breaking bones from many cogs away.", "listen", 2906479371, 2381016468)
                	    elseif choice == 8 then
                		PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_2/ft/ogre/ogre_eco_evil_2_hail_gf_1a13bb5d.mp3", "Armor is just an extension of my skin.", "flex", 1229374135, 1249250407)
                	    elseif choice == 9 then
                		PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_2/ft/ogre/ogre_eco_evil_2_hail_gf_b16f51a5.mp3", "I travel. As long as its to inflict pain.", "sneer", 3351897420, 1929551634)
                    	end
			        end			        
			    end
			end end
			
		elseif race == RATONGA then
		        if gender == MALE then
	    	    if FPfaction <0 then
	    	        	if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")
			            local choice = math.random(1,2)
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
                	local choice = math.random(1,3)
                        if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_evil_2/ft/ratonga/ratonga_eco_evil_2_hail_gm_6983d4f4.mp3", "Do you ever get the feeling someone's watching you?", "doubletake", 1443012999, 225264564)
                        elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_evil_2/ft/ratonga/ratonga_eco_evil_2_aoi_gm_77ec588f.mp3", "Shutup!  And tell me what the other idiot is doing!", "swear", 1839404420, 417472111)
                        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_evil_2/ft/ratonga/ratonga_eco_evil_2_aoi_gm_a07a0e21.mp3", "Well, why didn't you say so!  That changes everything.", "doh", 392770009, 1670445170)
                        end
                    end
                end end    
	            elseif gender == FEMALE then
	    	    end
            
		elseif race == TROLL then
			    if gender == MALE then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
            	local choice = math.random(1,7)
            	    if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_f9319fbb.mp3", "I like killing things just to see them die.  Don't you?", "giggle", 2044250119, 1492935869)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_60a4050b.mp3", "Me likes it when they are scared.  It tastes better that way.", "thanks", 2363588727, 2924742015)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_46facad7.mp3", "If I eats you now, I wouldn't know what you were going to say.", "wink", 191047961, 2382342743)
            	    elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_ae48977.mp3", "You can't eat money. Then why people care about it so much?", "wince", 404920869, 3492621289)
                    elseif choice == 5 then
        	        PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_5afa1e7.mp3", "The Overlord needs less gold.  Eat more people!  He won't miss them!", "scheme", 2782977705, 136776719)
            	    elseif choice == 6 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_f28915a9.mp3", "Friends are good.. until you don't need them anymore!", "agree", 2727950602, 4200124273)
            	    elseif choice == 7 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_d5eb6fc.mp3", "Ow! Head hurts when I do that thing.. with my brain! Owww!", "scream", 1058602010, 3235323095)
    	            end
        	    end
        	end end
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


-------------------------------------------------------------------------------------------

--                                  GenericRaceCheckCallout

-------------------------------------------------------------------------------------------

function GenericRaceCheckCallout(NPC, Spawn, faction)
    race = GetRace(NPC)
    spawnRace = GetRace(Spawn)
	gender = GetGender(NPC)
	Qfaction = GetFactionAmount(Spawn,11)
	FPfaction = GetFactionAmount(Spawn,12)
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
	if race >= 0 and race <= 18 and gender >= 1 and gender <= 2 then        -- verify's NPC race/gender
		if race == BARBARIAN then                                           -- begins NPC race check
			if gender == MALE then                                          -- begins NPC gender check
			    if EVIL then                                                -- begins NPC faction/location check
			    	if FPfaction <0 then                                    -- player faction check to determine resposne
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
				    local choice = math.random(1,3)                         -- player passes faction check, procedes to dialogue
                        if choice == 1 then	
		                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_hail_gm_431b37d1.mp3", "Watch yerself, this city can be rough.", "wink", 1560541305, 226492698)
		                elseif choice == 2 then	
                        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_hail_gm_dd0b4913.mp3", "Hah! New around these parts?", "hello", 3252919562, 342739868)
                        elseif choice == 3 then				        
				            if spawnRace == BARBARIAN then
                            PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_barbarian_gm_df05bfb0.mp3", "You can push anyone around here except the ogres and trolls.", "nod", 1644989273, 3794783731)
                            elseif spawnRace == DARK_ELF then
                            PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_barbarian_gm_df05bfb0.mp3", "Straying a bit, are we?", "glare", 4033200255, 1327891280)
                            elseif spawnRace == DWARF then
      		                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_dwarf_gm_bbcba7d5.mp3", "Nasty and short. Foul little creature.", "doh", 3043791526, 2631752167)                          
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_erudite_gm_6a360eb1.mp3", "I never was one for the books.  I guess that's why we leave them to you!", "no", 271638372, 933214140)
                            elseif spawnRace == FROGLOK then
                    		PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_froglok_gm_a725c08a.mp3", "Hey there! Is it true you taste like chicken?", "ponder", 1270685983, 3669150065)
                            elseif spawnRace == HALF_ELF then
                    		PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_halfelf_gm_cd562147.mp3", "Yer lucky ya take after yer human side!", "peer", 1663140408, 661893443)
                            elseif spawnRace == HUMAN then
                    		PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_human_gm_d03a5e12.mp3", "I've already made my tribute to the Overlord this week.", "lookaway", 3410425137, 3010931289)
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_iksar_gm_df4e01c0.mp3", "Scales are obviously tipped in my favor... Eh? Heh Hehuheh!", "chuckle", 2060746310, 2782545175)
                            elseif spawnRace == KERRA then
		                    PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_kerra_gm_a4259991.mp3", "With all that fur, don't you get hot out in the Commonlands?", "shrug", 3410911191, 2574627181)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_ogre_gm_85d4dfd9.mp3", "If your brain were half as good as your brawn, you'd be a quarter of the warrior I am!", "flex", 3300429686, 1230722065)
                            elseif spawnRace == RATONGA then
	                    	PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_ratonga_gm_773f13bf.mp3", "What's the matter, cat got yer tongue? Har har har!", "point", 1345553103, 3128526950)
                            else
                           	    local check = math.random(1,2)
                                if check == 1 then	
                                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_hail_gm_431b37d1.mp3", "Watch yourself.  This city can be rough!", "glare", 1560541305, 226492698)
                                elseif check == 2 then	
                                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_hail_gm_dd0b4913.mp3", "Hah! New around these parts?", "hello", 3252919562, 342739868)
                                end
				            end
				        end
			        end
			     end end
			    elseif GOOD then
			        if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
				        FaceTarget(NPC,Spawn)
		                AddTimer(NPC,8000,"ResetFactionCalloutTimer")			            
                        FactionCheckingCallout(NPC, Spawn, faction)
			            end
			        else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    			            
			    	local choice = math.random(1,3)
	                    if choice == 1 then --racial check
	                        if spawnRace == BARBARIAN then
				                if GetLevel(Spawn) >=50 then
				                local choice = math.random(1,4)     --Calls in Status Praise VO
				                else	                            
	                           	local check = math.random(1,2) 
	                           	    if check == 1 then
					                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_barbarian_gm_de9e8da3.mp3", "Mithaniel Marr never left us.  He will always be apart of our tribe, as long as we remain strong and brave.", "nod", 3368668310, 2187585076)
                                    elseif check == 2 then
	                            	PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_barbarian_gm_e7f2037c.mp3", "Perhaps we should go for a Halas cold brew sometime and share stories about our ancestors.", "wink", 2490006983, 800833318)
                                    elseif choice == 3 then	
                                    PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_status_gm_7eecc9cb.mp3", "I can only hope my young cubs would grow to have some measure of your bravery.", "thank", 168452918, 1251241094)
                                    elseif choice == 4 then	
                             		PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_status_gm_aac1e025.mp3", "Your bravery extends far beyond the reach of Norrath. You bring great honor to the wolves of the north.", "bow", 2991186258, 3183137783)
                                    end
                                end
                            elseif spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_darkelf_gm_d26c37f4.mp3", "Haha! What color does a dark elf bleed, care to tell?", "chuckle", 1543653024, 615533497)
	                        elseif spawnRace == DWARF then
	                           	local check = math.random(1,2) 
	                           	    if check == 1 then
					                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_dwarf_gm_a8e32501.mp3", "Its a pleasure to see such strength in an ally so short!", "nod", 4130131362, 1400424363)
                                    elseif check == 2 then
					                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_dwarf_gm_e7f2037c.mp3", "Perhaps we should go for a Hallas-cold brew sometime and share stories about our ancestors.", "wink", 3235630615, 1033414770)
                                    end
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_erudite_gm_e216a8ba.mp3", "Hah! How do you keep warm without any hair on your body?  The tundra would snap your body like an icecicle.", "boggle", 1786373260, 3931240958)
                            elseif spawnRace == FROGLOK then
                    		PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_froglok_gm_cfe91e69.mp3", "I knew Mithaniel Marr wouldn't leave us forever. I had a feeling he would return to watch over us.", "", 906365937, 4235011592)
                            elseif spawnRace == GNOME then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_gnome_gm_3d767081.mp3", "Heh heh.  I'm sorry.  Your constant chatter about cogs and sprockets makes no sense to me.", "confused", 469705290, 4090933674)
                            elseif spawnRace == HALF_ELF then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_halfelf_gm_4794558f.mp3", "If you really want to prove your courage in battle, get yourself a woad. Those can't be taken off so easily.", "nod", 1356161649, 134319671)
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_halfling_gm_a61ee5ac.mp3", "Ah, I would have trod upon you had you not spoken up.", "boggle", 2064484408, 3865062610)
                            elseif spawnRace == HIGH_ELF then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_highelf_gm_310c09cb.mp3", "Hail to you as well, long lived one.", "hello", 2115413618, 2434193113)
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_iksar_gm_88d6b89c.mp3", "Just because Qeynos isn't a freezing climate, doesn't mean a cold-blooded reptile is welcome here.", "scold", 992683295, 3962864221)
                            elseif spawnRace == KERRA then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_kerra_gm_8a6840fc.mp3", "You would do well in Hallas in that fur coat.", "agree", 538073635, 999238426)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_ogre_gm_ccb99e72.mp3", "Qeynos isn't large eoungh for the both of us.", "stare", 769788660, 92077120)
                            elseif spawnRace == RATONGA then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_ratonga_gm_4b0a3096.mp3", "Watch where you're going. I might step on you should I choose to forget you were near me.", "point", 783852429, 746396829)
                            elseif spawnRace == TROLL then
                            PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_troll_gm_e224c510.mp3", "I don't care to hear what races are tasty. I prefer you keep that to your swamp friends.", "heckno", 3520208270, 3768333436)
                            elseif spawnRace == WOOD_ELF then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_woodelf_gm_8dff8cc4.mp3", "Eat more heartily to stand firm, even in the strongest winds!", "happy", 810996081, 628715345)
			          	    else
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
                                    PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_d571c130.mp3", "I'm not used to this weather, but my people can adapt to any change in order to survive.", "no", 3421348121, 1004876500)
                                    elseif check == 2 then	
                                    PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_5a6b643f.mp3", "Treasures from the past can be found throughout the lands for those who care to look.", "nod", 3614931515, 1601871948)
				       		        end                   
		                    end
                        elseif choice == 2 then	
                        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_d571c130.mp3", "I'm not used to this weather, but my people can adapt to any change in order to survive.", "no", 3421348121, 1004876500)
                        elseif choice == 3 then	
                        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_5a6b643f.mp3", "Treasures from the past can be found throughout the lands for those who care to look.", "nod", 3614931515, 1601871948)
                        end                        				    
				    end 
			    end 
			end end 
			elseif gender == FEMALE then
			    if GOOD then
			       
			    elseif EVIL then
	    	    end
		    end
		    
		elseif race == DARK_ELF then
                if gender == MALE then			    	
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
				    local choice = math.random(1,3)                         
                        if choice == 1 then	
		                PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_hail_gm_eb5fa2b6.mp3", "One day, our lot will improve here!", "nod", 1462094560, 868024293)
		                elseif choice == 2 then	
                        PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_hail_gm_8656f5c7.mp3", "Its a fine day for evil to flourish!", "scheme", 2232955380, 3080497078)
                        elseif choice == 3 then				        
				            if spawnRace == BARBARIAN then
                            PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_barbarian_gm_46b8ab28.mp3", "Get away from me, brute!", "threaten", 1806259132, 4035381096)
                            elseif spawnRace == DARK_ELF then
				                if GetLevel(Spawn) >=50 then
                                local choice = math.random(1,4)
                                else                                
                         	    local check = math.random(1,2)
                                if check == 1 then	
                                PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_darkelf_gm_2fb22326.mp3", "We'll rise again, and then nothing can stop us.", "agree", 1301346574, 4276784701)
                                elseif check == 2 then	
                                PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_darkelf_gm_54a02968.mp3", "What a foul dirty place this is compared to Neriak!", "stinky", 3252919562, 342739868)
		                        elseif choice == 3 then	
                                PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_status_gm_3139de2e.mp3", "Innoruk's blood you're powerful!", "boggle", 4048173225, 4136711044)
		                        elseif choice == 4 then	
                                PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_status_gm_b86ec55f.mp3", "You'll do nicely when we make our play!", "agree", 234032343, 1835792122)
                                end
                               end 
                            elseif spawnRace == DWARF then
                    		PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_dwarf_gm_e76b04be.mp3", "Foul. It's a testament to our ruler's weakness that he lets your ilk in here.", "sad", 3576789141, 2531430603)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_erudite_gm_592ca86a.mp3", "Where has all of your vaunted intelligence gotten you?", "chuckle", 2330017595, 3612340219)
                            elseif spawnRace == GNOME then
					        PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_gnome_gm_8081d786.mp3", "I've no use for a toy soldier.", "no", 2452036802, 1703948999)
                            elseif spawnRace == HALF_ELF then
					        PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_halfelf_gm_8677807d.mp3", "Half perfect, half diseased.  Still disgusting!", "sniff", 512466716, 4175253448)
                            elseif spawnRace == HIGH_ELF then                        
                    		PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_highelf_gm_9eab37c6.mp3", "An evil high elf?  Dear Innoruuk, we've prevailed!", "cheer", 172789471, 2283627974)
                            elseif spawnRace == HUMAN then
					        PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_human_gm_3694a5ae.mp3", "Were your overlord not around, we Tier'Dal would have crushed Freeport.", "sarcasm", 3436507932, 1702035959)
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_iksar_gm_4bb5d364.mp3", "Back off scaley!  No antcient civilization saves you from the same fate I share!", "boggle", 3246025874, 2970292992)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_ogre_gm_8cf93c6a.mp3", "The Green Mist missed a few spots.  Its a shame the gods were too weak to finish what they started.", "shrug", 181661249, 784055085)
                            elseif spawnRace == RATONGA then
	                    	PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_ratonga_gm_ac7f4092.mp3", "A talking rat?  Ugh, go play with a Kerra.", "point", 396338587, 547395314)
                            elseif spawnRace == TROLL then
	                    	PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_troll_gm_95179ecf.mp3", "Its a shame the Thexian rulers were weak and allowed you trolls to live in Neriak.", "ponder", 2126071785, 4235896141)
                            else
                           	    local check = math.random(1,2)
                                if check == 1 then	
                                PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_hail_gm_eb5fa2b6.mp3", "One day, our lot will improve here!", "nod", 1462094560, 868024293)
		                        elseif choice == 2 then	
                                PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_hail_gm_8656f5c7.mp3", "Its a fine day for evil to flourish!", "scheme", 2232955380, 3080497078)
                                end
				            end
				        end
			        end
			    end end 
		elseif gender == FEMALE then
	    end

		elseif race == DWARF then
			if gender == MALE then
		    elseif gender == FEMALE then
		    			if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")		    			    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
			    local choice = math.random(1,3)
			        if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_race_good/ft/eco/good/dwarf_eco_race_good_hail_gf_bce06b4a.mp3", "A long day of adventure'n makes one long for home, don't it?", "smile", 2210732036, 3144200859)
			        elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_race_good/ft/eco/good/dwarf_eco_race_good_hail_gf_c221a26e.mp3", "Ah, what I wouldn't give to be cradle'n a mug of good dwarven ale.", "ponder", 409704670, 4015848226)
				    elseif choice == 3 then
                            if spawnRace == HIGH_ELF then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_highelf_gm_310c09cb.mp3", "Elves have been neighbors with us for so long and you still can't handle a couple of dwarven ales.  Don't give me your excuse for elven wine.  That's not real alchohol!", "scold", 2416513387, 2396192573)
                            end
                        else
			        local choice = math.random(1,2)
			        if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_race_good/ft/eco/good/dwarf_eco_race_good_hail_gf_bce06b4a.mp3", "If you haven't done ten times your weight in dirt, you haven't done a lick of work.", "no", 2210732036, 3144200859)
			        elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/dwarf_eco_race_good/ft/eco/good/dwarf_eco_race_good_hail_gf_c221a26e.mp3", "Where are ya goin?  It's impolite to go off and fight without invite'n me!", "ponder", 409704670, 4015848226)
				    end
				end
		    end
	    end	
	end end
	
	    elseif race== ERUDITE then
			if gender == MALE then
			    if EVIL then
			      	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			      	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
				    local choice = math.random(1,3)                         
                        if choice == 1 then	
                        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gm_43bd22f2.mp3", "Greetings.  One day I hope everyone bows before my intellect.", "hello", 3316681960, 3617003101)		                
                        elseif choice == 2 then	                        
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gm_9bc2cf77.mp3", "My time is too valuable to be spent chatting.", "bye", 788162420, 1166698384)
                        elseif choice == 3 then				        
				            if spawnRace == BARBARIAN then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_ogre_gm_963391fd.mp3", "Brute you were, and always shall be.", "scold", 181661249, 784055085)
                            elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_dwarf_gm_62e8be6f.mp3", "Oh dear, its rather like a small barbarian.", "sneer", 803690924, 2650545024)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_erudite_gm_c5bc0931.mp3", "Can you imagine why we're not ruling?", "nod", 1050007971, 1742690856)
                            elseif spawnRace == IKSAR then
	                	    PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_iksar_gm_2cdba125.mp3", "It's a shame Cabalis isn't around, it would have made an interesting study.", "sigh", 3903013371, 226829195)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_ogre_gm_963391fd.mp3", "Brute you were, and always shall be.", "scold", 181661249, 784055085)
                            elseif spawnRace == RATONGA then
	                	    PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_ratonga_gm_4d3aaca.mp3", "One day, I may have use for your services, sneaky.", "nod", 1373077305, 3004061362)
                            else
                           	    local check = math.random(1,2)
                                if choice == 1 then	
                                PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gm_43bd22f2.mp3", "Greetings.  One day I hope everyone bows before my intellect.", "hello", 3316681960, 3617003101)		
                                elseif choice == 2 then	                        
	                	        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gm_9bc2cf77.mp3", "My time is too valuable to be spent chatting.", "bye", 788162420, 1166698384)
                                end
				            end
				        end
			        end
			    end end
                    	
				elseif GOOD then
                end
				
			elseif gender == FEMALE then
			    if EVIL then
			      	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			      	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
				    local choice = math.random(1,3)                         
                        if choice == 1 then	
                        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gf_43bd22f2.mp3", "Greetings.  One day I hope everyone bows before my intellect.", "hello", 833705169, 3091207712)		                	
                        elseif choice == 2 then	                        
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gf_9bc2cf77.mp3", "My time is too valuable to be spent chatting.", "bye", 3939605048, 2460746424)
                        elseif choice == 3 then				        
                            if spawnRace == DARKELF then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_darkelf_gf_233d5f4f.mp3", "Salutations, dark one.", "hello", 2890047865, 1995916608)
                            elseif spawnRace == ERUDITE then
                                local check = math.random(1,2)
                                if choice == 1 then
	                	        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gf_2b43ed1a.mp3", "This lost has no appreciation for our suprerior intellect.", "no", 1152387164, 36321725)
                                elseif choice == 2 then	                        
	                	        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gf_c5bc0931.mp3", "Can you imagine why we're not ruling?", "ponder", 1050007971, 1742690856)
                                end					        
                            elseif spawnRace == KERRA then
	                	    PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_kerra_gf_85f0b7d.mp3", "Disgusting that the overlord even considers your race.", "sniff", 3422662472, 3860203232)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_ogre_gf_ee6a8ad4.mp3", "Brutes you were, and brutes you shall always be.", "nod", 1608330065, 1921728202)
                            elseif spawnRace == RATONGA then
	                	    PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_ratonga_gf_4d3aaca.mp3", "One day, I may have use for your services, sneaky.", "nod", 3454516876, 1362938661)
                            elseif spawnRace == TROLL then
	                	    PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_troll_gf_e93b7941.mp3", "If you stopped thinking about your stomach, you might be able to form a sentence.", "scold", 3553520221, 3928709815)
                                                    
                            else
                           	    local check = math.random(1,2)
                                if choice == 1 then	
                                PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gf_43bd22f2.mp3", "Greetings.  One day I hope everyone bows before my intellect.", "hello", 833705169, 3091207712)		                	
                                elseif choice == 2 then	                        
	                	        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gf_9bc2cf77.mp3", "My time is too valuable to be spent chatting.", "bye", 3939605048, 2460746424)
                                
				            end
				        end
			        end
			    end
			end end    
				elseif GOOD then
				    if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")				        
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
			    	local choice = math.random(1,3)
	                    if choice == 1 then --racial check
	                        if spawnRace == BARBARIAN then
	                        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_barbarian_gf_f1057cd0.mp3", "I find it refreshing to speak to someone of your physical stature.", "ponder", 36526703, 389726822)
                            elseif spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_darkelf_gf_67b4b065.mp3", "The Tier'Dal corrupted my ancestors with the dark arts.  If your intention is the same, I will show you what I do to those who craft in the dark arts.", "stare", 3269037986, 3583430591)
	                        elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_dwarf_gf_d09b3368.mp3", "Fascinating!  I thought your kind could not adapt to life after The Shattering.  Interesting to see I was mistakened.", "ponder", 619552095, 1406216651)
                            elseif spawnRace == ERUDITE then
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
	                	            PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_erudite_gf_ab1bd57b.mp3", "May Quellious's blessings be upon you and yours.", "curstey", 1402855828, 3071800181)
                                    elseif choice == 2 then	
	                	            PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_erudite_gf_9e9d6cce.mp3", "I'm sure whatever you seek, Quellious will help you find it.", "agree", 1152387164, 36321725)
				       		        end					        
                            elseif spawnRace == GNOME then
                		    PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_gnome_gf_885ee58d.mp3", "The machinations of the average gnome's mind are really best left untouched.", "nod", 499883228, 2559247313)
                            elseif spawnRace == HALF_ELF then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_halfelf_gf_aff989b.mp3", "There are many that wouldn't speak with your kind, but I find your history intriguing.", "nod", 1855380777, 1709969199)
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_halfling_gf_1524469a.mp3", "Take care to speak loudly when announcing your presence, less a larger being crush you beneath its toes.", "agree", 1007871270, 3421630084)
                            elseif spawnRace == HIGH_ELF then
	                	    PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_highelf_gf_cfbdf659.mp3", "That ensemble is quite becoming to you.  Almost as good as my own.", "hello", 2314937497, 2446209028)
                            elseif spawnRace == HUMAN then
	                	    PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_human_gf_3942f6cc", "Nothing's more fruitful than spending your time among the learned.", "agree", 2072395332, 2149802738)
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_iksar_gf_92ff3ed3.mp3", "The reptilian brain lacks higher cognitive processing.  Such a lowly creature has no place walking amongst us in the city.", "no", 945836085, 772000445)
                            elseif spawnRace == KERRA then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_kerra_gf_f236b75e.mp3", "I'm sorry my ancestors treated your kind so poorly.  The kerra were less civilized back then.  At least now they're making some measurable progress.", "apologize", 4058186530, 3584703264)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_ogre_gf_88c97da6.mp3", "Away from me you wraith-brained brute.  Even with the curse lifted your race hasn't aquired any intelligence!","no", 2627346232, 1243123055)
                            elseif spawnRace == WOOD_ELF then
                            local check = math.random(1,2) 
	                           	if check == 1 then
	                	        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_woodelf_gf_a25cc08a.mp3", "If a tree falls in the woods but no one is there to hear it, does it make a sound?", "ponder", 1447042742, 1128515123)
                                elseif choice == 2 then	
	                	        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_woodelf_gf_b60ad90f.mp3", "Nothing's' more discouraging than to be a woodsman in the midst of grander civilizations, is there?  Well, there might be hope for you yet.", "hello", 84164724, 4245634186)
				       		    end
				       		else
                            local check = math.random(1,2) 
	                            if check == 1 then
	                	        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_hail_gf_24e3a5aa.mp3", "I have learned that it is best to trust to your own wisdom rather than the weaponry of your acquaintances.", "nod", 2387566735, 2940828519)
                                elseif choice == 2 then	
	                	        PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_hail_gf_8f458045.mp3", "Please, I am in the midst of solving a very complex problem and must not be interrupted.", "no", 971990033, 2178584483)
				       		    end                   
		                    end
                        elseif choice == 2 then	
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_hail_gf_24e3a5aa.mp3", "I have learned that it is best to trust to your own wisdom rather than the weaponry of your acquaintances.", "nod", 2387566735, 2940828519)
                        elseif choice == 3 then	
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_hail_gf_8f458045.mp3", "Please, I am in the midst of solving a very complex problem and must not be interrupted.", "no", 971990033, 2178584483)
                        end
                    end                        				    
				    end 
			    end 
			end end
			
		elseif race == FROGLOK then
			if gender == MALE then
            elseif gender == FEMALE then
            		if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")            		    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
			    	local choice = math.random(1,3)
	                    if choice == 1 then --racial check
	                        if spawnRace == BARBARIAN then
	                        PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_barbarian_gf_2a05cb73.mp3", "Good to see you watching thy footsteps in the crowd.", "hello", 1081508285, 2427213760)
                            elseif spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_darkelf_gf_9a525d02.mp3", "The twisted children of Innoruk have no place amongst the good.  I hope you are here looking for redemption.", "no", 2651815149, 74368302)
	                        elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_dwarf_gf_744e2b79.mp3", "Hail to you master of mining and earthen treasure.", "hello", 2566521966, 1120118768)
                            elseif spawnRace == ERUDITE then
	                	    PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_erudite_gf_6fc36186.mp3", "Intelligence goes not only to the tall, but to the honorable!", "agree", 723944093, 746238174)
                            elseif spawnRace == GNOME then
                	        PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_gnome_gf_42177c87.mp3", "What's that? All thy mutterings about whizzlegigs and furbelows is quite unintelligible.", "confused", 3856971048, 2722248899)
                            elseif spawnRace == HALF_ELF then
					        PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_halfelf_gf_17b16261.mp3", "The other races of Qeynos might give you some resepect if you didn't pierce yourselfs like a.. smelly troll!", "scold", 533543002, 2702833807)
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_halfling_gf_c99e35d6.mp3", "May the fur upon thy feet never recede!", "curtsey", 2739268859, 2588639054)
                            elseif spawnRace == HIGH_ELF then
                           	    local check = math.random(1,2)	                           
	                           	if check == 1 then
                	            PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_highelf_gf_d3687a91.mp3", "It is good to see elven-kind here in Qeynos who can help us defend the laws of the land.", "hello", 3596392273, 2126265241)
                                elseif choice == 2 then	
	                	        PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_highelf_gf_47192d0e.mp3", "Justice, honor and valor above all!", "nod", 1395300363, 1594049807)
				       		    end
				       		elseif spawnRace == HUMAN then
	                	    PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_human_gf_a6365ebc.mp3", "Always remember that hard work may be the key to some success, honor is the key to valor.", "agree", 1978493922, 2041068107)
                             elseif spawnRace == KERRA then
					        PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_kerra_gf_3517943f.mp3", "Its unfortunate that the gift of speech was bestowed upon so many different thoughts and beings.", "sigh", 3288858464, 183825498)
                            elseif spawnRace == WOOD_ELF then
					        PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_woodelf_gf_7e2b8462.mp3", "You must miss thyn old woodland home as much as I miss mine.","sad", 387192699, 182364074)

				       		else
                            local check = math.random(1,2) 
	                            if check == 1 then
                	            PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_hail_gf_cd3d026e.mp3", "Always step carefully within the city limits -- and even more carefully when outside of the city.", "nod", 2864618200, 434416947)
                                elseif choice == 2 then	
                	            PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_hail_gf_eae44fad.mp3", "May the blessings of Mithaniel Marr be upon you.", "hello", 2437408909, 3055505253)
				       		    end                   
		                    end
                        elseif choice == 2 then	
                	    PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_hail_gf_cd3d026e.mp3", "Always step carefully within the city limits -- and even more carefully when outside of the city.", "nod", 2864618200, 434416947)
                        elseif choice == 3 then	
                    	PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_hail_gf_eae44fad.mp3", "May the blessings of Mithaniel Marr be upon you.", "hello", 2437408909, 3055505253)
                        end                        				    
				    end 
			    end 
	        end end
	    
		elseif race == GNOME then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
				        local choice = math.random(1,3)                         
                        if choice == 1 then	
                        PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_hail_gm_dd38c0ae.mp3", "Now what did I do with that gear?", "confused", 4176417694, 571824368)		                
                        elseif choice == 2 then	                        
	                	PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_hail_gm_66cbf9a8.mp3", "No time for chatting.  Sorry!", "no", 3060036576, 2175661958)
                        elseif choice == 3 then				        
                            if spawnRace == DARKELF then
					        PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_darkelf_gm_d6a4426d.mp3", "Oops!  Pardon me!  Watch the gnome!", "appologize", 57227224, 2068197977)
                            elseif spawnRace == ERUDITE then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_erudite_gm_fda5eb48.mp3", "We'll see who's smarter when I finish my ... thingamabob!", "agree", 856975110, 1693275305)
                            elseif spawnRace == GNOME then
					        PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_gnome_gm_91c8c95a.mp3", "Sprockets and cogs!  Where's the one I need now?", "doh", 2107565689, 1695469863)
                            elseif spawnRace == OGRE then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_troll_gm_fec5e2a0.mp3", "Nooo no no no no!  Get away from me with those feet!  I will NOT let you punt me!", "cringe", 893602615, 1336608806)
                            elseif spawnRace == RATONGA then
                           	    local check = math.random(1,2)                                
                                if check == 1 then	
                                PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_ratonga_gm_c4fe5091.mp3", "Its a.. rat race out here!", "chuckle", 3414267492, 3932300678)		                
                                elseif check == 2 then	                        
	                	        PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_ratonga_gm_f5bdc8a9.mp3", "Good thing you ratonga have such nimble fingers!", "nod", 3939605048, 2460746424)
                                end
                            elseif spawnRace == TROLL then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_troll_gm_fec5e2a0.mp3", "Nooo no no no no!  Get away from me with those feet!  I will NOT let you punt me!", "cringe", 893602615, 1336608806)
                                                    
                            else
                           	    local check = math.random(1,2)
                                if check == 1 then	
                                PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_hail_gm_dd38c0ae.mp3", "Now what did I do with that gear?", "confused", 4176417694, 571824368)		                
                                elseif check == 2 then	                        
	                	        PlayFlavor(NPC, "voiceover/english/gnome_eco_race_evil/ft/eco/evil/gnome_eco_race_evil_hail_gm_66cbf9a8.mp3", "No time for chatting.  Sorry!", "no", 3060036576, 2175661958)
                                end
				            end
				        end
			        end
			    end end	        
			        
				elseif GOOD then
                end
				
			elseif gender == FEMALE then
			    if GOOD then
			        if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			            
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
			    local choice = math.random(1,3)
			        if choice == 1 then
	                PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_hail_gf_39da4f6d.mp3", "Cheers and boggle chippers to you!", "hello", 3143145827, 3768593316)
			        elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_hail_gf_a39dcf21.mp3", "Oh, have you any spare foozlebits?  Don't you hate being one foozlebit short of a fwinger?!", "happy", 2398830545, 499246232)
				    elseif choice == 3 then
                            if spawnRace == BARBARIAN then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_barbarian_gf_68486376.mp3", "Watch your step, you rusty-pated, slow-witted, half-turned knob on a cognizoid!  Can't you see I'm busy?", "", 2020911566, 1624319994)
                            elseif spawnRace == DARK_ELF then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_darkelf_gf_2efc2ba3.mp3", "Wha-what?!  There's no underground city for you to cause trouble here!", "heckno", 1347338097, 1975299286)
                            elseif spawnRace == DWARF then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_dwarf_gf_39b313df.mp3", "Whoa!  I wish I had some of the metals I've heard you dwarves discovered!", "boggle", 952206232, 2909928469)
                            elseif spawnRace == GNOME then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_gnome_gf_cb39ba66.mp3", "May all your gears and whistles work as well as you imagine them!", "bye", 369024553, 1044203209)
                            elseif spawnRace == HALFLING then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_halfling_gf_c761c00.mp3", "Ooo, next time I'm working on a quigger, I'd love to have your help!", "agree", 4236485237, 2192659802)
                            elseif spawnRace == HIGH_ELF then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_highelf_gf_f878672c.mp3", "I have something that might bring back your eyebrows or.. maybe not.", "nod", 4294799293, 119805891)
                            elseif spawnRace == HUMAN then
                    		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_newbie_gf_42435ccc.mp3", "I've noticed you gawking at me.  Have you never seen a gnome before?", "stare", 714753951, 3080319952)
                            elseif spawnRace == KERRA then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_kerra_gf_34e32811.mp3", "Oh, about that little incident with the hair growth stimulator.. who knew?!  Oh, guess that wasn't you after all.  Nevermind!", "shrug", 2143057093, 1178408525)
                            elseif spawnRace == OGRE then
	                	    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_ogre_gf_a45b4d4.mp3", "Hmm, floggsockets, flizzkicks, and more.. EhhHAK! Watch where you're going you brute!  I lost track of something important I was working on!", "swear", 1477211600, 2587521479)
                             end
                        else
			        local choice = math.random(1,2)

			        if choice == 1 then
	                PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_hail_gf_39da4f6d.mp3", "Cheers and boggle chippers to you!", "hello", 3143145827, 3768593316)
			        elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_hail_gf_a39dcf21.mp3", "Oh, have you any spare foozlebits?  Don't you hate being one foozlebit short of a fwinger?!", "happy", 2398830545, 499246232)
				    end
				end
	        end
	    end end
				elseif EVIL then
                end 
            end
		
		elseif race == HALF_ELF then
			if gender == MALE then
			    if GOOD then
			        if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			            
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
			    	local choice = math.random(1,3)
	                    if choice == 1 then --racial check
	                        if spawnRace == BARBARIAN then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_barbarian_gm_ef83eace.mp3", "May your paths always be wide enough to accommodate your girth.", "nod", 962891721, 1618197244)
                            elseif spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_darkelf_gm_8d88c929.mp3", "Tier'Dal have no place in Qeynos, let with the elvin race!  Go back to the other side of Norrath where I can hope to track you down some day!", "scold", 2347367440, 3750524963)
	                        elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_dwarf_gm_8f6df8fc.mp3", "No mines here!  Perhaps you should keep traveling until you find some?", "no", 1423351548, 825772946)
                            elseif spawnRace == GNOME then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_gnome_gm_e91c924a.mp3", "If I wanted to build something, I'd ask you.", "no", 4236848712, 1210106222)
                            elseif spawnRace == HALF_ELF then
				                if GetLevel(Spawn) >=50 then
				                local choice = math.random(1,3)
				                else
	                            local check = math.random(1,2) 
	                           	    if check == 1 then
                                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_halfelf_gm_7a593271.mp3", "Better for us to watch eachother's backs than to find a blade in them.", "nod", 2010917197, 1213460588)
                                    elseif check == 2 then
                                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_halfelf_gm_a3837eb9.mp3", "Nice piercings!  I might get another one later today!", "agree", 2334232424, 3543793461)
                                    elseif choice == 3 then
                                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_status_gm_d0e7f760.mp3", "You bring honor to all halfelves.  Thank you for that!", "thank", 2176314453, 1767265279)
                                    end
                                end    
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_halfling_gm_51ce1bac.mp3", "Yes what is it?  Oh, just saying hello?  Well then, hello.", "hello", 1202098187, 2620859366)
                            elseif spawnRace == HIGH_ELF then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_highelf_gm_24cca44b.mp3", "You're no better than the rest of us no matter whose blessing you think you have.", "no", 1706562095, 4255036175)
                            elseif spawnRace == HUMAN then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_human_gm_66e9d70c.mp3", "I'm a little too busy for idle chit-chat if you don't mind.", "no", 2225350729, 1927315216)
                            elseif spawnRace == KERRA then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_kerra_gm_8c6c65ff.mp3", "What are you really hiding behind that fur coat?", "ponder", 264615729, 2871771903)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_ogre_gm_c0c9fdf0.mp3", "I'd tell you what I really thing about you, but then I'd have to use short.. little words to make sure you can grasp what I'm saying.", "glare", 1121721077, 4276284783)
                            elseif spawnRace == WOOD_ELF then
	                            local check = math.random(1,2) 
	                           	    if check == 1 then
                                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gm_2fa5fd3b.mp3", "We'll have to get together for a goblet of wine soon.  Your treat!", "agree", 2999782150, 334868042)
                                    elseif check == 2 then
                                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gm_876eb977.mp3", "I wish I had good ol' days to remember like you do...  Oh well, best to worry about today and not yesterday!", "shrug", 918037021, 185336532)
                                    end
		          	        else
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
					                PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_15163426.mp3", "You talk to strangers?  What's the purpose of that?", "shrug", 1620470786, 1752689340)
                                    elseif check == 2 then	
					                PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_c91da8a3.mp3", "I have nothing to say to you right now.", "no", 2888703527, 1699968860)
				       		        end                   
		                    end
                        elseif choice == 2 then	
					    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_15163426.mp3", "You talk to strangers?  What's the purpose of that?", "shrug", 1620470786, 1752689340)
                        elseif choice == 3 then	
					    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_c91da8a3.mp3", "I have nothing to say to you right now.", "no", 2888703527, 1699968860)
                        end                        				    
				    end 
                end end         
				elseif EVIL then
	           end
	   		    		
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
				    local choice = math.random(1,3)                         
                        if choice == 1 then	
	                   	PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_hail_gf_817ed115.mp3", "Sometimes you have to take what you want.", "nod", 235476376, 378561265)
                        elseif choice == 2 then	                        
	                  	PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_hail_gf_3f18f86f.mp3", "Freeport has everything you could want: intrigue, murder, and greed!", "hello", 5269968, 3778619854)
                        elseif choice == 3 then				        
                            if spawnRace == DARKELF then
		                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_darkelf_gf_b7243656.mp3", "Get out of here, before I get a few friends and teach you whose turf this is!", "threaten", 1591785045, 2161856385)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_erudite_gf_ba79a909.mp3", "Good day.  Hope you're not planning any experiments around here today.", "hello", 324880456, 63443987)
                            elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "", "I've never met a dwarf before. Is it true they're stupid? ", "stare", 0, 0)
                            elseif spawnRace == IKSAR then
	                	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_iksar_gf_a25f2702.mp3", "Okay, scales.  I don't need luggage right now.", "no", 3274806092, 49060946)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_ogre_gf_b1767583.mp3", "You'd think the overlord would have more taste than to let giants in the city!", "sniff", 4005582689, 2179058353)
                            elseif spawnRace == RATONGA then
	                   	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_ratonga_gf_9f5502a.mp3", "Where have your sneaky fingers been today?  Hopefully not in my pocket.", "ponder", 3377223212, 405360644)
                            elseif spawnRace == TROLL then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_troll_gf_60575245.mp3", "Trolls have to be the most brutish and nasty creatures ever!", "scold", 3572118052, 1252514790)
                            elseif spawnRace == WOODELF then
					        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_woodelf_gf_15785897.mp3", "Hmph, I came to Freeport to get away from your kind.", "glare", 3646199817, 3971791216)
                            else
                           	    local check = math.random(1,2)
                                if check == 1 then	
	                   	        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_hail_gf_817ed115.mp3", "Sometimes you have to take what you want.", "nod", 235476376, 378561265)
                                elseif check == 2 then	                        
	                  	        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_hail_gf_3f18f86f.mp3", "Freeport has everything you could want: intrigue, murder, and greed!", "hello", 5269968, 3778619854)
                                end
				            end
				        end
		            end
		        end end
				elseif GOOD then
		    		if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")		    		    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				        if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")   
			    local choice = math.random(1,3)
			        if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gf_c91da8a3.mp3", "I have nothing to say to you right now.", "no", 2086714174, 1576219530)
			        elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gf_15163426.mp3", "You talk to strangers?  What's the purpose of that?", "confused", 3457658686, 921014902)
				    elseif choice == 3 then
                            if spawnRace == WOODELF then
					        PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gf_1f97d15c.mp3", "May your life be filled with the green of trees and your heart be filled with...uh' hope!", "agree", 1410070569, 2067586254)
                            end
                        else
                             
			        local choice = math.random(1,2)
			        if choice == 1 then
				    PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gf_c91da8a3.mp3", "I have nothing to say to you right now.", "no", 2086714174, 1576219530)
			        elseif choice == 2 then
				    PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gf_15163426.mp3", "You talk to strangers?  What's the purpose of that?", "confused", 3457658686, 921014902)
				    end
				    end
		        end
	        end	
	    end
	end end
	
	    elseif race == HALFLING then
			if gender == MALE then
		       if Qfaction < 0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")		           
                        FactionCheckingCallout(NPC, Spawn, faction)
                    end
                else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")                        
			    	local choice = math.random(1,3)
	                    if choice == 1 then --racial check
	                        if spawnRace == BARBARIAN then
					        PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_barbarian_gm_6bb8a4bc.mp3", "I bet your tired of folks asking you how the weather is, huh?", "agree", 19411750, 160006957)
                            elseif spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_darkelf_gm_222dadcd.mp3", "You can food some of the fools some of the time, but you can't fool me!  I know what your kind does.  Stay away!", "sulk", 303174091, 2376469392)
	                        elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_dwarf_gm_578eaf5f.mp3", "If only my armor looked as sturdy as yours.  Oh well, it works!", "shrug", 1478411764, 638148930)
	                        elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_erudite_gm_3d71f09c.mp3", "For thinking their so intelligent, why do Erudites always talk down to me like I'm a child?  Don't they know a halfling when they see one?", "confused", 245912432, 2955433596)
                                                   
                            elseif spawnRace == GNOME then
	                            local check = math.random(1,2) 
	                           	    if check == 1 then					       
					                PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_gnome_gm_461d7cf0.mp3", "The next foozlebit I find is yours.  I promise", "nod", 3669283075, 3068866259)
                                    elseif check == 2 then
					                PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_gnome_gm_94bf9271.mp3", "Have you considered making an ale-tanker that never empties?  That's a worthy project!", "smile", 1657569571, 2283552256)
                                    end                                    
                            elseif spawnRace == HALFLING then
                                if GetLevel(Spawn) >=50 then	                            
	                            local check = math.random(1,4) 
                                else	                            
	                            local check = math.random(1,2) 
	                           	    if check == 1 then					       
					                PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_halfling_gm_319ec8e8.mp3", "One day, we will raise our tankards in Rivervale!", "smile", 3669283075, 3068866259)
                                    elseif check == 2 then
					                PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_halfling_gm_4a75dace.mp3", "That was some joke you told the other day! I'm still laughing over it!", "chuckle", 4080228661, 501342601)
                                    elseif check == 3 then
					                PlayFlavor(NPC, "", "There are few halflings as big as you are.  Well, not that you're big, size-wise, but you know...you got a big reputation!", "hello", 0, 0)
                                    elseif check == 4 then
					                PlayFlavor(NPC, "", "May the fur on your feet be as thick and lustrous as the Misty Thicket.", "bow", 0, 0, Spawn)
                                    end
                                end
                            elseif spawnRace == HIGH_ELF then
					        PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_highelf_gm_d3c11717.mp3", "You haven't heard anything new about the Misty Thicket, have you?  You let me know if you ever do.", "nod", 3019874910, 687397338)
                            elseif spawnRace == HUMAN then
					        PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_human_gm_c1a5bf5.mp3", "Just want you to know that I had nothing to do with that barstool collapsing underneath you the other day.  Honest!", "no", 2399290871, 3286868646)
                            elseif spawnRace == KERRA then
					        PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_kerra_gm_278d86ce.mp3", "Hey!  How's the weather up there?", "wave", 3541643798, 2984564758)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_ogre_gm_7f74bec4.mp3", "If you come any closer I'll kick you so hard in the shins you won't know today from tomorrow!", "glare", 1688273886, 2141431401)
                            elseif spawnRace == TROLL then
					        PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_ogre_gm_7f74bec4.mp3", "If you come any closer I'll kick you so hard in the shins you won't know today from tomorrow!", "glare", 1688273886, 2141431401)
                            elseif spawnRace == WOOD_ELF then
                             PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_woodelf_gm_b160d4db.mp3", "You must miss home, too, huh?  I've never seen it myself, but I wish I could return to Rivervale.", "sigh", 3826858900, 561795809)                                    
		          	        else
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
					                PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_hail_gm_34b03729.mp3", "I'm sure we've met some place before.  You look so familiar!", "ponder", 1550233671, 4104979611)
                                    elseif check == 2 then	
					                PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_hail_gm_74b0fd50.mp3", "A good joke deserves a good audiance I always say.", "agree", 95315026, 2602312757)
				       		        end                   
		                    end
                        elseif choice == 2 then	
					    PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_hail_gm_34b03729.mp3", "I'm sure we've met some place before.  You look so familiar!", "ponder", 1550233671, 4104979611)
                        elseif choice == 3 then	
					    PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_hail_gm_74b0fd50.mp3", "A good joke deserves a good audiance I always say.", "agree", 95315026, 2602312757)
                        end                        				    
				    end 
                end end
		elseif gender == FEMALE then
 --[[           if Qfaction <0 then
 			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")
            	local choice = math.random(1,2)			      
		        if choice == 1 then
		        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_5afcbd03.mp3", "The streets aren't safe with your kind upon them!", "point", 3071247604, 671588271)
                elseif choice == 2 then
		        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 1040511037, 3422590702)
                end
                end
            else
	PlayFlavor(NPC, "voiceover/english/optional2/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_gnome_gf_8e6f2cee.mp3", "What're you working on now, hmm?  Hope this one works out!", "", 1396523759, 1857436654)
 ]]--
	    end
    		
		elseif race == HIGH_ELF then
			if gender == MALE then
			elseif gender == FEMALE then
			    if Qfaction < 0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			        
                        FactionCheckingCallout(NPC, Spawn, faction)
                        end
                else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")                        
			    	local choice = math.random(1,3)
	                    if choice == 1 then --racial check
	                        if spawnRace == BARBARIAN then
					        PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_barbarian_gf_76f6ec06.mp3", "I'm sure that even you can see the wisdom of obeying Tunare's chosen.", "nod", 1508778688, 725247692)
                            elseif spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_darkelf_gf_66ed5b18.mp3", "This is an outrage!  A Tier'Dal has no place in Qeynos, or set foot and disgrace anything Tunare has graced us with!", "threaten", 3028248049, 1876789572)
	                        elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_dwarf_gf_35729e65.mp3", "No, I won't go out for a dwarven ale with you.  Elven wine tastes better anyway.", "no", 266246440, 1778311218)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_erudite_gf_cfbdf659.mp3", "That ensom' is quite becoming to you.  Almost as good as my own.", "agree", 1652655342, 62284543)
                            elseif spawnRace == GNOME then
					        PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_gnome_gf_6a2b567f.mp3", "Your little gears and gizmos are amusing, but I have no interest in them.", "no", 667401607, 3295814491)
                            elseif spawnRace == HALF_ELF then
                            PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_halfelf_gf_1635ab67.mp3", "Hmm.  By the look in your eyes you had potentional, but one of your parents made a poor choice in life.", "nod", 3335501764, 2059212963)
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_halfling_gf_d4e1c221.mp3", "I'm sure it will be a glad day when you return to Misty Thicket.", "hello", 1880520908, 1662106306)
                            elseif spawnRace == HIGH_ELF then
				                if GetLevel(Spawn) >=50 then
				                local choice = math.random(1,4)
				                else
	                            local check = math.random(1,2) 
	                           	    if check == 1 then
                                    PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_highelf_gf_601050b5.mp3", "May Tunare's blessings be with you and yours.", "hello", 781331093, 1715342825)
                                    elseif check == 2 then
                                    PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_highelf_gf_b32f3d7a.mp3", "I am pleased to see other Koad'Dal trying to keep up with this wretched neighborhood.", "agree", 235834078, 3543793461)
                                    elseif check == 3 then
                                    PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_status_gf_1a72199d.mp3", "You're a credit to all Koad'Dal.  With your example, Qeynos will see the Koad'Dal as true born leaders.", "thank", 2790557627, 1438660086)
                                    elseif check == 4 then
                                    PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_status_gf_c7ce30ef.mp3", "Tunare's blessings are upon you, and those fortunate enough to know you.", "curtsey", 2875458290, 576573838)
                                    end
                                end
                            elseif spawnRace == HUMAN then
					        PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_human_gf_6cb03b0e.mp3", "Qeynos has not even a shadow of the beauty of Felwithe.  Still, one makes due with what one has.", "no", 2082586119, 191034265)
                            elseif spawnRace == KERRA then
					        PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_kerra_gf_1c61c938.mp3", "I am not interested in fish, so please do not mention them to me.", "no", 222560408, 2184277903)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_ogre_gf_271cba3d.mp3", "This abomination of Rallos Zek has no place corrupting what Tunare has graced us with.", "glare", 4177832537, 1219231619)
                            elseif spawnRace == WOOD_ELF then
                            PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_woodelf_gf_f474672e.mp3", "I see you're on an errand.  Please don't linger.  There is much work to do around here.", "nod", 597450761, 585294431)
		          	        else
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
					                PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_hail_gf_910f06b6.mp3", "Tunare blesses those who are faithful, and trusts in her return.", "nod", 2463890902, 2461742088)
                                    elseif check == 2 then	
					                PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_hail_gf_1acc6fa6.mp3", "May your eyes be opened to the truths of Tunare's teachings.", "hello", 1915577851, 591578054)
				       		        end                   
		                    end
                        elseif choice == 2 then	
					    PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_hail_gf_910f06b6.mp3", "Tunare blesses those who are faithful, and trusts in her return.", "nod", 2463890902, 2461742088)
                        elseif choice == 3 then
					    PlayFlavor(NPC, "voiceover/english/highelf_eco_race_good/ft/eco/good/highelf_eco_race_good_hail_gf_1acc6fa6.mp3", "May your eyes be opened to the truths of Tunare's teachings.", "hello", 1915577851, 591578054)
                        end                        				    
				    end 
	    	    end
		    end end
		    
		elseif race == HUMAN then
			if gender == MALE then
			   if EVIL then
--[[			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_55c7abb4.mp3", "If you know what's good for ya, you didn't see anything!", "shakefist", 3295550745, 254450600)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_8d2a0876.mp3", "That look's like an awfully expensive pair of boots there, my friend.", "ponder", 367255988, 2113438867)
				        end
				    else  			        
	                 end]]--  	
				elseif GOOD then
                    if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			        
                        FactionCheckingCallout(NPC, Spawn, faction)
                        end
                    else
				    if CalloutTimeCheck == false then
				        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    
			            local choice = math.random(1,3)
	                    if choice == 1 then --racial check
                            if spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_darkelf_gm_4cac7ca.mp3", "Don't think for a momment that your citizenship makes you faithful to Qeynos.  After all, you did betray another city.  What's stopping you from doing it again?", "no", 615873384, 2926864365)
	                        elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_dwarf_gm_44f15fd2.mp3", "Dwarven ale has such renown.  You don't happen to be carrying any with you, do you?  No?  A pitty.", "agree", 2950701844, 1531526080)
                            elseif spawnRace == ERUDITE then
			    	        local check = math.random(1,2)
			    	            if check == 1 then
					            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_erudite_gm_1c69f98b.mp3", "Perhaps we can sit down sometime and you can explain your theories about the shattering.", "ponder", 4035108881, 4044779070)
                                elseif check == 2 then
					            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_erudite_gm_9c9b3637.mp3", "If I'm in trouble, I can think of no better ally than someone like you.", "nod", 2515502310, 2808975526)
                                end
                            elseif spawnRace == FROGLOK then
	                	    PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_froglok_gm_b1da0602.mp3", "Hail to you, short and shiny one!", "hello", 2380925828, 15459918)
                            elseif spawnRace == GNOME then
                		    PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_gnome_gm_a777615.mp3", "I wish I knew what some of these new-fangled gnomish inventions are meant to do.", "confused", 1410161766, 2130476086)
                            elseif spawnRace == HALF_ELF then
                            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_halfelf_gm_a64c49f5.mp3", "Its a great day to be alive and to be in Qeynos.", "nod", 2240799501, 2229977030)
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_halfling_gm_266398e9.mp3", "I'm curious as to why you halflings are always so cheerful!  Mystified actually.", "confused", 51041711, 4113386184)
                            elseif spawnRace == HIGH_ELF then
                		    PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_highelf_gm_a4ddebdc.mp3", "A good day in Qeynos always beats a bad day anywhere else.", "nod", 2563785575, 2973629845)
                            elseif spawnRace == HUMAN then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_human_gm_50fe5858.mp3", "Hail to you.  Its a great day to be alive!", "hello", 3039434817, 1919768022)
                            elseif spawnRace == KERRA then
			    	        local check = math.random(1,2)
			    	            if check == 1 then
					            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_kerra_gm_ba79272a.mp3", "Fishings a great past time, isn't it?  I make time for it whenever I can.", "agree", 1391107838, 2580038902)
                                elseif check == 2 then
					            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_kerra_gm_e2ea62ed.mp3", "Always a pleasure to chat with one of the Kerra.", "nod", 2870132986, 278432843)
                                end
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_ogre_gm_bed8b1f1.mp3", "Ogres were made for war.  What could you possibly want within the peaceful walls of Qeynos?", "confused", 1887161829, 1585646853)
                            elseif spawnRace == TROLL then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_troll_gm_fdd12de.mp3", "You forgot to leave your stink at the swamp.  Keep it there and don't come back, troll!", "stinky", 1224786635, 2939340176)
                            elseif spawnRace == WOOD_ELF then
                		    PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_woodelf_gm_2ab5b9e2.mp3", "I wish I had the ability to keep the plants in my home happy.", "agree", 2624412872, 2478031045)
		          	        else
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
	                	            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gm_837968a9.mp3", "Oh, my aching back!  As good a time to stop and chat as any, I say.", "yawn", 3270846909, 2717985314)
                                    elseif check == 2 then	
                		            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gm_2d0e8823.mp3", "Almost time to stop and have an ale, isn't it?", "wink", 1106325239, 2982056892)
				       		        end                   
		                    end
                        elseif choice == 2 then	
	                	PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gm_837968a9.mp3", "Oh, my aching back!  As good a time to stop and chat as any, I say.", "yawn", 3270846909, 2717985314)
                        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gm_2d0e8823.mp3", "Almost time to stop and have an ale, isn't it?", "wink", 1106325239, 2982056892)
                        end                        				    
				    end 
                end 
            end
            end
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
				        local choice = math.random(1,3)                         
                        if choice == 1 then	
                        PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_hail_gf_93dc38d4.mp3", "Oh drat, I hope not.  Oh, sorry I thought you meant the weather.", "doh", 1692525966, 615682275)		                
                        elseif choice == 2 then	                        
	                	PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_hail_gf_1e51f755.mp3", "Yes yes, hello.  I'm busy", "no", 4117973487, 2991449240)
                        elseif choice == 3 then				        
                            if spawnRace == BARBARIAN then
                    		PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_barbarian_gf_8a05c752.mp3", "Well met.", "hello", 1804359163, 3445708894)
                            elseif spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_darkelf_gf_7231fda9.mp3", "You thought you were so superior and look who you come to for protection when things got rough.", "curse", 3384843872, 927025109)
                            elseif spawnRace == DWARF then
                    		PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_dwarf_gf_6be68ccb.mp3", "Well, I'll be. I wonder who you had to beg to get in here.", "ponder", 113434539, 1141319850)
                            elseif spawnRace == ERUDITE then
	                	    PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_erudite_gf_8d65fed9.mp3", "Smart or not, you're in Freeport now!", "chuckle", 1504953508, 3033375455)
                            elseif spawnRace == GNOME then
		                    PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_gnome_gf_f26215e6.mp3", "Stay away from the ogres, runt.", "stare", 982522108, 3440948860)
                             elseif spawnRace == HALF_ELF then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_halfelf_gf_5b7295ad.mp3", "Half right, half wrong.", "glare", 3509473675, 545362230)
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "", "I can think of a few words for you other than halfling.", "threaten", 0, 0)
                            elseif spawnRace == HIGH_ELF then
                    		PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_highelf_gf_54eddabb.mp3", "Elf, get out of my way before I call the guards on you.", "sneer", 3958771785, 212811507)
                            elseif spawnRace == HUMAN then
                                local check = math.random(1,2)
                                if check == 1 then
                                PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_human_gf_6aae649e.mp3", "Grim determination has gotten us where we are now.", "agree", 4149109940, 4022423716)		                
                                elseif check ==2 then
                        		PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_hail_gf_93dc38d4.mp3", "Oh, drat, I hope not. Oh, sorry, I thought you might have meant the weather.", "confused", 1692525966, 615682275)
                            end 
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_iksar_gf_ba328394.mp3", "Fine day for a slither, eh?", "sneer", 505153156, 1070642363)
                            elseif spawnRace == OGRE then
	                	    PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_ogre_gf_e3b4ada3.mp3", "Back off, brute!", "glare", 3484150960, 3962798795)
                            elseif spawnRace == RATONGA then
                            PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_ratonga_gf_88d48574.mp3", "A good rat is a dead rat.  Good thing you're not really a rat, eh?", "glare", 1375823265, 2740011522)		                
                            elseif spawnRace == TROLL then
	                	    PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_troll_gf_a1817140.mp3", "I can't think of a way you could get uglier.", "shrug", 1476180483, 3762815491)
                                                    
                            else
                           	    local check = math.random(1,2)
                                if check == 1 then	
                                PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_hail_gf_93dc38d4.mp3", "Oh drat, I hope not.  Oh, sorry I thought you meant the weather.", "doh", 1692525966, 615682275)		                
                                elseif check == 2 then	                        
	                	        PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_hail_gf_1e51f755.mp3", "Yes yes, hello.  I'm busy", "no", 4117973487, 2991449240)
                                end
				            end
				        end
                     end
                 end end
				elseif GOOD then
				    if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")				        
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
			    	local choice = math.random(1,3)
	                    if choice == 1 then --racial check
                            if spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_darkelf_gf_4cac7ca.mp3", "Don't think for a momment that your citizenship makes you faithful to Qeynos.  After all, you did betray another city.  What's stopping you from doing it again?", "no", 615873384, 2926864365)
	                        elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_dwarf_gf_44f15fd2.mp3", "Dwarven ale has such renown.  You don't happen to be carrying any with you, do you?  No?  A pitty.", "agree", 2950701844, 1531526080)
                            elseif spawnRace == ERUDITE then
			    	        local check = math.random(1,2)
			    	            if check == 1 then
					            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_erudite_gf_1c69f98b.mp3", "Perhaps we can sit down sometime and you can explain your theories about the shattering.", "ponder", 4035108881, 4044779070)
                                elseif check == 2 then
					            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_erudite_gf_9c9b3637.mp3", "If I'm in trouble, I can think of no better ally than someone like you.", "nod", 2515502310, 2808975526)
                                end
                            elseif spawnRace == FROGLOK then
	                	    PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_froglok_gf_b1da0602.mp3", "Hail to you, short and shiny one!", "hello", 2380925828, 15459918)
                            elseif spawnRace == GNOME then
                		    PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_gnome_gf_a777615.mp3", "I wish I knew what some of these new-fangled gnomish inventions are meant to do.", "confused", 1410161766, 2130476086)
                            elseif spawnRace == HALF_ELF then
                            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_halfelf_gf_a64c49f5.mp3", "Its a great day to be alive and to be in Qeynos.", "nod", 2240799501, 2229977030)
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_halfling_gf_266398e9.mp3", "I'm curious as to why you halflings are always so cheerful!  Mystified actually.", "confused", 51041711, 4113386184)
                            elseif spawnRace == HIGH_ELF then
                		    PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_highelf_gf_a4ddebdc.mp3", "A good day in Qeynos always beats a bad day anywhere else.", "nod", 2563785575, 2973629845)
                            elseif spawnRace == HUMAN then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_human_gf_50fe5858.mp3", "Hail to you.  Its a great day to be alive!", "hello", 3039434817, 1919768022)
                            elseif spawnRace == KERRA then
			    	        local check = math.random(1,2)
			    	            if check == 1 then
					            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_kerra_gf_ba79272a.mp3", "Fishings a great past time, isn't it?  I make time for it whenever I can.", "agree", 1391107838, 2580038902)
                                elseif check == 2 then
					            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_kerra_gf_e2ea62ed.mp3", "Always a pleasure to chat with one of the Kerra.", "nod", 2870132986, 278432843)
                                end
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_ogre_gf_bed8b1f1.mp3", "Ogres were made for war.  What could you possibly want within the peaceful walls of Qeynos?", "confused", 1887161829, 1585646853)
                            elseif spawnRace == TROLL then
					        PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_troll_gf_fdd12de.mp3", "You forgot to leave your stink at the swamp.  Keep it there and don't come back, troll!", "stinky", 1224786635, 2939340176)
                            elseif spawnRace == WOOD_ELF then
                		    PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_woodelf_gf_2ab5b9e2.mp3", "I wish I had the ability to keep the plants in my home happy.", "agree", 2624412872, 2478031045)
		          	        else
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
	                	            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gf_837968a9.mp3", "Oh, my aching back!  As good a time to stop and chat as any, I say.", "yawn", 3270846909, 2717985314)
                                    elseif check == 2 then	
                		            PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gf_2d0e8823.mp3", "Almost time to stop and have an ale, isn't it?", "wink", 1106325239, 2982056892)
				       		        end                   
		                    end
                        elseif choice == 2 then	
	                	PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gf_837968a9.mp3", "Oh, my aching back!  As good a time to stop and chat as any, I say.", "yawn", 3270846909, 2717985314)
                        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gf_2d0e8823.mp3", "Almost time to stop and have an ale, isn't it?", "wink", 1106325239, 2982056892)
                        end                        				    
				    end 
	    	    end
            end
        end end
        
		elseif race == IKSAR then
			if gender == MALE then
		    elseif gender == FEMALE then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
                        if choice == 1 then	
            		    PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_hail_gf_5cacd110.mp3", "If you need help, please find someone who'll provide it.", "shrug", 529474944, 2390194258)
                        elseif choice == 2 then	                        
            		    PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_hail_gf_c15f0740.mp3", "Welcome. We greet you.", "yawn", 3949639532, 268039246)
                        elseif choice == 3 then				        
				            if spawnRace == BARBARIAN then
					        PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_barbarian_gf_1b2797ab.mp3", "The cold has stunted the growth of your brain!", "sneer", 3424128666, 3850388487)
                            elseif spawnRace == DARK_ELF then
	            	        PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_darkelf_gf_41fe94ed.mp3", "We share a similar fate -- cast from our homes by the destruction of our world.", "hello", 735434566, 2925685625)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_erudite_gf_323e7792.mp3", "Did Erud take the name because of its meaning, or were his parents full of themselves?", "ponder", 3710722032, 2229599390)
                            elseif spawnRace == HALF_ELF then
					        PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_halfelf_gf_e12939e8.mp3", "Half a man is a cripple.  What does that make half an elf?", "leer", 1091603440, 2898728412)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_ogre_gf_59b86284.mp3", "The will of Thule was too great for the armies of Zek to overcome.", "agree", 2467592637, 1333596797)
                            elseif spawnRace == RATONGA then
            		        PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_ratonga_gf_d01ccae8.mp3", "I wonder where you have come from... so little history to draw on.", "ponder", 3355738899, 1187010903)
                            else
                           	    local check = math.random(1,2)
                                if choice == 1 then	
            		            PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_hail_gf_5cacd110.mp3", "If you need help, please find someone who'll provide it.", "shrug", 529474944, 2390194258)
                                elseif choice == 2 then	                        
            		            PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_hail_gf_c15f0740.mp3", "Welcome. We greet you.", "yawn", 3949639532, 268039246)
                                end
				            end
				        end
			        end
			    end
            end end
        
		elseif race == KERRA then
			if gender == MALE then
			    if EVIL then
				elseif GOOD then
			        if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			            
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
			    	local choice = math.random(1,3)
	                    if choice == 1 then
                            if spawnRace == BARBARIAN then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_barbarian_gm_8290c6e8.mp3", "You have come a long way from your ancestral home too.  A long way indeed.", "agree", 4018981440, 1643885933)
                            elseif spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_darkelf_gm_25d2fdb8.mp3", "You're no better than the Erudites who talk about knowledge and learning, but no nothing but hatered and cruelty.", "no", 148704174, 3686564179)
	                        elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_dwarf_gm_24fd4d98.mp3", "I don't understand the dwarven need for fermented beverages, yet some of these drinks are rather tasty.  Are they not?", "confused", 3919208441, 3280982158)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_erudite_gm_883036a.mp3", "Erudites will pay one day for what they did to the Kerra.  One day, and may I live to see it.", "glare", 2668074718, 3463788086)
                            elseif spawnRace == GNOME then
                    	    PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_gnome_gm_5efa2600.mp3", "You make my tail twitch with all your cogs and flizgigs.  Please, keep those away from me.", "agree", 749990561, 792243248)
                            elseif spawnRace == HALF_ELF then
                            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_halfelf_gm_55a42c98.mp3", "You understand somewhat how the Kerra feel.  You can not deny it.  Its in your blood.", "nod", 346671646, 3345517623)
                            elseif spawnRace == HIGH_ELF then
                    	    PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_highelf_gm_d5455b09.mp3", "Good leaders bide their time, planning all the while.  I'm sure you already know this.", "nod", 436143932, 678449819)
                            elseif spawnRace == HUMAN then
			    	        local check = math.random(1,2)
			    	            if check == 1 then
					            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_human_gm_1e5f4af6.mp3", "If only you did not shave so often.  You too would have a luxurious coat!", "agree", 1334867520, 1335322677)
                                elseif check == 2 then
					            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_human_gm_6692f65a.mp3", "Fishings not for everyone, but those who try it do enjoy it!", "nod", 905168936, 90990383)
                                end                            
                            elseif spawnRace == KERRA then
			    	        local check = math.random(1,2)
			    	            if check == 1 then
					            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_kerra_gm_51feb046.mp3", "We should fish together sometime and share our catch with the tribe.", "agree", 3170951601, 1187001972)
                                elseif check == 2 then
					            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_kerra_gm_8320096d.mp3", "Your tail stands proudly, and it should no matter where we Kerra find ourselves.", "nod", 2636110079, 1949408393)
                                end
                            elseif spawnRace == WOOD_ELF then
                		    PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_woodelf_gm_8f0d8228.mp3", "The woods can close in upon one, but I guess there is solitude.  But at what price to one's health?", "shrug", 4081298696, 427834832)
		          	        else
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
                    	            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gm_925a7b74.mp3", "Give me the simplicity of life as the kerra once knew it, and I'll be satisfied.", "agree", 1811725102, 1170705631)
                                    elseif choice == 2 then	
                    	            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gm_ca779c92.mp3", "I would like nothing better than to be with my pride, away from the bustle of any town.", "sigh", 2727630899, 2583820258)
				       		        end                   
		                    end
                        elseif choice == 2 then	
                    	PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gm_925a7b74.mp3", "Give me the simplicity of life as the kerra once knew it, and I'll be satisfied.", "agree", 1811725102, 1170705631)
                        elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gm_ca779c92.mp3", "I would like nothing better than to be with my pride, away from the bustle of any town.", "sigh", 2727630899, 2583820258)
                        end                        				    
				    end 
	    	    end
            end				    
		end
			
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
				        FaceTarget(NPC,Spawn)
		                AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
                	local choice = math.random(1,4)
                        if choice == 1 then	
            		    PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_hail_gf_58cce444.mp3", "One day we shall be free in a place of our own once more.", "nod", 3011266241, 3121212413)
                        elseif choice == 2 then	                        
            		    PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_hail_gf_a209154b.mp3", "Can you see the beauty of the open plains?", "ponder", 2343521783, 3494299507)
                        elseif choice == 3 then				        
                            if spawnRace == DARK_ELF then
	            	        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_darkelf_gf_894e5eba.mp3", "How can you stand living underground for so long?", "confused", 498890951, 482556555)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_erudite_gf_18e1ff6e.mp3", "All that has befallen our race can be traced back to your meddling!", "glare", 528136904, 1889578488)
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_iksar_gf_dbafbc9c.mp3", "An empire built on the backs of others is not something I'd brag about.", "shame", 909919632, 1775447018)
                            elseif spawnRace == KERRA then
                           	    local check = math.random(1,2)
                                if choice == 1 then	
            		            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_kerra_gf_4622b2e3.mp3", "Stay away from the Eruidites.  They have much up their lying sleeves.", "no", 2227913042, 3084375803)
                                elseif choice == 2 then	                        
            		            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_kerra_gf_eee737f6.mp3", "Greetings to you my friend!", "hello", 2721382427, 289310078)
                                end                            
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_ogre_gf_88a90aba.mp3", "We respect those with the might to carve out their own niche.", "nod", 1618351055, 3981917052)
                            elseif spawnRace == RATONGA then
            		        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_ratonga_gf_35221ef9.mp3", "Get that rat!", "threaten", 2643882472, 2295977191)
                            else
                           	    local check = math.random(1,2)
                                if choice == 1 then	
            		            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_hail_gf_58cce444.mp3", "One day we shall be free in a place of our own once more.", "nod", 3011266241, 3121212413)
                                elseif choice == 2 then	                        
            		            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_evil/ft/eco/evil/kerra_eco_race_evil_hail_gf_a209154b.mp3", "Can you see the beauty of the open plains?", "ponder", 2343521783, 3494299507)
                                end
				            end
				        end
		            end
		        end end
				elseif GOOD then
                    if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
				        FaceTarget(NPC,Spawn)
		                AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)

			        end
		        else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")  		            
			    	local choice = math.random(1,3)
                         if choice == 1 then	
                            if spawnRace == BARBARIAN then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_barbarian_gf_8290c6e8.mp3", "You have come a long way from your ancestral home too.  A long way indeed.", "agree", 4018981440, 1643885933)
                            elseif spawnRace == DARK_ELF then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_darkelf_gf_25d2fdb8.mp3", "You're no better than the Erudites who talk about knowledge and learning, but no nothing but hatered and cruelty.", "no", 148704174, 3686564179)
	                        elseif spawnRace == DWARF then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_dwarf_gf_24fd4d98.mp3", "I don't understand the dwarven need for fermented beverages, yet some of these drinks are rather tasty.  Are they not?", "confused", 3919208441, 3280982158)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_erudite_gf_883036a.mp3", "Erudites will pay one day for what they did to the Kerra.  One day, and may I live to see it.", "glare", 2668074718, 3463788086)
                            elseif spawnRace == GNOME then
                    	    PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_gnome_gf_5efa2600.mp3", "You make my tail twitch with all your cogs and flizgigs.  Please, keep those away from me.", "agree", 749990561, 792243248)
                            elseif spawnRace == HALF_ELF then
                            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_halfelf_gf_55a42c98.mp3", "You understand somewhat how the Kerra feel.  You can not deny it.  Its in your blood.", "nod", 346671646, 3345517623)
                            elseif spawnRace == HIGH_ELF then
                    	    PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_highelf_gf_d5455b09.mp3", "Good leaders bide their time, planning all the while.  I'm sure you already know this.", "nod", 2270743009, 1129155946)
                            elseif spawnRace == HUMAN then
			    	        local check = math.random(1,2)
			    	            if check == 1 then
					            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_human_gf_1e5f4af6.mp3", "If only you did not shave so often.  You too would have a luxurious coat!", "agree", 1334867520, 1335322677)
                                elseif check == 2 then
					            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_human_gf_6692f65a.mp3", "Fishings not for everyone, but those who try it do enjoy it!", "nod", 905168936, 90990383)
                                end                            
                            elseif spawnRace == KERRA then
			    	        local check = math.random(1,2)
			    	            if check == 1 then
					            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_kerra_gf_51feb046.mp3", "We should fish together sometime and share our catch with the tribe.", "agree", 3170951601, 1187001972)
                                elseif check == 2 then
					            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_kerra_gf_8320096d.mp3", "Your tail stands proudly, and it should no matter where we Kerra find ourselves.", "nod", 2636110079, 1949408393)
                                end
                            elseif spawnRace == WOOD_ELF then
                		    PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_woodelf_gf_8f0d8228.mp3", "The woods can close in upon one, but I guess there is solitude.  But at what price to one's health?", "shrug", 4081298696, 427834832)
		          	        else
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
		                            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gf_925a7b74.mp3", "Give me the simplicity of life as the kerra once knew it, and I'll be satisfied.", "", 3093126564, 1574100386)
                                    elseif choice == 2 then	
                    	            PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gf_4ae9178a.mp3", "I would like nothing better than to be with my pride, away from the bustle of any town.", "sigh", 261206360, 3555440428)
				       		        end 
				       		        end
		              elseif check == 2 then
		              PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gf_925a7b74.mp3", "Give me the simplicity of life as the kerra once knew it, and I'll be satisfied.", "", 3093126564, 1574100386)
                      elseif choice == 3 then	
                      PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gf_4ae9178a.mp3", "I would like nothing better than to be with my pride, away from the bustle of any town.", "sigh", 261206360, 3555440428)
				       end	
	    	            end
                    end 
                end 
            end end

		
		elseif race == OGRE then
			if gender == MALE then
			elseif gender == FEMALE then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
				        local choice = math.random(1,3)                         
                        if choice == 1 then	
                        PlayFlavor(NPC, "voiceover/english/ogre_eco_race_evil/ft/eco/evil/ogre_eco_race_evil_hail_gf_9fbe09f7.mp3", "So, the Overlord is good.", "confused", 335304683, 2001194684)		                
                        elseif choice == 2 then	                        
	                	PlayFlavor(NPC, "voiceover/english/ogre_eco_race_evil/ft/eco/evil/ogre_eco_race_evil_hail_gf_ca94bf5b.mp3", "I greet you, now go.", "hello", 4258225166, 4130890842)
                        elseif choice == 3 then				        
                            if spawnRace == GNOME then
					        PlayFlavor(NPC, "voiceover/english/ogre_eco_race_evil/ft/eco/evil/ogre_eco_race_evil_gnome_gf_7e47e298.mp3", "Heuheh.  Gnome kicking is fun game.", "chuckle", 3885636543, 1639205010)
                            elseif spawnRace == OGRE then
                           	    local check = math.random(1,2)                                
                                if check == 1 then	
                                PlayFlavor(NPC, "voiceover/english/ogre_eco_race_evil/ft/eco/evil/ogre_eco_race_evil_ogre_gf_7efeea6c.mp3", "Crush your enemies!  They will whimper before you and beg for mercy!", "shakefist", 3378932907, 3321999118)		                
                                elseif check == 2 then	                        
	                	        PlayFlavor(NPC, "voiceover/english/ogre_eco_race_evil/ft/eco/evil/ogre_eco_race_evil_ogre_gf_ddcbf6a7.mp3", "One day Rallos come back!  Lead us to victory again!", "happy", 2097451931, 2711808355)
                                end                            
                            elseif spawnRace == RATONGA then
	                	    PlayFlavor(NPC, "voiceover/english/ogre_eco_race_evil/ft/eco/evil/ogre_eco_race_evil_ratonga_gf_a8084dbc.mp3", "Tiny cute thing.  Sharp teeth!", "nod", 3938312730, 2796835004)
                            elseif spawnRace == TROLL then
	                	    PlayFlavor(NPC, "voiceover/english/ogre_eco_race_evil/ft/eco/evil/ogre_eco_race_evil_troll_gf_7f4b007.mp3", "Trolls so weak.  Couldn't hold on city from little frogies!", "stare", 1181218007, 44921376)
                                                    
                            else
                           	    local check = math.random(1,2)
                                if check == 1 then	
                                PlayFlavor(NPC, "voiceover/english/ogre_eco_race_evil/ft/eco/evil/ogre_eco_race_evil_hail_gf_9fbe09f7.mp3", "So, the Overlord is good.", "confused", 335304683, 2001194684)		                
                                elseif check == 2 then	                        
	                	        PlayFlavor(NPC, "voiceover/english/ogre_eco_race_evil/ft/eco/evil/ogre_eco_race_evil_hail_gf_ca94bf5b.mp3", "I greet you, now go.", "hello", 4258225166, 4130890842)
                                end
				            end
				        end
			        end
		        end
		    end end
		    
		elseif race == RATONGA then
			if gender == MALE then
	    elseif gender == FEMALE then
	            if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")	                
                        FactionCheckingCallout(NPC, Spawn, faction)
                        end
                else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")                        
				        local choice = math.random(1,3)                         
                        if choice == 1 then	
            		    PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_hail_gf_5fe381f6.mp3", "Yes, yes, that will do nicely... err, hello, who are you?", "scheme", 3504817921, 2028500155)
                        elseif choice == 2 then	                        
	                	PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_hail_gf_bbcb85ec.mp3", "Oooh they will never suspect that.  Nooo they won't!", "giggle", 250411761, 4057906761)
                        elseif choice == 3 then				        
                            if spawnRace == DARK_ELF then
	            	        PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_darkelf_gf_12accc66.mp3", "Perhaps the dark ones will require our services in the future.", "scheme", 3576261185, 2087562403)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_erudite_gf_38dc60c0.mp3", "Smart, but don't be too impressed your mind.", "no", 2399746563, 2249174631)
                            elseif spawnRace == GNOME then
					        PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_gnome_gf_84dc137c.mp3", "Well well.  What have you tinkered today?", "giggle", 926291350, 3056078082)
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "", "Small and sneak, but not as sneaky as we!", "scheme", 0, 0)
                            elseif spawnRace == OGRE then
                            PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_ogre_gf_7d54c5f1.mp3", "Offer you a ratty back ride?!", "happy", 829028236, 3823634247)		                
                            elseif spawnRace == RATONGA then
                           	    local check = math.random(1,2)                                
                                if check == 1 then	
            		            PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_ratonga_gf_7fcc0516.mp3", "Watch for the trolls, they like to eats us!", "hello", 1635718299, 1583941867)
                                elseif check == 2 then	                        
            		            PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_ratonga_gf_95e0fb2a.mp3", "Small and fast, we go where others can't!", "nod", 362113991, 3436119366)
                                end                        
                            else
                           	    local check = math.random(1,2)
                                if check == 1 then	
            		            PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_hail_gf_5fe381f6.mp3", "Yes, yes, that will do nicely... err, hello, who are you?", "scheme", 3504817921, 2028500155)
                                elseif check == 2 then	                        
	                	        PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_hail_gf_bbcb85ec.mp3", "Oooh they will never suspect that.  Nooo they won't!", "giggle", 250411761, 4057906761)
                                end
				            end
				        end
			        end
		        end
            end end
		
		elseif race == TROLL then
			if gender == MALE then
			elseif gender == FEMALE then
			    	if FPfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			    	    
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
				        local choice = math.random(1,3)                         
                        if choice == 1 then	
            		    PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_hail_gf_417aa823.mp3", "Nasty scars and boiled tar.  Warriors is what we are!", "itch", 1257994883, 3501955854)
                        elseif choice == 2 then	                        
	                	PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_hail_gf_f491bc11.mp3", "Tasty treats, lots of meats!", "giggle", 357958006, 4074544132)
                        elseif choice == 3 then				        
                            if spawnRace == DARK_ELF then
	            	        PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_darkelf_gf_50ad1ae0.mp3", "Treat us badly in Neriak!  Hahaheh.  I laugh now we in same spot!", "chuckle", 3570765081, 2205040834)
                            elseif spawnRace == DWARF then
                    		PlayFlavor(NPC, "", "Ohh!  I remember dorf!  Mmmm, good eatin'!", "squeal", 0, 0)
                    		elseif spawnRace == ERUDITE then
		                    PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_erudite_gf_ab9e90ff.mp3", "Erudthings make good brain food! Har har har!", "ponder", 861910160, 2549513923)
                            elseif spawnRace == HIGH_ELF then
					        PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_highelf_gf_c9a250ac.mp3", "Ugh, no let elf in city!  What Overlord thinking?!?", "scream", 843646358, 1901406684)
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "", "Small, but nice and fatty!", "giggle", 0, 0, Spawn)
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_iksar_gf_7b479161.mp3", "Reptile scales bring death wails!  Heharhar!", "giggle", 1217810742, 1063262246)
                            elseif spawnRace == OGRE then
                            PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_ogre_gf_b1f3691c.mp3", "Not mess with you, not mess with me!", "no", 1032294332, 3970520281)		                
                            elseif spawnRace == RATONGA then
            		        PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_ratonga_gf_bf61205a.mp3", "Scampering thing that eat my feet make tasty treat?!", "scheme", 344548094, 1299530652)
                            elseif spawnRace == TROLL then
					        PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_troll_gf_43775dc6.mp3", "Curses to those who keep us here!", "cackle", 3968048606, 2214308174)
                            else
                           	    local check = math.random(1,2)
                                if check == 1 then	
            		            PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_hail_gf_417aa823.mp3", "Nasty scars and boiled tar.  Warriors is what we are!", "itch", 1257994883, 3501955854)
                                elseif check == 2 then	                        
	                	        PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_hail_gf_f491bc11.mp3", "Tasty treats, lots of meats!", "giggle", 357958006, 4074544132)
                                end
				            end
				        end
			        end
    		     end
			end end  
			
		elseif race == WOOD_ELF then
			if gender == MALE then
			elseif gender == FEMALE then
			        if Qfaction <0 then
			    	    if FactionCalloutTimeCheck == false then 
			            FactionCalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,8000,"ResetFactionCalloutTimer")			            
                        FactionCheckingCallout(NPC, Spawn, faction)
				        end
				    else
				    if CalloutTimeCheck == false then
                        if math.random(1, 100) <= 20 then
                        CalloutTimeCheck = true
			            FaceTarget(NPC,Spawn)
			            AddTimer(NPC,30000,"ResetCalloutTimer")    				        
			    	local choice = math.random(1,3)
	                    if choice == 1 then --racial check
	                        if spawnRace == BARBARIAN then
	                	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_barbarian_gf_91218875.mp3", "The weather would be much more pleasant if there were more trees around here.", "nod", 3303336281, 3062841711)
                            elseif spawnRace == DARK_ELF then
                		    PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_darkelf_gf_894a567a.mp3", "The Feir`Dal will not let this traitor of the elven race reside within these city walls. Expect no more than a short welcome here.", "no", 26640370, 1478096414)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_erudite_gf_99a1b907.mp3", "Do those runes... hurt?  They're unlike anything I've seen before!", "ponder", 1448423473, 1062251762)
                            elseif spawnRace == GNOME then
					        PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_gnome_gf_2a8ece39.mp3", "No, I haven't got a foozle-whiket or whatever it is you're looking for.", "no", 1459338554, 1146648406)
                            elseif spawnRace == HALF_ELF then
	                           	local check = math.random(1,2) 
	                           	    if check == 1 then
                		            PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_halfelf_gf_2474b915.mp3", "Let us meet later for a goblet of wine!  I'm sure you have great tales to tell.", "hello", 2915398014, 2744924447)
                                    elseif check == 2 then
                		            PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_halfelf_gf_eb3acf89.mp3", "I don't understand the need for piercings, but they look fine on you.", "agree", 1366742481, 2195063196)
                                end                            
                            elseif spawnRace == HALFLING then
					        PlayFlavor(NPC, "", "I miss the woods too, little one.  I miss them too.", "", 0, 0)
                            elseif spawnRace == HIGH_ELF then
					        PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_highelf_gf_51612aae.mp3", "Yes, I'm keeping busy.  Thank you for asking.  May Tunare bless your family.", "hello", 4258351464, 2283092283)
                            elseif spawnRace == HUMAN then
					        PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_human_gf_ddb65e92.mp3", "You could not know what it is like to lose your home.  You can try, but you cannot know.", "sad", 2761844849, 523697528)
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_iksar_gf_751af14.mp3", "Stay away from me!  I will have nothing to do with one who has turned on his own kind!", "wince", 2630410413, 658432755)
                            elseif spawnRace == KERRA then
					        PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_kerra_gf_9b0b8b2.mp3", "I've often wondered if a Kerra tail would be a help or a hindrance in life amongst the tree tops.", "ponder", 1005214225, 522504653)
                            elseif spawnRace == OGRE then
					        PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_ogre_gf_63762e4a.mp3", "You may try to fit in, but no one trusts a traitor.", "glare", 4238187202, 1962947677)
                            elseif spawnRace == WOOD_ELF then
				                    if GetLevel(Spawn) >=50 then
				                    local check = math.random(1,4)     --Calls in Status Praise VO
				                    else	                                     
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
                		            PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_woodelf_gf_5621269a.mp3", "I too long for my home in Faydark.  Someday Tunare will answer us, I'm sure.", "nod", 3953058409, 3176959607)
                                    elseif check == 2 then	
	                   	            PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_woodelf_gf_601050b5.mp3", "May Tunare's blessings be with you and yours.", "hello", 3511142094, 3935712685)
				       		        elseif check == 3 then	
                		            PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_status_gf_80ffe645.mp3", "You have proven yourself among all those who doubt the Feir'Dal's worth.  Well done!", "thank", 670005551, 4229139858)
				       		        elseif check == 4 then	
	                   	            PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_status_gf_8ef3f45.mp3", "I wish I've had half the adventures you've had.  Heh, but then, it seems I have.", "chuckle", 4263480174, 2069256069)
				       		        end
				       		     end   
		          	        else
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
	                	            PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_3e59423a.mp3", "The blessing of Tunare is the highest blessing of all.", "thank", 853299003, 3297095439)
                                    elseif check == 2 then	
                                    PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_50387146.mp3", "To be amongst the highest branches of a tree is to feel free!", "nod", 1191446540, 711911709)
				       		        end                   
		                    end
                        elseif choice == 2 then	
	                	PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_3e59423a.mp3", "The blessing of Tunare is the highest blessing of all.", "thank", 853299003, 3297095439)
                        elseif choice == 3 then	
                        PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_50387146.mp3", "To be amongst the highest branches of a tree is to feel free!", "nod", 1191446540, 711911709)
                        end                        				    
				    end 
			    end 
            end end
        
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

-------------------------------------------------------------------------------------------

--                                  FactionChecking

-------------------------------------------------------------------------------------------

function FactionChecking(NPC, Spawn, faction)
    race = GetRace(NPC)
    spawnRace = GetRace(Spawn)
	gender = GetGender(NPC)
	Qfaction = GetFactionAmount(Spawn,11)
	FPfaction = GetFactionAmount(Spawn,12)
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end			        
			    elseif GOOD then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end			        
				    end   
			elseif gender == FEMALE then
			    if GOOD then
			            local choice = math.random(1,3)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_good_3/ft/barbarian/barbarian_eco_good_3_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage.", "flex", 1412465462, 3668684138, Spawn, 0)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_good_3/ft/barbarian/barbarian_eco_good_3_notcitizen_gf_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 3900860394, 2985648921, Spawn, 0)
				        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_good_3/ft/barbarian/barbarian_eco_good_3_notcitizen_gf_2de63779.mp3", "Stand away or I... I... I'll stick you!", "cringe", 2760637252, 3945302158, Spawn, 0)
				        end
			    elseif EVIL then
			            local choice = math.random(1,7)
				        if choice == 1 then
                		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_3/ft/barbarian/barbarian_eco_evil_3_notcitizen_gf_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 2538185217, 4092047128, Spawn, 0)
				        elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_3/ft/barbarian/barbarian_eco_evil_3_notcitizen_gf_fea511a7.mp3", "You won't live long in this city, fiend.", "nod", 3197221670, 4003379128, Spawn, 0)
				        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_3/ft/barbarian/barbarian_eco_evil_3_hail_gf_7cbbffe9.mp3", "I wonder how fast you can run with one leg.", "threaten", 3501896409, 4135996029, Spawn, 0)
				        elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_3/ft/barbarian/barbarian_eco_evil_3_notcitizen_gf_e5838bd0.mp3", "Fool! The Overlord is watching you as we speak.", "lookaway", 2838694983, 105486073, Spawn, 0)
				        elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_3/ft/barbarian/barbarian_eco_evil_3_notcitizen_gf_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 2528579057, 3537622539, Spawn, 0)
				        elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_3/ft/barbarian/barbarian_eco_evil_3_notcitizen_gf_8d2a0876.mp3", "Get away from me, beast!", "shakefist", 2600058675, 3327199108, Spawn, 0)
				        elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_3/ft/barbarian/barbarian_eco_evil_3_notcitizen_gf_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 2768818202,  1084586313, Spawn, 0)
				        end
	    	    end
		    end
		    
		
		elseif race == DARK_ELF then
			if gender == MALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_notcitizen_gm_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 2584805980, 3934518234, Spawn, 0)
				        elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_notcitizen_gm_142b686f.mp3", "I'm going to enjoy watching the Militia slit your throat.", "cutthroat", 1683698363, 2526007965, Spawn, 0)
				        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_notcitizen_gm_5195ca4a.mp3", "Do you know what Freeport does to spies?", "scold", 1563952516, 3268708556, Spawn, 0)
				        elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_notcitizen_gm_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 1880919334, 1813287711, Spawn, 0)
				        elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_notcitizen_gm_fea511a7.mp3", "You won't live long in this city, fiend.", "nod", 1949086772, 2765203555, Spawn, 0)
				        elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_notcitizen_gm_e5838bd0.mp3", "Fool! The Overlord is watching you as we speak.", "lookaway", 2528542468, 3222782582, Spawn, 0)
				        elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_notcitizen_gm_8d2a0876.mp3", "Get away from me, beast!", "shakefist", 360555919, 1501068622, Spawn, 0)
				        end	
	   		elseif gender == FEMALE then
			            local choice = math.random(1,9)
				        if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_notcitizen_gf_fea511a7.mp3", "You won't live long in this city, fiend.", "nod", 2176611907, 3591276935, Spawn, 0)
				        elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_notcitizen_gf_142b686f.mp3", "I'm going to enjoy watching the Militia slit your throat.", "cutthroat", 3474860305, 3562500888, Spawn, 0)
				        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_notcitizen_gf_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 2045340247, 30940807, Spawn, 0)
				        elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_notcitizen_gf_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 4257172011, 1859172861, Spawn, 0)
				        elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_notcitizen_gf_5195ca4a.mp3", "Do you know what Freeport does to spies?", "scold", 1161105712, 2097884510, Spawn, 0)
				        elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_notcitizen_gf_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 1662181062, 2267539928, Spawn, 0)
				        elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_notcitizen_gf_8d2a0876.mp3", "Get away from me, beast!", "shakefist", 2068698801, 1348893142, Spawn, 0)
				        elseif choice == 8 then
		                PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_notcitizen_gf_9852856e.mp3", "You're a stranger, and I don't talk to strangers.", "sulk", 1400532128, 3531423739, Spawn, 0)
				        elseif choice == 9 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_notcitizen_gf_e5838bd0.mp3", "Fool! The Overlord is watching you as we speak.", "lookaway", 644059683, 1813641447, Spawn, 0)
				        end
	             end
			 
		elseif race == DWARF then 
			if gender == MALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end				    
		    elseif gender == FEMALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end			        
		    end
	    	
		
	    elseif race== ERUDITE then
			if gender == MALE then
               if EVIL then
			            local choice = math.random(1,2)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 4051842718, 3278304807, Spawn, 0)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_48350e59.mp3", "You're not allowed in here!", "point", 3735853055, 987245840, Spawn)
			        end	                   
				elseif GOOD then
			            local choice = math.random(1,9)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_48350e59.mp3", "You're not allowed in here!", "point", 3735853055, 987245840, Spawn)
				        elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_1a98f879.mp3", "How did you get past the city gates?", "scold", 2709755698, 2787722947, Spawn, 0)
				        elseif choice == 3 then
		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 4051842718, 3278304807, Spawn, 0)
				 		elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 4220138241, 1383990729, Spawn, 0)
				 		elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage.", "flex", 849992393, 1370225272, Spawn, 0)
				 		elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 851903642, 537848965, Spawn, 0)
				 		elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_b24ac070.mp3", "Antonius Bayle save us from this brute!", "squeal", 3686965211, 683078627, Spawn, 0)
				        elseif choice == 8 then
		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_489221e4.mp3", "Stand away or I...I...I'll stick you!", "cringe", 568615461, 2524755008, Spawn, 0)
				        elseif choice == 9 then
		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 2278834813, 2997204307, Spawn, 0)
				        end					    
                end
				
			elseif gender == FEMALE then
			    if EVIL then

			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end

			elseif GOOD then
			            local choice = math.random(1,9)
				        if choice == 1 then
				        PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gf_1a98f879.mp3", "How did you get past the city gates?!", "shakefist", 3576460278,1912242189,Spawn)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gf_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 2785778993, 1778743910, Spawn, 0)
				        elseif choice == 3 then
		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gf_1a98f879.mp3", "How did you get past the city gates?", "scold", 3576460278, 1912242189, Spawn, 0)
				        elseif choice == 4 then
 		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gf_b24ac070.mp3", "Antonius Bayle save us from this brute!", "squeal", 649581555, 2998357022, Spawn, 0)
 				        elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gf_48350e59.mp3", "You're not allowed in here!", "point", 3405287024, 2122169059, Spawn, 0)
 				        elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gf_2de63779.mp3", "Stand away or I ...I ... I'll stick you!", "cringe", 550278925, 954268758, Spawn, 0)
 				        elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gf_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 3677006065, 3835512176, Spawn, 0)
 				        elseif choice == 8 then
                		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gf_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 1710976397, 1936707663, Spawn, 0)
 				        elseif choice == 9 then
                		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage.", "threaten", 1677087226, 663998592, Spawn, 0)
				        
				        end			    
			         end	
			       end
			
		    elseif race == FROGLOK then
		    	if gender == MALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
				        end		    	    
            elseif gender == FEMALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
				        end                
			    end

		elseif race == GNOME then
			if gender == MALE then
			    if EVIL then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "scheme", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end

			elseif GOOD then
			            local choice = math.random(1,10)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gm_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 1881332698, 4264544983, Spawn, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gm_7e3f7ca.mp3", "I refuse to contaminate myself by conversing with trash!", "heckno", 502315126, 4131741270,Spawn)
				        elseif choice == 3 then				        
		                PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gm_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 927995276, 4052972866, Spawn, 0)
				        elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gm_48350e59.mp3", "You're not allowed in here!", "point", 116745358, 3226994684, Spawn, 0)
				        elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gm_489221e4.mp3", "Stand away or I...I...I'll stick you!", "cringe", 1296052727, 228215359, Spawn, 0)
				        elseif choice == 6 then
		                PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gm_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 3659009438, 2636872920, Spawn, 0)
				        elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage.", "flex", 2968718455, 2161812166, Spawn, 0)
				        elseif choice == 8 then
                		PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gm_b24ac070.mp3", "Antonius Bayle save us from this brute!", "squeal", 2645393737, 3219226442, Spawn, 0)
				        elseif choice == 9 then
                		PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gm_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 2557130140, 3519260610, Spawn, 0)
				        elseif choice == 10 then
                		PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gm_1a98f879.mp3", "How did you get past the city gates?", "scold", 1929098803, 2192606495, Spawn, 0)
				        end			    
            end
        
			elseif gender == FEMALE then
			    if GOOD then
			            local choice = math.random(1,9)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gf_48350e59.mp3", "You're not allowed in here!", "point", 3741660223, 2368842350, Spawn, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gf_e0dfed5b.mp3", "P-please!  Don't hurt me!", "wince", 3863103914, 4266619341,Spawn)
				        elseif choice == 3 then
		                PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gf_b24ac070.mp3", "Antonius Bayle save us from this brute!", "squeal", 4063192763, 2694656995, Spawn, 0)
				        elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gf_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 1813061216, 3370217637, Spawn, 0)
				        elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gf_7e3f7ca.mp3", "I refuse to contaminate myself by conversing with you.", "sulk", 4276345210, 4106797230, Spawn, 0)
 				        elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gf_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 452182122, 3272422748, Spawn, 0)
 				        elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gf_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 3863103914, 4266619341, Spawn, 0)
 				        elseif choice == 8 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gf_2de63779.mp3", "Stand away or I ...I ... I'll stick you!", "cringe", 1839601707, 2338838266, Spawn, 0)
 				        elseif choice == 9 then
		                PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 3896083247, 2295203626,Spawn)
				        				        
				        end
                elseif EVIL then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
		        end
            end             

		elseif race == HALF_ELF then
			if gender == MALE then
			    if GOOD then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_notcitizen_gm_ad3832d1.mp3", "Halfelves have the best of both worlds!", "thumbsup", 3804541486, 3539803287, Spawn)				        
				        end
             
				elseif EVIL then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end    				    
                    end
            
			elseif gender == FEMALE then
			    if EVIL then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end    			        
				elseif GOOD then
			            local choice = math.random(1,5)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_notcitizen_gf_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 3415896885, 3160710397, Spawn, 0)
				        elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage.", "flex", 1292200949, 1515738023, Spawn, 0)
				        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_notcitizen_gf_b24ac070.mp3", "Antonius Bayle save us from this brute!", "squeal", 1951368080, 672476377, Spawn, 0)
				        elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_notcitizen_gf_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 471861323, 2245558558, Spawn, 0)
				        elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_notcitizen_gf_2de63779.mp3", "Stand away or I ...I ... I'll stick you!", "cringe", 4031423400, 3654654584, Spawn, 0)
				       	end    				    
				end
			end
	
	
	    elseif race == HALFLING then
			if gender == MALE then
                	    local choice = math.random(1,2)			      
				        if choice == 1 then
	           	        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_cd9164d6.mp3", "You're a stranger. And I don't like strangers, no sir I don't!", "sulk", 785726454, 3155500140, Spawn)
				        elseif choice == 2 then		           
		                PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 893626909, 4027326251, Spawn)
                        end
    		elseif gender == FEMALE then
                	    local choice = math.random(1,6)			      
		                if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_5afcbd03.mp3", "The streets aren't safe with your kind upon them!", "point", 3071247604, 671588271, Spawn)
                        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 1040511037, 3422590702)
				        elseif choice == 3 then
		                PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 3495512299, 2613529491, Spawn, 0)
				        elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_48350e59.mp3", "You're not allowed in here!", "point", 1073030967, 1569566129, Spawn, 0)
				        elseif choice == 5 then				        
		                PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 794224983, 3550995263, Spawn, 0)
				        elseif choice == 6 then
		                PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 517410442, 2838703121, Spawn, 0)
	                        end    		    
	                end

		
		elseif race == HIGH_ELF then
			if gender == MALE then
			            local choice = math.random(1,6)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gm_1a98f879.mp3", "How did you get past the city gates?", "scold", 3451730494, 3904931998, Spawn, 0)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gm_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 109372239, 3032161820, Spawn, 0)
 				        elseif choice == 3 then
                 		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gm_48350e59.mp3", "You're not allowed in here!", "point", 237358955, 1041617020, Spawn, 0)
				        elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gm_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 3302310786, 2767017909, Spawn, 0)
                        elseif choice == 5 then
   				        PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gm_5afcbd03.mp3", "The streets aren't safe with your kind upon them!", "point", 24123463,  2639101341, Spawn)
                        elseif choice == 6 then
	                	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gm_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 799138074, 2544049628, Spawn, 0)
				        end 			    
			elseif gender == FEMALE then
			            local choice = math.random(1,9)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_489221e4.mp3", "Stand away or I...I...I'll stick you!", "cringe", 4067284364, 3141455911, Spawn, 0)
				        elseif choice == 2 then
                        PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "threaten", 3357669916, 1930978996)
				        elseif choice == 3 then
		                PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_1a98f879.mp3", "How did you get past the city gates?", "scold", 3215967268, 3174449441, Spawn, 0)
	                    elseif choice == 4 then
	                	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 1674881666, 1535114797, Spawn, 0)
                    	elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 125091616, 3296860727, Spawn, 0)
                    	elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 623352569, 1914748091, Spawn, 0)
                    	elseif choice == 7 then
		                PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_48350e59.mp3", "You're not allowed in here!", "point", 4066371804, 2962669240, Spawn, 0)
                     	elseif choice == 8 then
                		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_b24ac070.mp3", "Antonius Bayle save us from this brute!", "squeal", 2547751556, 3127499454, Spawn, 0)
                     	elseif choice == 9 then
		                PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 2323108798, 898452253, Spawn, 0)

				        end 			    
	    	        end
		
		elseif race == HUMAN then
			if gender == MALE then
			    if EVIL then
			            local choice = math.random(1,10)
				        if choice == 1 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_e5838bd0.mp3", "Fool! The Overlord is watching you as we speak.", "lookaway", 3487310419, 1932819422, Spawn, 0)
				        elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_ef0ff5c7.mp3", "You're a stranger ... and I don't talk to strangers.", "sulk", 2643645352, 748700962, Spawn, 0)
				        elseif choice == 3 then
	                	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gm_8d2a0876.mp3", "Get away from me, beast!", "shakefist", 823414800, 2426672218, Spawn, 0)
				        elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gm_142b686f.mp3", "I'm going to enjoy watching the Militia slit your throat.", "cutthroat", 644938827, 1658601908, Spawn, 0)
				        elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gm_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 4043801631, 2162078490, Spawn, 0)
				        elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gm_fea511a7.mp3", "You won't live long in this city, friend.", "nod", 4284336465, 2441140881, Spawn, 0)
 				        elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gm_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 3925294409, 3854474317, Spawn, 0)
  				        elseif choice == 8 then
                  		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gm_5195ca4a.mp3", "Do you know what Freeport does to spies?", "scold", 2235883204, 3173719237, Spawn, 0)
  				        elseif choice == 9 then
	                	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gm_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 633287456, 1063523362, Spawn, 0)
  				        elseif choice == 10 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gm_55c7abb4.mp3", "I can't be seen associating with you, worm.", "glare", 2976359403, 2815519675, Spawn, 0)
                    end				        
				elseif GOOD then
                 	local choice = math.random(1,9)
	                    if choice == 1 then
 	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_1a98f879.mp3", "How did you get past the city gates?!", "doubletake", 2984037816, 3824691347, Spawn)
                       	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 1112175527, 3181748573, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_b24ac070.mp3", "Antonius Bayle!  Save us from this brute!", "scream", 271724567, 4059439523, Spawn)
                     	elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 710627605, 2152359545, Spawn, 0)
                     	elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_48350e59.mp3", "You're not allowed in here!", "point", 1734668326, 429140096, Spawn, 0)
                     	elseif choice == 6 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 742840308, 1978260864, Spawn, 0)
                     	elseif choice == 7 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 3192824592, 3089779490, Spawn, 0)
                     	elseif choice == 8 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_7e3f7ca.mp3", "I refuse to contaminate myself by conversing with you.", "sulk", 2165609155, 3535416550, Spawn, 0)
                     	elseif choice == 9 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 2229045167, 836806226, Spawn, 0)
                    	
                    	end				    
			    end	
			elseif gender == FEMALE then
			    if EVIL then
			            local choice = math.random(1,17)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_fea511a7.mp3", "You won't live long in this city, fiend.", "nod", 676582783, 1299701845, Spawn, 0)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_142b686f.mp3", "I'm going to enjoy watching the Militia slit your throat.", "cutthroat", 3916134765, 3310199936, Spawn, 0)
				        elseif choice == 3 then
				        PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_5195ca4a.mp3", "Do you know what Freeport does to spies?", "scold", 26868287, 2211550184, Spawn, 0)
				        elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_ef0ff5c7.mp3", "You're a stranger ... and I don't talk to strangers.", "sulk", 2643645352, 748700962, Spawn, 0)
                    	elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 1788523335, 1664632705, Spawn, 0)
                    	elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 2178675604, 4125194416, Spawn, 0)
                    	elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_e5838bd0.mp3", "Fool! The Overlord is watching you as we speak.", "lookaway", 3487310419, 1932819422, Spawn, 0)
                    	elseif choice == 8 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 2924847649, 1282526093, Spawn, 0)
                    	elseif choice == 9 then
                  		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_55c7abb4.mp3", "I can't be seen associating with you, worm.", "glare", 384722888, 3901037537, Spawn, 0)
                    	elseif choice == 10 then
 	                	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_8d2a0876.mp3", "Get away from me, beast!", "shakefist", 823414800, 2426672218, Spawn, 0)
                    	elseif choice == 11 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 3939340779, 2731540062, Spawn, 0)
                    	elseif choice == 12 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_55c7abb4.mp3", "I can't be seen associating with you, worm.", "glare", 2563439969, 3192575181, Spawn, 0)
                    	elseif choice == 13 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 3457217785, 3805482956, Spawn, 0)
                    	elseif choice == 14 then
               		    PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 4060680490, 1058882345, Spawn, 0)
                    	elseif choice == 15 then
		                PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_142b686f.mp3", "I'm going to enjoy watching the Militia slit your throat.", "cutthroat", 605073324, 777296863, Spawn, 0)
                    	elseif choice == 16 then
				        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_5195ca4a.mp3", "Do you know what Freeport does to spies?", "scold", 2290091922, 1343726185, Spawn, 0)
                    	elseif choice == 17 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_ef0ff5c7.mp3", "You're a stranger ... and I don't talk to strangers.", "sulk", 1921159672, 254720018, Spawn, 0)
                       end
			elseif GOOD then
			            local choice = math.random(1,9)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gf_2de63779.mp3", "Stand away or I ...I ... I'll stick you!", "cringe", 600715331, 1815533033, Spawn, 0)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gf_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 2043555343, 3986162354, Spawn, 0)
				        elseif choice == 3 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gf_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 270225859, 162826229, Spawn, 0)
				        elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gf_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 3292530604, 1711847495, Spawn, 0)
				        elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gf_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 75405600, 112399011, Spawn, 0)
				        elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gf_1a98f879.mp3", "How did you get past the city gates?!", "doubletake", 1160993136, 2172758779,Spawn)
				        elseif choice == 7 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gf_48350e59.mp3", "You're not allowed in here!", "point", 3258959596, 3448333109, Spawn, 0)
				        elseif choice == 8 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gf_b24ac070.mp3", "Antonius Bayle!  Save us from this brute!", "scream", 2595125189, 128327339,Spawn)
				        elseif choice == 9 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 211289545, 184000254,Spawn)

				        end
				    end
                end
		
		elseif race == IKSAR then
			if gender == MALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)				        
				        end			    
		    elseif gender == FEMALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)				        
				        end		        
			end
			
		elseif race == KERRA then
			if gender == MALE then
			    if EVIL then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				elseif GOOD then
			            local choice = math.random(1,10)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gm_7e3f7ca.mp3", "I refuse to contaminate myself by conversing with trash.", "sulk", 3718384144, 3717231547, Spawn, 0)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gm_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 3136709754, 4038009092, Spawn, 0)
				        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gm_489221e4.mp3", "Stand away or I... I... I'll stick you!", "cringe", 98771089, 4268180650, Spawn, 0)
				        elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gm_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 1886994825, 2146296147, Spawn, 0)
	                    elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gm_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 3202213602, 3089831221, Spawn, 0)
	                    elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage.", "flex", 1117657093, 2489618551, Spawn, 0)
	                    elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gm_1a98f879.mp3", "How did you get past the city gates?", "scold", 1933329037, 2439941063, Spawn, 0)
 	                    elseif choice == 8 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gm_b24ac070.mp3", "Antonius Bayle save us from this brute!", "squeal", 2262053055, 2959950578, Spawn, 0)
                    	elseif choice == 9 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gm_48350e59.mp3", "You're not allowed in here!", "point", 238660666, 2251235430, Spawn, 0)
                    	elseif choice == 10 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gm_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 1568831848, 3547460800, Spawn, 0)
	                   					        
				        end				    
			    end
			elseif gender == FEMALE then
			    if EVIL then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "squeal", 0, 0, Spawn)
				        end
				elseif GOOD then
			            local choice = math.random(1,8)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gf_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 1554991483, 2813495502, Spawn, 0)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gf_1a98f879.mp3", "How did you get past the city gates?", "scold", 3551306274, 3348662900, Spawn, 0)
				        elseif choice == 3 then
		                PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gf_7e3f7ca.mp3", "I refuse to contaminate myself by conversing with trash.", "sulk", 3013505918, 3175061897, Spawn, 0)
	                    elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gf_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 497314361, 374024078, Spawn, 0)
	                    elseif choice == 5 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gf_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 2612252906, 2054511262, Spawn, 0)
	                    elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gf_48350e59.mp3", "You're not allowed in here!", "point", 3056698943, 393720478, Spawn, 0)
	                    elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gf_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 3283131561, 2248284339, Spawn, 0)
	                    elseif choice == 8 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gf_b24ac070.mp3", "Antonius Bayle save us from this brute!", "squeal", 2262053055, 2959950578, Spawn, 0)
					        
				        end
		            end
		        end
		        
		elseif race == OGRE then
			    if gender == MALE then
			            local choice = math.random(1,7)
				        if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_notcitizen_gm_5195ca4a.mp3", "Do you know what Freeport does to spies?", "scold", 3068004036, 1133733084, Spawn, 0)
				        elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_notcitizen_gm_55c7abb4.mp3", "I can't be seen associating with you, worm.", "glare", 2331786382, 3392443701, Spawn, 0)
				        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_notcitizen_gm_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 2749564272, 2143302026, Spawn, 0)
				        elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_notcitizen_gm_e5838bd0.mp3", "Fool! The Overlord is watching you as we speak.", "lookaway", 3428603299, 3217289581, Spawn, 0)
 				        elseif choice == 5 then
                   		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_notcitizen_gm_fea511a7.mp3", "You won't live long in this city, fiend.", "nod", 2035462888, 208990185, Spawn, 0)
  				        elseif choice == 6 then
                   		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_notcitizen_gm_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 85936750, 3569810181, Spawn, 0)
  				        elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_notcitizen_gm_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 212334474, 215985202, Spawn, 0)
				        end			        
			    elseif gender == FEMALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
			        end			        
			
			
		elseif race == RATONGA then
		        if gender == MALE then
	    
			            local choice = math.random(1,10)
				        if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gm_ef0ff5c7.mp3", "You're a stranger ... and I don't talk to strangers.", "sulk", 1375220119, 581393186, Spawn, 0)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gm_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 3363521688, 312724314, Spawn, 0)
                        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gm_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 4103187031, 300644930, Spawn, 0)
                    	elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gm_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 3060823807, 38365908, Spawn, 0)
                    	elseif choice == 5 then
				        PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gm_142b686f.mp3", "I'm going to enjoy watching the Militia slit your throat.", "cutthroat", 685988512, 3003141109, Spawn, 0)
                    	elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gm_5195ca4a.mp3", "Do you know what Freeport does to spies?", "scold", 1822930619, 95468194, Spawn, 0)
                    	elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gm_8d2a0876.mp3", "Get away from me, beast!", "shakefist", 3420033454, 347348115, Spawn, 0)
                    	elseif choice == 8 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gm_55c7abb4.mp3", "I can't be seen associating with you, worm.", "glare", 1297448015, 2679521255, Spawn, 0)
                    	elseif choice == 9 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gm_fea511a7.mp3", "I'm going to enjoy watching the Militia slit your throat.", "cutthroat", 2786510221, 1968515544, Spawn, 0)
                      	elseif choice == 10 then
                  		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gm_e5838bd0.mp3", "Fool! The Overlord is watching you as we speak.", "lookaway", 1697807912, 3575936752, Spawn, 0)
                    	end
                elseif gender == FEMALE then
			            local choice = math.random(1,7)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gf_5195ca4a.mp3", "Get away from me, beast!", "shakefist", 3923643767, 2833343997, Spawn, 0)
				        elseif choice == 2 then
			            PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gf_8d2a0876.mp3", "I heard you screaming from all the way over there.", "point", 3634348917, 2158238801)
                        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gf_741f3fdd.mp3", "I can't be seen associating with you, worm.", "glare", 3931205176, 4173474394, Spawn, 0)
                        elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gf_7a9317b2.mp3", "Do you know what Freeport does to spies?", "scold", 771392116, 420722405, Spawn, 0)
                        elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gf_fea511a7.mp3", "I'm going to enjoy watching the Militia slit your throat.", "cutthroat", 1560352718, 143152694, Spawn, 0)
                        elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gf_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 943616082, 270940614, Spawn, 0)
	                    elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gf_9852856e.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 1171538277, 4058991366, Spawn, 0)
                    end                
	    	    end
            
		elseif race == TROLL then
			    if gender == MALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
            		    PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_f9319fbb.mp3", "I like killing things just to see them die.  Don't you?", "giggle", 2044250119, 1492935869, Spawn)
				        elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gm_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 633287456, 1063523362, Spawn, 0)
				        end
	  			elseif gender == FEMALE then
			            local choice = math.random(1,5)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_notcitizen_gf_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 1426667866, 4289729460, Spawn, 0)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_notcitizen_gf_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 1247256294, 709009047, Spawn, 0)
				        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_notcitizen_gf_fea511a7.mp3", "You won't live long in this city, fiend.", "nod", 1594716050, 1280442829, Spawn, 0)
				        elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_notcitizen_gf_5195ca4a.mp3", "Get away from me, beast!", "shakefist", 1808886894, 2531368454, Spawn, 0)
				        elseif choice == 5 then
                  		PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_notcitizen_gf_e5838bd0.mp3", "Fool! The Overlord is watching you as we speak.", "lookaway", 3061153720, 1151806611, Spawn, 0)
				        end	  			    
			    end   
			    
		elseif race == WOOD_ELF then
			if gender == MALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_notcitizen_gm_7e3f7ca.mp3", "I refuse to contaminate myself by conversing with trash.", "sulk", 2529393016, 3485196338, Spawn, 0)
				        end			    
			elseif gender == FEMALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage.", "flex", 3093358427, 2924286482, Spawn, 0)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_notcitizen_gf_48350e59.mp3", "You're not allowed in here!", "point", 3467450810, 1776058479, Spawn, 0)
				        end			    
                    end

				
			
		elseif race == FAE then
			if gender == MALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)				        
				        end			    
			elseif gender == FEMALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)				        
				        end			    
			end
		elseif race == ARASAI then
			if gender == MALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)				        
				        end			    
			elseif gender == FEMALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)				        
				        end			    
			end
		elseif race == SARNAK then
			if gender == MALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)				        
				        end			    
			elseif gender == FEMALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)				        
				        end			    
			end
		end
	end
end  

-------------------------------------------------------------------------------------------

--                       FactionCheckingCallout
                        
-------------------------------------------------------------------------------------------

function FactionCheckingCallout(NPC, Spawn, faction)
    race = GetRace(NPC)
    spawnRace = GetRace(Spawn)
	gender = GetGender(NPC)
	Qfaction = GetFactionAmount(Spawn,11)
	FPfaction = GetFactionAmount(Spawn,12)
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0)
				        end			        
			    elseif GOOD then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0)
				        end			        
				    end   
			elseif gender == FEMALE then
			    if GOOD then
			            local choice = math.random(1,3)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_good_3/ft/barbarian/barbarian_eco_good_3_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage.", "flex", 1412465462, 3668684138)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_good_3/ft/barbarian/barbarian_eco_good_3_notcitizen_gf_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 3900860394, 2985648921)
				        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_good_3/ft/barbarian/barbarian_eco_good_3_notcitizen_gf_2de63779.mp3", "Stand away or I... I... I'll stick you!", "cringe", 2760637252, 3945302158)
				        end
			    elseif EVIL then
			            local choice = math.random(1,7)
				        if choice == 1 then
                		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_3/ft/barbarian/barbarian_eco_evil_3_notcitizen_gf_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 2538185217, 4092047128)
				        elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_3/ft/barbarian/barbarian_eco_evil_3_notcitizen_gf_fea511a7.mp3", "You won't live long in this city, fiend.", "nod", 3197221670, 4003379128)
				        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_3/ft/barbarian/barbarian_eco_evil_3_hail_gf_7cbbffe9.mp3", "I wonder how fast you can run with one leg.", "threaten", 3501896409, 4135996029)
				        elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_3/ft/barbarian/barbarian_eco_evil_3_notcitizen_gf_e5838bd0.mp3", "Fool! The Overlord is watching you as we speak.", "lookaway", 2838694983, 105486073)
				        elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_3/ft/barbarian/barbarian_eco_evil_3_notcitizen_gf_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 2528579057, 3537622539)
				        elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_3/ft/barbarian/barbarian_eco_evil_3_notcitizen_gf_8d2a0876.mp3", "Get away from me, beast!", "shakefist", 2600058675, 3327199108)
				        elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_3/ft/barbarian/barbarian_eco_evil_3_notcitizen_gf_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 2768818202,  1084586313)
				        end
	    	    end
		    end
		    
		
		elseif race == DARK_ELF then
			if gender == MALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_notcitizen_gm_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 2584805980, 3934518234)
				        elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_notcitizen_gm_142b686f.mp3", "I'm going to enjoy watching the Militia slit your throat.", "cutthroat", 1683698363, 2526007965)
				        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_notcitizen_gm_5195ca4a.mp3", "Do you know what Freeport does to spies?", "scold", 1563952516, 3268708556)
				        elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_notcitizen_gm_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 1880919334, 1813287711)
				        elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_notcitizen_gm_fea511a7.mp3", "You won't live long in this city, fiend.", "nod", 1949086772, 2765203555)
				        elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_notcitizen_gm_e5838bd0.mp3", "Fool! The Overlord is watching you as we speak.", "lookaway", 2528542468, 3222782582)
				        elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_notcitizen_gm_8d2a0876.mp3", "Get away from me, beast!", "shakefist", 360555919, 1501068622)
				        end	
	   		elseif gender == FEMALE then
			            local choice = math.random(1,9)
				        if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_notcitizen_gf_fea511a7.mp3", "You won't live long in this city, fiend.", "nod", 2176611907, 3591276935)
				        elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_notcitizen_gf_142b686f.mp3", "I'm going to enjoy watching the Militia slit your throat.", "cutthroat", 3474860305, 3562500888)
				        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_notcitizen_gf_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 2045340247, 30940807)
				        elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_notcitizen_gf_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 4257172011, 1859172861)
				        elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_notcitizen_gf_5195ca4a.mp3", "Do you know what Freeport does to spies?", "scold", 1161105712, 2097884510)
				        elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_notcitizen_gf_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 1662181062, 2267539928)
				        elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_notcitizen_gf_8d2a0876.mp3", "Get away from me, beast!", "shakefist", 2068698801, 1348893142)
				        elseif choice == 8 then
		                PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_notcitizen_gf_9852856e.mp3", "You're a stranger, and I don't talk to strangers.", "sulk", 1400532128, 3531423739)
				        elseif choice == 9 then
                		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_notcitizen_gf_e5838bd0.mp3", "Fool! The Overlord is watching you as we speak.", "lookaway", 644059683, 1813641447)
				        end
	             end
			 
		elseif race == DWARF then 
			if gender == MALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0)
				        end				    
		    elseif gender == FEMALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0)
				        end			        
		    end
	    	
		
	    elseif race== ERUDITE then
			if gender == MALE then
               if EVIL then
			            local choice = math.random(1,2)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 4051842718, 3278304807)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_48350e59.mp3", "You're not allowed in here!", "point", 3735853055, 987245840)
			        end	                   
				elseif GOOD then
			            local choice = math.random(1,9)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_48350e59.mp3", "You're not allowed in here!", "point", 3735853055, 987245840)
				        elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_1a98f879.mp3", "How did you get past the city gates?", "scold", 2709755698, 2787722947)
				        elseif choice == 3 then
		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 4051842718, 3278304807)
				 		elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 4220138241, 1383990729)
				 		elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage.", "flex", 849992393, 1370225272)
				 		elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 851903642, 537848965)
				 		elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_b24ac070.mp3", "Antonius Bayle save us from this brute!", "squeal", 3686965211, 683078627)
				        elseif choice == 8 then
		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_489221e4.mp3", "Stand away or I...I...I'll stick you!", "cringe", 568615461, 2524755008)
				        elseif choice == 9 then
		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gm_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 2278834813, 2997204307)
				        end					    
                end
				
			elseif gender == FEMALE then
			    if EVIL then

			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0)
				        end

			elseif GOOD then
			            local choice = math.random(1,9)
				        if choice == 1 then
				        PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gf_1a98f879.mp3", "How did you get past the city gates?!", "shakefist", 3576460278,1912242189)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gf_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 2785778993, 1778743910)
				        elseif choice == 3 then
		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gf_1a98f879.mp3", "How did you get past the city gates?", "scold", 3576460278, 1912242189)
				        elseif choice == 4 then
 		                PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gf_b24ac070.mp3", "Antonius Bayle save us from this brute!", "squeal", 649581555, 2998357022)
 				        elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gf_48350e59.mp3", "You're not allowed in here!", "point", 3405287024, 2122169059)
 				        elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gf_2de63779.mp3", "Stand away or I ...I ... I'll stick you!", "cringe", 550278925, 954268758)
 				        elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gf_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 3677006065, 3835512176)
 				        elseif choice == 8 then
                		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gf_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 1710976397, 1936707663)
 				        elseif choice == 9 then
                		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage.", "threaten", 1677087226, 663998592)
				        
				        end			    
			         end	
			       end
			
		    elseif race == FROGLOK then
		    	if gender == MALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "heckno", 0, 0)
				        end		    	    
            elseif gender == FEMALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "heckno", 0, 0)
				        end                
			    end

		elseif race == GNOME then
			if gender == MALE then
			    if EVIL then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shame", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0)
				        end

			elseif GOOD then
			            local choice = math.random(1,10)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gm_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 1881332698, 4264544983)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gm_7e3f7ca.mp3", "I refuse to contaminate myself by conversing with trash!", "heckno", 502315126, 4131741270)
				        elseif choice == 3 then				        
		                PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gm_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 927995276, 4052972866)
				        elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gm_48350e59.mp3", "You're not allowed in here!", "point", 116745358, 3226994684)
				        elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gm_489221e4.mp3", "Stand away or I...I...I'll stick you!", "cringe", 1296052727, 228215359)
				        elseif choice == 6 then
		                PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gm_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 3659009438, 2636872920)
				        elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage.", "flex", 2968718455, 2161812166)
				        elseif choice == 8 then
                		PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gm_b24ac070.mp3", "Antonius Bayle save us from this brute!", "squeal", 2645393737, 3219226442)
				        elseif choice == 9 then
                		PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gm_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 2557130140, 3519260610)
				        elseif choice == 10 then
                		PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gm_1a98f879.mp3", "How did you get past the city gates?", "scold", 1929098803, 2192606495)
				        end			    
            end
        
			elseif gender == FEMALE then
			    if GOOD then
			            local choice = math.random(1,9)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gf_48350e59.mp3", "You're not allowed in here!", "point", 3741660223, 2368842350)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gf_e0dfed5b.mp3", "P-please!  Don't hurt me!", "wince", 3863103914, 4266619341)
				        elseif choice == 3 then
		                PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gf_b24ac070.mp3", "Antonius Bayle save us from this brute!", "squeal", 4063192763, 2694656995)
				        elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gf_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 1813061216, 3370217637)
				        elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gf_7e3f7ca.mp3", "I refuse to contaminate myself by conversing with you.", "sulk", 4276345210, 4106797230)
 				        elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gf_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 452182122, 3272422748)
 				        elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gf_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 3863103914, 4266619341)
 				        elseif choice == 8 then
                		PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gf_2de63779.mp3", "Stand away or I ...I ... I'll stick you!", "cringe", 1839601707, 2338838266)
 				        elseif choice == 9 then
		                PlayFlavor(NPC, "voiceover/english/optional2/gnome_eco_good_1/ft/gnome/gnome_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 3896083247, 2295203626)
				        				        
				        end
                elseif EVIL then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0)
				        end
		        end
            end             

		elseif race == HALF_ELF then
			if gender == MALE then
			    if GOOD then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_notcitizen_gm_ad3832d1.mp3", "Halfelves have the best of both worlds!", "thumbsup", 3804541486, 3539803287)				        
				        end
             
				elseif EVIL then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0)
				        end    				    
                    end
            
			elseif gender == FEMALE then
			    if EVIL then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0)
				        end    			        
				elseif GOOD then
			            local choice = math.random(1,5)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_notcitizen_gf_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 3415896885, 3160710397)
				        elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage.", "flex", 1292200949, 1515738023)
				        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_notcitizen_gf_b24ac070.mp3", "Antonius Bayle save us from this brute!", "squeal", 1951368080, 672476377)
				        elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_notcitizen_gf_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 471861323, 2245558558)
				        elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_notcitizen_gf_2de63779.mp3", "Stand away or I ...I ... I'll stick you!", "cringe", 4031423400, 3654654584)
				       	end    				    
				end
			end
	
	
	    elseif race == HALFLING then
			if gender == MALE then
                	    local choice = math.random(1,2)			      
				        if choice == 1 then
	           	        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_cd9164d6.mp3", "You're a stranger. And I don't like strangers, no sir I don't!", "sulk", 785726454, 3155500140)
				        elseif choice == 2 then		           
		                PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 893626909, 4027326251)
                        end
    		elseif gender == FEMALE then
                	    local choice = math.random(1,6)			      
		                if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_5afcbd03.mp3", "The streets aren't safe with your kind upon them!", "point", 3071247604, 671588271)
                        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 1040511037, 3422590702)
				        elseif choice == 3 then
		                PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 3495512299, 2613529491)
				        elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_48350e59.mp3", "You're not allowed in here!", "point", 1073030967, 1569566129)
				        elseif choice == 5 then				        
		                PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 794224983, 3550995263)
				        elseif choice == 6 then
		                PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 517410442, 2838703121)
	                        end    		    
	                end

		
		elseif race == HIGH_ELF then
			if gender == MALE then
			            local choice = math.random(1,6)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gm_1a98f879.mp3", "How did you get past the city gates?", "scold", 3451730494, 3904931998)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gm_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 109372239, 3032161820)
 				        elseif choice == 3 then
                 		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gm_48350e59.mp3", "You're not allowed in here!", "point", 237358955, 1041617020)
				        elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gm_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 3302310786, 2767017909)
                        elseif choice == 5 then
   				        PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gm_5afcbd03.mp3", "The streets aren't safe with your kind upon them!", "point", 24123463,  2639101341)
                        elseif choice == 6 then
	                	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gm_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 799138074, 2544049628)
				        end 			    
			elseif gender == FEMALE then
			            local choice = math.random(1,9)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_489221e4.mp3", "Stand away or I...I...I'll stick you!", "cringe", 4067284364, 3141455911)
				        elseif choice == 2 then
                        PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "threaten", 3357669916, 1930978996)
				        elseif choice == 3 then
		                PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_1a98f879.mp3", "How did you get past the city gates?", "scold", 3215967268, 3174449441)
	                    elseif choice == 4 then
	                	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 1674881666, 1535114797)
                    	elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 125091616, 3296860727)
                    	elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 623352569, 1914748091)
                    	elseif choice == 7 then
		                PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_48350e59.mp3", "You're not allowed in here!", "point", 4066371804, 2962669240)
                     	elseif choice == 8 then
                		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_b24ac070.mp3", "Antonius Bayle save us from this brute!", "squeal", 2547751556, 3127499454)
                     	elseif choice == 9 then
		                PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 2323108798, 898452253)

				        end 			    
	    	        end
		
		elseif race == HUMAN then
			if gender == MALE then
			    if EVIL then
			            local choice = math.random(1,10)  -- 11 - 20 are in the Generic2Hail/Callout.  Saved here for reference
				        if choice == 1 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_e5838bd0.mp3", "Fool! The Overlord is watching you as we speak.", "lookaway", 3487310419, 1932819422)
				        elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_ef0ff5c7.mp3", "You're a stranger ... and I don't talk to strangers.", "sulk", 2643645352, 748700962)
				        elseif choice == 3 then
	                	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gm_8d2a0876.mp3", "Get away from me, beast!", "shakefist", 823414800, 2426672218)
				        elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gm_142b686f.mp3", "I'm going to enjoy watching the Militia slit your throat.", "cutthroat", 644938827, 1658601908)
				        elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gm_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 4043801631, 2162078490)
				        elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gm_fea511a7.mp3", "You won't live long in this city, friend.", "nod", 4284336465, 2441140881)
 				        elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gm_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 3925294409, 3854474317)
  				        elseif choice == 8 then
                  		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gm_5195ca4a.mp3", "Do you know what Freeport does to spies?", "scold", 2235883204, 3173719237)
  				        elseif choice == 9 then
	                	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gm_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 633287456, 1063523362)
  				        elseif choice == 10 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gm_55c7abb4.mp3", "I can't be seen associating with you, worm.", "glare", 2976359403, 2815519675)
  				        elseif choice == 11 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_fea511a7.mp3", "You're a stranger ... and I don't talk to strangers.", "sulk", 2430170377, 3065502678)
				        elseif choice == 12 then
    				    PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_8d2a0876.mp3", "That look's like an awfully expensive pair of boots there, my friend.", "ponder", 367255988, 2113438867)
                	    elseif choice == 13 then
				        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_55c7abb4.mp3", "If you know what's good for ya, you didn't see anything!", "shakefist", 3295550745, 254450600)
                	    elseif choice == 14 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_142b686f.mp3", "I'm going to enjoy watching the Militia slit your throat.", "cutthroat", 507833438, 4154942045)
                	    elseif choice == 15 then
                  		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_5195ca4a.mp3", "Do you know what Freeport does to spies?", "scold", 3763693751, 3029107109)
                	    elseif choice == 16 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 980845675, 4241333469)
                	    elseif choice == 17 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 1773924149, 2192447994)
                	    elseif choice == 18 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_ef0ff5c7.mp3", "You're a stranger ... and I don't talk to strangers.", "sulk", 2675223743, 1399829526)
                	    elseif choice == 19 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 3543602520, 290613226)
                	    elseif choice == 20 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_e5838bd0.mp3", "Fool! The Overlord is watching you as we speak.", "lookaway", 2642325989, 4260235172)
				        end				        
				elseif GOOD then
                 	local choice = math.random(1,9)
	                    if choice == 1 then
 	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_1a98f879.mp3", "How did you get past the city gates?!", "doubletake", 2984037816, 3824691347)
                       	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 1112175527, 3181748573)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_b24ac070.mp3", "Antonius Bayle!  Save us from this brute!", "scream", 271724567, 4059439523)
                     	elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 710627605, 2152359545)
                     	elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_48350e59.mp3", "You're not allowed in here!", "point", 1734668326, 429140096)
                     	elseif choice == 6 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 742840308, 1978260864)
                     	elseif choice == 7 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 3192824592, 3089779490)
                     	elseif choice == 8 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_7e3f7ca.mp3", "I refuse to contaminate myself by conversing with you.", "sulk", 2165609155, 3535416550)
                     	elseif choice == 9 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 2229045167, 836806226)
                    	
                    	end				    
			    end	
			elseif gender == FEMALE then
			    if EVIL then
			            local choice = math.random(1,10) -- 11 - 17 used in GenericEcology2Hail.  Saved here for record.
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_fea511a7.mp3", "You won't live long in this city, fiend.", "nod", 676582783, 1299701845)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_142b686f.mp3", "I'm going to enjoy watching the Militia slit your throat.", "cutthroat", 3916134765, 3310199936)
				        elseif choice == 3 then
				        PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_5195ca4a.mp3", "Do you know what Freeport does to spies?", "scold", 26868287, 2211550184)
				        elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_ef0ff5c7.mp3", "You're a stranger ... and I don't talk to strangers.", "sulk", 2643645352, 748700962)
                    	elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 1788523335, 1664632705)
                    	elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 2178675604, 4125194416)
                    	elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_e5838bd0.mp3", "Fool! The Overlord is watching you as we speak.", "lookaway", 3487310419, 1932819422)
                    	elseif choice == 8 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 2924847649, 1282526093)
                    	elseif choice == 9 then
                  		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_55c7abb4.mp3", "I can't be seen associating with you, worm.", "glare", 384722888, 3901037537)
                    	elseif choice == 10 then
 	                	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gf_8d2a0876.mp3", "Get away from me, beast!", "shakefist", 823414800, 2426672218)
                    	elseif choice == 11 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 3939340779, 2731540062)
                    	elseif choice == 12 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_55c7abb4.mp3", "I can't be seen associating with you, worm.", "glare", 2563439969, 3192575181)
                    	elseif choice == 13 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 3457217785, 3805482956)
                    	elseif choice == 14 then
               		    PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 4060680490, 1058882345)
                    	elseif choice == 15 then
		                PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_142b686f.mp3", "I'm going to enjoy watching the Militia slit your throat.", "cutthroat", 605073324, 777296863)
                    	elseif choice == 16 then
				        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_5195ca4a.mp3", "Do you know what Freeport does to spies?", "scold", 2290091922, 1343726185)
                    	elseif choice == 17 then
                		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gf_ef0ff5c7.mp3", "You're a stranger ... and I don't talk to strangers.", "sulk", 1921159672, 254720018)
                       end
			elseif GOOD then
			            local choice = math.random(1,9)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gf_2de63779.mp3", "Stand away or I ...I ... I'll stick you!", "cringe", 600715331, 1815533033)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gf_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 2043555343, 3986162354)
				        elseif choice == 3 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gf_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 270225859, 162826229)
				        elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gf_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 3292530604, 1711847495)
				        elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gf_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 75405600, 112399011)
				        elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gf_1a98f879.mp3", "How did you get past the city gates?!", "doubletake", 1160993136, 2172758779)
				        elseif choice == 7 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gf_48350e59.mp3", "You're not allowed in here!", "point", 3258959596, 3448333109)
				        elseif choice == 8 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gf_b24ac070.mp3", "Antonius Bayle!  Save us from this brute!", "scream", 2595125189, 128327339)
				        elseif choice == 9 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 211289545, 184000254)

				        end
				    end
                end
		
		elseif race == IKSAR then
			if gender == MALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0)				        
				        end			    
		    elseif gender == FEMALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0)				        
				        end		        
			end
			
		elseif race == KERRA then
			if gender == MALE then
			    if EVIL then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0)
				        end
				elseif GOOD then
			            local choice = math.random(1,10)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gm_7e3f7ca.mp3", "I refuse to contaminate myself by conversing with trash.", "sulk", 3718384144, 3717231547)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gm_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 3136709754, 4038009092)
				        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gm_489221e4.mp3", "Stand away or I... I... I'll stick you!", "cringe", 98771089, 4268180650)
				        elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gm_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 1886994825, 2146296147)
	                    elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gm_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 3202213602, 3089831221)
	                    elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage.", "flex", 1117657093, 2489618551)
	                    elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gm_1a98f879.mp3", "How did you get past the city gates?", "scold", 1933329037, 2439941063)
 	                    elseif choice == 8 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gm_b24ac070.mp3", "Antonius Bayle save us from this brute!", "squeal", 2262053055, 2959950578)
                    	elseif choice == 9 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gm_48350e59.mp3", "You're not allowed in here!", "point", 238660666, 2251235430)
                    	elseif choice == 10 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gm_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 1568831848, 3547460800)
	                   					        
				        end				    
			    end
			elseif gender == FEMALE then
			    if EVIL then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "squeal", 0, 0)
				        end
				elseif GOOD then
			            local choice = math.random(1,8)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gf_8236a789.mp3", "Remove yourself from my presence, outsider.", "glare", 1554991483, 2813495502)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gf_1a98f879.mp3", "How did you get past the city gates?", "scold", 3551306274, 3348662900)
				        elseif choice == 3 then
		                PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gf_7e3f7ca.mp3", "I refuse to contaminate myself by conversing with trash.", "sulk", 3013505918, 3175061897)
	                    elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gf_e0dfed5b.mp3", "P-p-please d-don't hurt me!", "beg", 497314361, 374024078)
	                    elseif choice == 5 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gf_ad3832d1.mp3", "Guards! Guards!!!", "raisehand", 2612252906, 2054511262)
	                    elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gf_48350e59.mp3", "You're not allowed in here!", "point", 3056698943, 393720478)
	                    elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gf_5afcbd03.mp3", "The streets aren't safe with your kind upon them.", "no", 3283131561, 2248284339)
	                    elseif choice == 8 then
                    	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_notcitizen_gf_b24ac070.mp3", "Antonius Bayle save us from this brute!", "squeal", 2262053055, 2959950578)
					        
				        end
		            end
		        end
		        
		elseif race == OGRE then
			    if gender == MALE then
			            local choice = math.random(1,7)
				        if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_notcitizen_gm_5195ca4a.mp3", "Do you know what Freeport does to spies?", "scold", 3068004036, 1133733084)
				        elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_notcitizen_gm_55c7abb4.mp3", "I can't be seen associating with you, worm.", "glare", 2331786382, 3392443701)
				        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_notcitizen_gm_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 2749564272, 2143302026)
				        elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_notcitizen_gm_e5838bd0.mp3", "Fool! The Overlord is watching you as we speak.", "lookaway", 3428603299, 3217289581)
 				        elseif choice == 5 then
                   		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_notcitizen_gm_fea511a7.mp3", "You won't live long in this city, fiend.", "nod", 2035462888, 208990185)
  				        elseif choice == 6 then
                   		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_notcitizen_gm_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 85936750, 3569810181)
  				        elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_notcitizen_gm_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 212334474, 215985202)
				        end			        
			    elseif gender == FEMALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0)
				        end
			        end			        
			
			
		elseif race == RATONGA then
		        if gender == MALE then
	    
			            local choice = math.random(1,10)
				        if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gm_ef0ff5c7.mp3", "You're a stranger ... and I don't talk to strangers.", "sulk", 1375220119, 581393186)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gm_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 3363521688, 312724314)
                        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gm_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 4103187031, 300644930)
                    	elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gm_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 3060823807, 38365908)
                    	elseif choice == 5 then
				        PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gm_142b686f.mp3", "I'm going to enjoy watching the Militia slit your throat.", "cutthroat", 685988512, 3003141109)
                    	elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gm_5195ca4a.mp3", "Do you know what Freeport does to spies?", "scold", 1822930619, 95468194)
                    	elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gm_8d2a0876.mp3", "Get away from me, beast!", "shakefist", 3420033454, 347348115)
                    	elseif choice == 8 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gm_55c7abb4.mp3", "I can't be seen associating with you, worm.", "glare", 1297448015, 2679521255)
                    	elseif choice == 9 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gm_fea511a7.mp3", "I'm going to enjoy watching the Militia slit your throat.", "cutthroat", 2786510221, 1968515544)
                      	elseif choice == 10 then
                  		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gm_e5838bd0.mp3", "Fool! The Overlord is watching you as we speak.", "lookaway", 1697807912, 3575936752)
                    	end
                elseif gender == FEMALE then
			            local choice = math.random(1,7)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gf_5195ca4a.mp3", "Get away from me, beast!", "shakefist", 3923643767, 2833343997)
				        elseif choice == 2 then
			            PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gf_8d2a0876.mp3", "I heard you screaming from all the way over there.", "point", 3634348917, 2158238801)
                        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gf_741f3fdd.mp3", "I can't be seen associating with you, worm.", "glare", 3931205176, 4173474394)
                        elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gf_7a9317b2.mp3", "Do you know what Freeport does to spies?", "scold", 771392116, 420722405)
                        elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gf_fea511a7.mp3", "I'm going to enjoy watching the Militia slit your throat.", "cutthroat", 1560352718, 143152694)
                        elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gf_7a80a6a8.mp3", "I thought I smelled something foul.", "stinky", 943616082, 270940614)
	                    elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gf_9852856e.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 1171538277, 4058991366)
                    end                
	    	    end
            
		elseif race == TROLL then
			    if gender == MALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
            		    PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_f9319fbb.mp3", "I like killing things just to see them die.  Don't you?", "giggle", 2044250119, 1492935869)
				        elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gm_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 633287456, 1063523362)
				        end
	  			elseif gender == FEMALE then
			            local choice = math.random(1,5)
				        if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_notcitizen_gf_7a9317b2.mp3", "Crawl back into the sewers, scum!", "point", 1426667866, 4289729460, Spawn, 0)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_notcitizen_gf_741f3fdd.mp3", "I'll give you a head start before I start yelling for the guards.", "glare", 1247256294, 709009047)
				        elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_notcitizen_gf_fea511a7.mp3", "You won't live long in this city, fiend.", "nod", 1594716050, 1280442829)
				        elseif choice == 4 then
		                PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_notcitizen_gf_5195ca4a.mp3", "Get away from me, beast!", "shakefist", 1808886894, 2531368454)
				        elseif choice == 5 then
                  		PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_notcitizen_gf_e5838bd0.mp3", "Fool! The Overlord is watching you as we speak.", "lookaway", 3061153720, 1151806611)
				        end	  			    
			    end   
			    
		elseif race == WOOD_ELF then
			if gender == MALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_notcitizen_gm_7e3f7ca.mp3", "I refuse to contaminate myself by conversing with trash.", "sulk", 2529393016, 3485196338)
				        end			    
			elseif gender == FEMALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage.", "flex", 3093358427, 2924286482)
				        elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_notcitizen_gf_48350e59.mp3", "You're not allowed in here!", "point", 3467450810, 1776058479)
				        end			    
                    end

				
			
		elseif race == FAE then
			if gender == MALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0)				        
				        end			    
			elseif gender == FEMALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0)				        
				        end			    
			end
		elseif race == ARASAI then
			if gender == MALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0)				        
				        end			    
			elseif gender == FEMALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0)				        
				        end			    
			end
		elseif race == SARNAK then
			if gender == MALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0)				        
				        end			    
			elseif gender == FEMALE then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0)				        
				        end			    
			end
		end
	end
end  
-------------------------------------------------------------------------------------------

--                                  GoodFactionEmotes

-------------------------------------------------------------------------------------------

function GoodFactionEmotes(NPC, Spawn, faction)
local choice = math.random(1,5)
            
                if choice == 1 then
	            PlayFlavor(NPC, "", "", "pout", 0, 0,Spawn)
	            
	            elseif choice == 2 then
	            PlayFlavor(NPC, "", "", "shakefist", 0, 0,Spawn)
	            
                elseif choice == 3 then
	            PlayFlavor(NPC, "", "", "threaten", 0, 0,Spawn)

	            
	            elseif choice == 4 then
	            PlayFlavor(NPC, "", "", "squeal", 0, 0,Spawn)

	            
                elseif choice == 5 then
	            PlayFlavor(NPC, "", "", "glare", 0, 0,Spawn)
	            
	            elseif choice == 6 then
	            PlayFlavor(NPC, "", "", "noway", 0, 0,Spawn)
                end
end

-------------------------------------------------------------------------------------------

--                                  EvilFactionEmotes

-------------------------------------------------------------------------------------------

function EvilFactionEmotes(NPC, Spawn, faction)
local choice = math.random(1,5)
            
                if choice == 1 then
	            PlayFlavor(NPC, "", "", "cutthroat", 0, 0,Spawn)
	            
	            elseif choice == 2 then
	            PlayFlavor(NPC, "", "", "shakefist", 0, 0,Spawn)
	            
                elseif choice == 3 then
	            PlayFlavor(NPC, "", "", "threaten", 0, 0,Spawn)

	            
	            elseif choice == 4 then
	            PlayFlavor(NPC, "", "", "shame", 0, 0,Spawn)

	            
                elseif choice == 5 then
	            PlayFlavor(NPC, "", "", "glare", 0, 0,Spawn)
                end
end

-------------------------------------------------------------------------------------------

--                                  GenericDrunkHail

-------------------------------------------------------------------------------------------

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
    if TimeCheck== false then
           TimeCheck = true	
      	AddTimer(NPC,4000,"ResetTimer") 	
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
    	    
    elseif race == HUMAN then
        if gender == MALE then
	            local choice = math.random(1,3)

	            if choice == 1 then
        		PlayFlavor(NPC, "voiceover/english/human_eco_evil_drunk/ft/eco/evil/human_eco_evil_drunk_bartender_gm_e4fde966.mp3", "I haven't that much to drink yet, I got here when... bah I forgot.", "no", 612325975, 4257910058, Spawn)
            	elseif choice == 2 then
		        PlayFlavor(NPC, "voiceover/english/human_eco_evil_drunk/ft/eco/evil/human_eco_evil_drunk_hail_gm_622bfa69.mp3", "What do you mean ye drank more than I did?", "boggle", 3046379177, 1648095152, Spawn)
            	elseif choice == 3 then
        		PlayFlavor(NPC, "voiceover/english/human_eco_evil_drunk/ft/eco/evil/human_eco_evil_drunk_bartender_gm_2b255210.mp3", "Ahhh ... quit your whinin'! I paid ya with my jokes and fine company.", "boggle", 2971571763, 3318817519, Spawn)

	            end              
    	elseif gender == FEMALE then
        end
    	end 
    end	    
    end	
end

-------------------------------------------------------------------------------------------

--                                  GenericDrunkCallout

-------------------------------------------------------------------------------------------

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
	
    if TimeCheck== false then
    if  math.random(1,100) <= 20 then
        TimeCheck = true
      	AddTimer(NPC,20000,"ResetTimer")         
	if race >= 0 and race <= 18 and gender >= 1 and gender <= 2 then	
    if race == DWARF then
    	if gender == MALE then
    	local choice = math.random(1,2)

        	    if choice == 1 then
	            PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_drunk/ft/eco/good/dwarf_eco_good_drunk_barmaid_gm_7f76ecc6.mp3", "Hurry up!  My stein is near dry thanks to you.", "tapfoot", 2932007848, 277469364, Spawn)
        	    elseif choice == 2 then
	            PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_drunk/ft/eco/good/dwarf_eco_good_drunk_barmaid_gm_a1d96f41.mp3", "My stein hasn't any legs to walk over and fill itself up.", "glare", 188839482, 4266338416, Spawn)
		        end
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
	            local choice = math.random(1,3)

	            if choice == 1 then
        		PlayFlavor(NPC, "voiceover/english/human_eco_evil_drunk/ft/eco/evil/human_eco_evil_drunk_bartender_gm_e4fde966.mp3", "I haven't that much to drink yet, I got here when... bah I forgot.", "no", 612325975, 4257910058, Spawn)
            	elseif choice == 2 then
        		PlayFlavor(NPC, "voiceover/english/human_eco_evil_drunk/ft/eco/evil/human_eco_evil_drunk_barmaid_gm_a1d96f41.mp3", "My stein hasn't any legs to walk over and fill itself up.", "glare", 2656968471, 1396939792, Spawn)
            	elseif choice == 3 then
        		PlayFlavor(NPC, "voiceover/english/human_eco_evil_drunk/ft/eco/evil/human_eco_evil_drunk_barmaid_gm_7f76ecc6.mp3", "Hurry up! My stomach's near dry thanks to ya.", "frustrated", 2014105974, 2128019974, Spawn)
 	            end            
            
    	elseif gender == FEMALE then
    	 end   
    	end 
    end	    
    end	
end
end
-------------------------------------------------------------------------------------------

--                                  EcologyEmotes

-------------------------------------------------------------------------------------------


function EcologyEmotes(NPC,Spawn)
            local choice = math.random(1,11)
            
                if choice == 1 then
	            PlayFlavor(NPC, "", "", "tap", 0, 0)
	            
	            elseif choice == 2 then
	            PlayFlavor(NPC, "", "", "ponder", 0, 0)
	            
                elseif choice == 3 then
	            PlayFlavor(NPC, "", "", "shiver", 0, 0)

	            
	            elseif choice == 4 then
	            PlayFlavor(NPC, "", "", "sniff", 0, 0)

	            
                elseif choice == 5 then
	            PlayFlavor(NPC, "", "", "confused", 0, 0)
 
	            
	            elseif choice == 6 then
	            PlayFlavor(NPC, "", "", "agree", 0, 0)

	            
	            elseif choice == 7 then
	            PlayFlavor(NPC, "", "", "nod", 0, 0)

	            
	            elseif choice == 8 then
	            PlayFlavor(NPC, "", "", "yawn", 0, 0)

	            
	            elseif choice == 9 then
	            PlayFlavor(NPC, "", "", "smirk", 0, 0)

	            
	           elseif choice == 10 then
	            PlayFlavor(NPC, "", "", "cough", 0, 0)

                elseif choice == 11 then
	            PlayFlavor(NPC, "", "", "sneeze", 0, 0)
    
                end
end

