--[[
    Script Name    : SpawnScripts/Generic/GenericEcologyVoiceOvers.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.12 04:03:04
    Script Purpose : For City Based/Race Based Voiceover Callouts - Improves Zone ecology/atmosphere. File facilitates ALL generic hails/callouts if they exist. 
               Note: VERIFY YOUR DESIRED RACE/GENDER/FACTION HAS VOs (We are missing many here)

         Functions: GenericEcologyHail(NPC, Spawn, faction)         for basic hails  
                    GenericEcologyCallout(NPC, Spawn, faction)      basic hails for nearby players  
                    
                    GenericEcology2Hail(NPC, Spawn, faction)        Alternate voices for basic hails     (Limited race selection)
                    GenericEcology2Callout(NPC, Spawn, faction)     Alternate basic hails for nearby players  

                    GenericRaceCheckHail(NPC, Spawn, faction)       racial-hails      
                    GenericRaceCheckCallout(NPC, Spawn, faction)    racial-hails for nearby players 
                    
                    GenericDrunkHail(NPC, Spawn, faction)           bar/drunk hails - Only Dwarves/Humans
                    GenericDrunkCallout(NPC, Spawn, faction)        bar drunk callout - Only Dwarves/Humans
                    
                    For Racial Language, consult dofile("SpawnScripts/Generic/UnknownLanguage.lua")
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

local TimeCheck = false                                                       -- used to delay between hail/callout uses

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function ResetTimer(NPC)                                                      -- resets timer afer initial use
   TimeCheck = false 
end


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
	TimeCheck = true                                                        -- sets timer
	AddTimer(NPC,2500,"ResetTimer")                                         -- starts reset clock
	if race >= 0 and race <= 18 and gender >= 1 and gender <= 2 then        -- verify's NPC race/gender
		if race == BARBARIAN then                                           -- begins NPC race check
			if gender == MALE then                                          -- begins NPC gender check
			    if EVIL then                                                -- begins NPC faction/location check
			    	if FPfaction <0 then                                    -- player faction check to determine resposne
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end			        
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
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_erudite_gm_6a360eb1.mp3", "I never was one for the books.  I guess that's why we leave them to you!", "no", 271638372, 933214140, Spawn)
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_iksar_gm_df4e01c0.mp3", "Scales are obviously tipped in my favor... Eh? Heh Hehuheh!", "chuckle", 2060746310, 2782545175, Spawn)
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end			        
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
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_halfelf_gm_4794558f.mp3", "If you really want to prove your courage in battle, get yourself a woad. Those can't be taken off so easily.", "nod", 1356161649, 134319671, Spawn)
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
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
                                    PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_d571c130.mp3", "I'm not used to this weather, but my people can adapt to any change in order to survive.", "no", 3421348121, 1004876500, Spawn)
                                    elseif choice == 2 then	
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
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "threaten", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_aoi_gf_ff7f6e34.mp3", "You must be cautious of the draws of evil.  We must master our temptations to preserve our city.", "nod", 4169564254, 3711533067, Spawn)
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
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_aeef4870.mp3", "I pray on you, stranger.  Dost thou any news on friends of Gukta?", "bow", 2960870988, 3925790084, Spawn)
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
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_a64f6eec.mp3", "What hast thou done?  When one greets a daughter of Marr, a small bow is in order!", "boggle", 2304123366, 1172967267, Spawn)
   	                elseif choice == 6 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_aaa0d7f3.mp3", "Marr ye good den.  How are't thou on this fine afternoond?", "hello", 725320917, 2360930144, Spawn)
   	                elseif choice == 7 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_c0864f03.mp3", "Now ye shall'th rejoyce within the taverns by night, but we shall not rest until the truth of our kin hath been discovered.", "happy", 1638938881, 2182528216, Spawn)
   	                elseif choice == 8 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_e4cf5b64.mp3", "How now, friend adventurer?  Has't thou seen other daughters of Marr in the wilds?", "ponder", 2966512768, 1279748767, Spawn)
   	                elseif choice == 9 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_f56ada2a.mp3", "The queen calls all of us to service.  We shall find our kin to serve her majesty.", "agree", 484194272, 1279748767, Spawn)
                    end                                                                                                                           
                end
			end

			
		elseif race == GNOME then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "scheme", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			    if GOOD then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_notcitizen_gm_ad3832d1.mp3", "Half-elves have the best of both worlds.", "thumbsup", 3804541486, 3539803287, Spawn)
				        end
				    else			        
                	local choice = math.random(1,5)
                        if choice == 1 then--RACE CHECK 
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_15163426.mp3", "You talk to strangers?  What's the purpose of that?", "", 1620470786, 1752689340, Spawn)
	                    elseif choice == 2 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_c91da8a3.mp3", "I have nothing to say to you right now.", "shrug", 2888703527, 1699968860, Spawn)
                        elseif choice == 3 then
                        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_highelf_gm_24cca44b.mp3", "You're no better than the rest of us, no matter whose blessing you think you have.", "", 1706562095, 4255036175, Spawn)
                        elseif choice == 4 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gm_2fa5fd3b.mp3", "We'll have to get together for a goblet of wine sometime soon.  Your treat.", "", 2999782150, 334868042, Spawn)
                        elseif choice == 5 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gm_876eb977.mp3", "I wish I had 'good old days' to remember, like you do.  Ah, well.  Best to worry about today and not yesterday.", "", 918037021, 185336532, Spawn)
	                    end
                    end

				elseif EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
	            	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_aoi_gf_f8dd15ce", " Got any coin?", "beg", 3660925534, 3735346681, Spawn)
		                end
	               end
				end
			end
	
	
	    elseif race == HALFLING then
			if gender == MALE then
		       if Qfaction < 0 then
                    local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "sulk", 0, 0, Spawn)
				        elseif choice == 2 then		           
		                PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 893626909, 4027326251, Spawn)
                        end
                else
	            local choice = math.random(1,3)

            	    if choice == 1 then
	           	    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_cd9164d6.mp3", "You're a stranger. And I don't like strangers, no sir I don't!", "sulk", 785726454, 3155500140, Spawn)
            	    elseif choice == 2 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_75c0e97c.mp3", "Welcome to the city, adventurer. Be mindful of the peace and quiet.  Here in Qeynos, we value our privacy.", "bow", 1955296899, 2249687997, Spawn)
                    elseif choice == 3 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_50622dfa.mp3", "Whoa, hello there!  Eager and in a hurry I see.  My advice, take your time.  The city isn't going anywhere.", "wave", 2627404831, 2664895493, Spawn)
                    end
                end

		elseif gender == FEMALE then
            if Qfaction <0 then
            	local choice = math.random(1,2)			      
		        if choice == 1 then
		        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_5afcbd03.mp3", "The streets aren't safe with your kind upon them!", "point", 3071247604, 671588271, Spawn)
                elseif choice == 2 then
		        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 1040511037, 3422590702, Spawn)
                end                
            else

            	local choice = math.random(1,6)		    
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
	                end
            end
	    end
    		
		
		elseif race == HIGH_ELF then
			if gender == MALE then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else			    
            	local choice = math.random(1,3)

                	if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_eb4f8f5d.mp3", "I hope you have been sent by someone of importance. I'm quite busy.", "yawn", 111891212, 1507953677, Spawn)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_4fa9c654.mp3", "How do you do! I am always pleased to meet a capable being, such as yourself.", "nod", 4124935177, 986848244, Spawn)
                	elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_6d02d4f.mp3", "Hail, friend and well met. I do hope your visits to our village are frequent. Too often do adventurers fail to return.", "stare", 1030195744, 970105613, Spawn)
            	    end
            	end
			elseif gender == FEMALE then
			    if Qfaction < 0 then  
			          local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        elseif choice == 2 then
                        PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "threaten", 3357669916, 1930978996, Spawn)
                        end
                else
				local choice = math.random(1,3)
	                if choice == 1 then
		            PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_aeb1a20f.mp3", "It is with honor that I welcome you to our community.", "thanks", 157565536, 4238836509, Spawn)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_a6a7e923.mp3", "Hail to you, it is indeed a pleasure.", "royalwave", 224557122, 3782103568, Spawn)
	                elseif choice == 3 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_869cb34a.mp3", "Hello, young adventurer. It is with the utmost delight that I greet you.", "fullcurtsey", 1236739692, 2465236460, Spawn)
                    end
                end
	    	end
		
		
		
		elseif race == HUMAN then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_55c7abb4.mp3", "If you know what's good for ya, you didn't see anything!", "shakefist", 3295550745, 254450600, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_8d2a0876.mp3", "That look's like an awfully expensive pair of boots there, my friend.", "ponder", 367255988, 2113438867, Spawn)
				        end
				    else  			        
                	local choice = math.random(1,9)

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
	                   	end
	                 end  	
				elseif GOOD then
                    if Qfaction <0 then
                 	local choice = math.random(1,3)
	                    if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_1a98f879.mp3", "How did you get past the city gates?!", "doubletake", 2984037816, 3824691347, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 1112175527, 3181748573, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_b24ac070.mp3", "Antonius Bayle!  Save us from this brute!", "scream", 271724567, 4059439523, Spawn)
                    	end
                    else
				    
                	local choice = math.random(1,5)

                    	if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_7e3b456a.mp3", "Hail, pleasure to meet you.", "agree", 471367832, 2417424572, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_ef2b9651.mp3", "Will you quit pestering me?  Don't force me to summon the guards!", "tapfoot", 3345611839, 1442739842, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_26f4c608.mp3", "Greetings visitor, I'm glad to meet you.", "bye", 1300497520, 2713745446, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_13b79d2d.mp3", "Welcome...welcome traveler, to the fair city of Qeynos! My, isn't it a magnificent day?", "hello", 3746934207, 794965138, Spawn)
		                elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_e58035f3.mp3", "What do you want? Leave me be!", "shrug", 1323474108, 3355478224, Spawn)
                    	elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gm_2c5409ba.mp3", "Another lovely day in the city of Qeynos!", "sigh", 2759856909, 614688407, Spawn)
                    	elseif choice == 7 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gm_4d212798.mp3", "I'm confident that the merchants of our village will fill all equipment needs with the utmost hospitality.", "smile", 2600666744, 586734676, Spawn)
                    	elseif choice == 8 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_9b2049a3.mp3", "Well met, friend.  It's good to make your acquaintance!", "bow", 754727055, 3165426316, Spawn)
	                    end
                    end 
				end
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			        
	            local choice = math.random(1,8)

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
	                    end
	                 end   
         
	                    
				elseif GOOD then
				    if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  
	                local choice = math.random(1,6)

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
                        local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then			            
		                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_notcitizen_gm_55c7abb4.mp3", "For Thall's sake, what is it?", "glare", 3110431219, 3470484865, Spawn)
			            end
			        else   
	            local choice = math.random(1,10)

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
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_164ffd98.mp3", "I can purr my way out of anything. ", "wink", 4263608089, 504552247, Spawn)
	                elseif choice == 9 then
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_aoi_gf_c9f2b4f1.mp3", "Friendship is too costly around here.", "sigh", 1983387905, 3075550393, Spawn)
	                elseif choice == 10 then
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_aoi_gm_38301159.mp3", "We can't help that!  We're all mad here!", "crazy", 1508409788, 219596858, Spawn)
	                end
                end
				elseif GOOD then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else				    
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
			end
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			        
                	local choice = math.random(1,4)

                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_9f680679.mp3", "I'd kill to know what the overlord has in that citadel!", "scheme", 3285282644, 3219725501, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_3fe55b38.mp3", "Why, don't I seem to be the popular one today.", "whome", 1475998222, 3731288810, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_895b5e07.mp3", "Everything has a price!  What's yours?", "shrug", 599093835, 2436498104, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_8a065b90.mp3", "I am a kindly master, just so long as you remember your place.", "scold", 1400094764, 1979877393, Spawn)
                    	end
                    end	
				elseif GOOD then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else				    
                	local choice = math.random(1,3)
            
                    	if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_28445ab7.mp3", "I don't spend as much time grooming as the others say I do.", "sulk", 2675025847, 2696760246, Spawn)
	                    elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_6c9e41c6.mp3", "Don't think that I'm silly, I just happen to like the simple little things.", "flustered", 1426227770, 2304966225, Spawn)
	                    elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_63881722.mp3", "I'm trying to find a new seasoning for my dried fish.", "ponder", 3802648946, 1171453079, Spawn)
                        end
			   	    end
		         end
		    end

		
		elseif race == OGRE then
			if gender == MALE then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			    
                	local choice = math.random(1,10)
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			    
	            local choice = math.random(1,4)

	                if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_5e63a07a.mp3", "If winning isn't everything, why do we keep score?", "sneer", 3927334706, 1835318852, Spawn)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_2c495445.mp3", "I dabble in repossessions and personal loans. ", "scheme", 4196817122, 2118800432, Spawn)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_9d45b59e.mp3", "There's no way they're better than us.  We have more.", "thanks", 187163254, 678724024, Spawn)
            	    elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_c698777f.mp3", "I was never even near the bank.", "whome", 3628945834, 3044934463, Spawn)
	           	    end
                end
	    elseif gender == FEMALE then
	            if FPfaction <0 then
                    local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "neener", 0, 0, Spawn)
				        elseif choice == 2 then	                
	                    PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gf_8d2a0876.mp3", "I heard you screaming from all the way over there.", "point", 3634348917, 2158238801, Spawn)
                        end
                else
			    local choice = math.random(1,6)
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
	                end
	    	    end
	    	 end

		
		
		elseif race == TROLL then
			if gender == MALE then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  
            	local choice = math.random(1,5)
            	    if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_f9319fbb.mp3", "I like killing things just to see them die.  Don't you?", "giggle", 2044250119, 1492935869, Spawn)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_60a4050b.mp3", "Me likes it when they are scared.  It tastes better that way.", "thanks", 2363588727, 2924742015, Spawn)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_46facad7.mp3", "If I eats you now, I wouldn't know what you were going to say.", "wink", 191047961, 2382342743, Spawn)
            	    elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_ae48977.mp3", "You can't eat money. Then why people care about it so much?", "wince", 404920869, 3492621289, Spawn)
        	        elseif choice == 5 then  
                    PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_630d65f1.mp3", "I used to have my own bridge before tasty dark elves took it from me.", "doh", 1590618969, 2701180460, Spawn)
        	        
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
            	local choice = math.random(1,6)
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
	 	            end
			    end
			 end   
			    
		elseif race == WOOD_ELF then
			if gender == MALE then
                if Qfaction <0 then
                    local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then                    
                  	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_notcitizen_gm_7e3f7ca.mp3", "I refuse to contaminate myself by conversing with trash.", "sulk", 2529393016, 3485196338, Spawn)
                        end
                else
            	local choice = math.random(1,7)
                    if choice == 1 then
	          	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_13f00546.mp3", "Patience they say, is a virtue.  It has taken a lot of patience to rebuild our lives so far from home.", "nod", 1108677104, 3869422611, Spawn)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_fcb14e3e.mp3", "We must remain steadfast and vigilant against tyranny.  This will allow nature to shape Norrath around us.   ", "shakefist", 3130983522, 101511459, Spawn)
	                elseif choice == 3 then
	            	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_62f30b60.mp3", "The Elddar Grove is truly a marvel in these troubled times.  ", "sigh", 303722838, 1259846495, Spawn)
	                elseif choice == 4 then
	               	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_1568024c.mp3", "I see that you have many adventures ahead of you.  This era of darkness is coming to a close.", "ponder", 3567183056, 3400757896, Spawn)
	                elseif choice == 5 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_75b61001.mp3", "Don't let the nice day fool you.  My knee is acting up, a storm is brewing.  I can smell it.", "stretch", 3641086231, 3980350899, Spawn)
	                elseif choice == 6 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_a2427d62.mp3", "They say time and nature heal all wounds.  Still, some wrongs can never be forgotten.", "sad", 2603397723, 1316741802, Spawn)
                    end
	            end
			elseif gender == FEMALE then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "wince", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else			    
            	local choice = math.random(1,5)

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
			if gender == MALE then
			    if EVIL then
			    GenericSpawnRaceHail(NPC, Spawn, faction)    
			    elseif GOOD then
			    GenericSpawnRaceHail(NPC, Spawn, faction)        
				end   
			elseif gender == FEMALE then
			    if GOOD then
			    GenericSpawnRaceHail(NPC, Spawn, faction)   
			    elseif EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else
	            local choice = math.random(1,2)

	                if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gf_eb029bed.mp3", "I am sickened by the lack of amenities within this city.", "flustered", 140632112, 1000708438, Spawn)
	                elseif choice == 2 then
	               	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gf_18ec7845.mp3", "Do you honestly believe I would speak with someone like you?", "boggle", 2993277341, 1897394040, Spawn)

	                end
	             end
			  end

			    
		elseif race == DWARF then
			if gender == MALE then
			    GenericSpawnRaceHail(NPC, Spawn, faction)  
		    elseif gender == FEMALE then
		    	GenericSpawnRaceHail(NPC, Spawn, faction)  
		    end
	    	
		
	    elseif race== ERUDITE then
			if gender == MALE then
	            	GenericSpawnRaceHail(NPC, Spawn, faction) 
                   end 	
                    	
				elseif GOOD then
		    	    GenericSpawnRaceHail(NPC, Spawn, faction)  
                    end
				
			elseif gender == FEMALE then
			    if EVIL then
		    	    GenericSpawnRaceHail(NPC, Spawn, faction)                		               		               		               		               		               		               		               	                
	           
				elseif GOOD then
		    	    GenericSpawnRaceHail(NPC, Spawn, faction)  
			        end	
			
		    elseif race == FROGLOK then
		    	if gender == MALE then
		    	    GenericSpawnRaceHail(NPC, Spawn, faction)  
	           
             elseif gender == FEMALE then
            		GenericSpawnRaceHail(NPC, Spawn, faction)  
			        end

		elseif race == GNOME then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "scheme", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			        
                    local choice = math.random(1,8)
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

      	                end
	            end		        
				elseif GOOD then
            		GenericSpawnRaceHail(NPC, Spawn, faction) 
                end
			elseif gender == FEMALE then
			    if GOOD then
	            	GenericSpawnRaceHail(NPC, Spawn, faction) 
 				elseif EVIL then
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
	            	GenericSpawnRaceHail(NPC, Spawn, faction) 
				elseif EVIL then
	            	GenericSpawnRaceHail(NPC, Spawn, faction) 
	           end   	

			elseif gender == FEMALE then
			    if EVIL then
	            	GenericSpawnRaceHail(NPC, Spawn, faction) 
				elseif GOOD then
	            	GenericSpawnRaceHail(NPC, Spawn, faction) 
				end
			end
	
	
	    elseif race == HALFLING then
			if gender == MALE then
	            GenericSpawnRaceHail(NPC, Spawn, faction) 
    		elseif gender == FEMALE then
	            GenericSpawnRaceHail(NPC, Spawn, faction) 
	        end
    		
		
		elseif race == HIGH_ELF then
			if gender == MALE then
	            	GenericSpawnRaceHail(NPC, Spawn, faction) 
			elseif gender == FEMALE then
	            	GenericSpawnRaceHail(NPC, Spawn, faction) 
	    	end
		
		
		
		elseif race == HUMAN then
			if gender == MALE then
			    if EVIL then
	            	GenericSpawnRaceHail(NPC, Spawn, faction) 	
				elseif GOOD then
	            	GenericSpawnRaceHail(NPC, Spawn, faction) 
                     end
				
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			        
	                local choice = math.random(1,10)
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
	                    end
	                 end   
 
				elseif GOOD then
	            	GenericSpawnRaceHail(NPC, Spawn, faction) 
                end
            end
		
		elseif race == IKSAR then
			if gender == MALE then
	            	GenericSpawnRaceHail(NPC, Spawn, faction) 
				
		    elseif gender == FEMALE then
	            	GenericSpawnRaceHail(NPC, Spawn, faction)   			
			end
			
		elseif race == KERRA then
			if gender == MALE then
			    if EVIL then
			        GenericSpawnRaceHail(NPC, Spawn, faction) 
                
				elseif GOOD then
	            	GenericSpawnRaceHail(NPC, Spawn, faction) 
			    end
			elseif gender == FEMALE then
			    if EVIL then
			    	GenericSpawnRaceHail(NPC, Spawn, faction) 
				elseif GOOD then
			       	GenericSpawnRaceHail(NPC, Spawn, faction) 
		          end
		
		elseif race == OGRE then
			if gender == MALE then
	            	GenericSpawnRaceHail(NPC, Spawn, faction) 	
			elseif gender == FEMALE then
	            	GenericSpawnRaceHail(NPC, Spawn, faction) 
			      end
			
			
		elseif race == RATONGA then
			if gender == MALE then
	            	GenericSpawnRaceHail(NPC, Spawn, faction) 
                
	    elseif gender == FEMALE then
	            	GenericSpawnRaceHail(NPC, Spawn, faction) 
	    	    end

		
		
		elseif race == TROLL then
			if gender == MALE then
	            	GenericSpawnRaceHail(NPC, Spawn, faction) 
        	    
			elseif gender == FEMALE then
	            	GenericSpawnRaceHail(NPC, Spawn, faction) 
			    end   
			    
		elseif race == WOOD_ELF then
			if gender == MALE then
	            	GenericSpawnRaceHail(NPC, Spawn, faction) 
	            
			elseif gender == FEMALE then
	            	GenericSpawnRaceHail(NPC, Spawn, faction) 
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

--                                  GenericSpawnRaceHail

-------------------------------------------------------------------------------------------

function GenericSpawnRaceHail(NPC, Spawn, faction)
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
			if gender == MALE then
			    if EVIL then
				    local choice = math.random(1,3)
                        if choice == 1 then	
		                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_hail_gm_431b37d1.mp3", "Watch yerself, this city can be rough.", "wink", 1560541305, 226492698, Spawn)
		                elseif choice == 2 then	
                        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_hail_gm_dd0b4913.mp3", "Hah! New around these parts?", "hello", 3252919562, 342739868, Spawn)
                        elseif choice == 3 then				        
				            if spawnRace == BARBARIAN then
                            PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_barbarian_gm_df05bfb0.mp3", "You can push anyone around here except the ogres and trolls.", "nod", 1644989273, 3794783731, Spawn)
                            elseif spawnRace == DARK_ELF then
                            PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_barbarian_gm_df05bfb0.mp3", "Straying a bit, are we?", "glare", 4033200255, 1327891280, Spawn)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_erudite_gm_6a360eb1.mp3", "I never was one for the books.  I guess that's why we leave them to you!", "no", 271638372, 933214140, Spawn)
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_iksar_gm_df4e01c0.mp3", "Scales are obviously tipped in my favor... Eh? Heh Hehuheh!", "chuckle", 2060746310, 2782545175, Spawn)
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
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_halfelf_gm_4794558f.mp3", "If you really want to prove your courage in battle, get yourself a woad. Those can't be taken off so easily.", "nod", 1356161649, 134319671, Spawn)
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
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
                                     PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_d571c130.mp3", "I'm not used to this weather, but my people can adapt to any change in order to survive.", "no", 3421348121, 1004876500, Spawn)
                                    elseif choice == 2 then	
                                    PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_5a6b643f.mp3", "Treasures from the past can be found throughout the lands for those who care to look.", "nod", 3614931515, 1601871948, Spawn)
				       		        end                   
		                    end
                        elseif choice == 2 then	
                        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_d571c130.mp3", "I'm not used to this weather, but my people can adapt to any change in order to survive.", "no", 3421348121, 1004876500, Spawn)
                        elseif choice == 3 then	
                        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_5a6b643f.mp3", "Treasures from the past can be found throughout the lands for those who care to look.", "nod", 3614931515, 1601871948, Spawn)
				        end
				    end   
			elseif gender == FEMALE then
			    if GOOD then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
--[[            	local choice = math.random(1,4)

	                    if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_ratonga_gm_4d3aaca.mp3", "One day, I may have use for your services, sneaky.", "nod", 1373077305, 3004061362, Spawn)
	                    elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gm_43bd22f2.mp3", "Greetings.  One day I hope everyone bows before my intellect.", "hello", 3316681960, 3617003101, Spawn)
	                    elseif choice == 3 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gm_9bc2cf77.mp3", "My time is too valuable to be spent chatting.", "bye", 788162420, 1166698384, Spawn)
	                    elseif choice == 4 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_iksar_gm_2cdba125.mp3", "It's a shame Cabalis isn't around, it would have made an interesting study.", "sigh", 3903013371, 226829195, Spawn)
                    	end]]--		                    	
                    	
				elseif GOOD then
				    if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "threaten", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_aoi_gf_ff7f6e34.mp3", "You must be cautious of the draws of evil.  We must master our temptations to preserve our city.", "nod", 4169564254, 3711533067, Spawn)
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
--[[	            local choice = math.random(1,4)

	                    if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_hail_gf_24e3a5aa.mp3", "I have learned that it is best to trust to your own wisdom rather than the weaponry of your acquaintances.", "", 2387566735, 2940828519, Spawn)
                    	elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_gnome_gf_885ee58d.mp3", "The machinations of the average gnome's mind are really best left untouched.", "", 499883228, 2559247313, Spawn)
	                    elseif choice == 3 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_hail_gf_8f458045.mp3", "Please, I am in the midst of solving a very complex problem and must not be interrupted.", "", 971990033, 2178584483, Spawn)
	                    elseif choice == 4 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_highelf_gf_cfbdf659.mp3", "That ensemble is quite becoming to you.  Almost as good as my own.", "", 2314937497, 2446209028, Spawn)
	
	                    end]]--				
			
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
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_aeef4870.mp3", "I pray on you, stranger.  Dost thou any news on friends of Gukta?", "bow", 2960870988, 3925790084, Spawn)
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
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_a64f6eec.mp3", "What hast thou done?  When one greets a daughter of Marr, a small bow is in order!", "boggle", 2304123366, 1172967267, Spawn)
   	                elseif choice == 6 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_aaa0d7f3.mp3", "Marr ye good den.  How are't thou on this fine afternoond?", "hello", 725320917, 2360930144, Spawn)
   	                elseif choice == 7 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_c0864f03.mp3", "Now ye shall'th rejoyce within the taverns by night, but we shall not rest until the truth of our kin hath been discovered.", "happy", 1638938881, 2182528216, Spawn)
   	                elseif choice == 8 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_e4cf5b64.mp3", "How now, friend adventurer?  Has't thou seen other daughters of Marr in the wilds?", "ponder", 2966512768, 1279748767, Spawn)
   	                elseif choice == 9 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_f56ada2a.mp3", "The queen calls all of us to service.  We shall find our kin to serve her majesty.", "agree", 484194272, 1279748767, Spawn)
                    end                                                                                                                           
                end
			end
--[[            	local choice = math.random(1,4)
--RACE CHECK
                	if choice == 1 then
                	PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_gnome_gf_42177c87.mp3", "What's that? All thy mutterings about whizzlegigs and furbelows is quite unintelligible.", "", 3856971048, 2722248899, Spawn)
                	elseif choice == 2 then
                	PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_hail_gf_cd3d026e.mp3", "Always step carefully within the city limits -- and even more carefully when outside of the city.", "", 2864618200, 434416947, Spawn)
                	elseif choice == 3 then
                	PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_hail_gf_eae44fad.mp3", "May the blessings of Mithaniel Marr be upon you.", "", 2437408909, 3055505253, Spawn)
                	elseif choice== 4 then
                	PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_highelf_gf_d3687a91.mp3", "It is good to see elven-kind here in Qeynos who can help us defend the laws of the land. ", "", 3596392273, 2126265241, Spawn)
-]]      			
			
		elseif race == GNOME then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "scheme", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
--[[	            local choice = math.random(1,2)

	                    if choice == 1 then
	                   	PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_hail_gf_39da4f6d.mp3", "Cheers and boggle chippers to you!", "", 3143145827, 3768593316, Spawn)
	                    elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_barbarian_gf_68486376.mp3", "Watch your step, you rusty-pated, slow-witted, half-turned knob on a cognizoid!  Can't you see I'm busy?", "", 2020911566, 1624319994, Spawn)
    	
                        end]]--  
                    
				elseif EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			    if GOOD then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else			        
                	local choice = math.random(1,5)
                        if choice == 1 then--RACE CHECK 
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_15163426.mp3", "You talk to strangers?  What's the purpose of that?", "", 1620470786, 1752689340, Spawn)
	                    elseif choice == 2 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_c91da8a3.mp3", "I have nothing to say to you right now.", "shrug", 2888703527, 1699968860, Spawn)
                        elseif choice == 3 then
                        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_highelf_gm_24cca44b.mp3", "You're no better than the rest of us, no matter whose blessing you think you have.", "", 1706562095, 4255036175, Spawn)
                        elseif choice == 4 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gm_2fa5fd3b.mp3", "We'll have to get together for a goblet of wine sometime soon.  Your treat.", "", 2999782150, 334868042, Spawn)
                        elseif choice == 5 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gm_876eb977.mp3", "I wish I had 'good old days' to remember, like you do.  Ah, well.  Best to worry about today and not yesterday.", "", 918037021, 185336532, Spawn)
	                    end
                    end

	                        
				elseif EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
	              --[[  local choice = math.random(1,6)

	                    if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_darkelf_gf_b7243656.mp3", "Get out of here, before I get a few friends and teach you whose turf this is!", "threaten", 1591785045, 2161856385, Spawn)
	                    elseif choice == 2 then
	                   	PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_woodelf_gf_15785897.mp3", "Harumph. I came to Freeport to get away from your kind.", "yawn", 3646199817, 3971791216, Spawn)
	                    elseif choice == 3 then
	                   	PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_ratonga_gf_9f5502a.mp3", "Where have your sneaky fingers been today?  Hopefully not in my pocket.", "ponder", 3377223212, 405360644, Spawn)
	                    elseif choice == 4 then
	                   	PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_hail_gf_817ed115.mp3", "Sometimes you have to take what you want.", "nod", 235476376, 378561265, Spawn)
	                    elseif choice == 5 then
	                  	PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_hail_gf_3f18f86f.mp3", "Freeport has everything you could want: intrigue, murder, and greed!", "hello", 5269968, 3778619854, Spawn)
                        end]]--
	   				
	   		    		
			elseif gender == FEMALE then
			    if EVIL then
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
	            	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_aoi_gf_f8dd15ce", " Got any coin?", "beg", 3660925534, 3735346681, Spawn)
		                end
	               end
				end
			end
	
	
	    elseif race == HALFLING then
			if gender == MALE then
		       if Qfaction < 0 then
                    local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "sulk", 0, 0, Spawn)
				        elseif choice == 2 then		           
		                PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 893626909, 4027326251, Spawn)
                        end
                else
	            local choice = math.random(1,3)

            	    if choice == 1 then
	           	    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_cd9164d6.mp3", "You're a stranger. And I don't like strangers, no sir I don't!", "sulk", 785726454, 3155500140, Spawn)
            	    elseif choice == 2 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_75c0e97c.mp3", "Welcome to the city, adventurer. Be mindful of the peace and quiet.  Here in Qeynos, we value our privacy.", "bow", 1955296899, 2249687997, Spawn)
                    elseif choice == 3 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_50622dfa.mp3", "Whoa, hello there!  Eager and in a hurry I see.  My advice, take your time.  The city isn't going anywhere.", "wave", 2627404831, 2664895493, Spawn)
                    end
                end
--              PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_woodelf_gm_b160d4db.mp3", "You must miss home, too, huh?  I've never seen it myself, but I wish I could return to Rivervale.", "", 3826858900, 561795809, Spawn)
            
		elseif gender == FEMALE then
            if Qfaction <0 then
            	local choice = math.random(1,2)			      
		        if choice == 1 then
		        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_5afcbd03.mp3", "The streets aren't safe with your kind upon them!", "point", 3071247604, 671588271, Spawn)
                elseif choice == 2 then
		        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 1040511037, 3422590702, Spawn)
                end                
            else
 --	PlayFlavor(NPC, "voiceover/english/optional2/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_gnome_gf_8e6f2cee.mp3", "What're you working on now, hmm?  Hope this one works out!", "", 1396523759, 1857436654, Spawn)
               
            	local choice = math.random(1,6)		    
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
	                end
            end
	    end
    		
		
		elseif race == HIGH_ELF then
			if gender == MALE then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else			    
            	local choice = math.random(1,3)

                	if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_eb4f8f5d.mp3", "I hope you have been sent by someone of importance. I'm quite busy.", "yawn", 111891212, 1507953677, Spawn)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_4fa9c654.mp3", "How do you do! I am always pleased to meet a capable being, such as yourself.", "nod", 4124935177, 986848244, Spawn)
                	elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_6d02d4f.mp3", "Hail, friend and well met. I do hope your visits to our village are frequent. Too often do adventurers fail to return.", "stare", 1030195744, 970105613, Spawn)
            	    end
            	end
			elseif gender == FEMALE then
			    if Qfaction < 0 then  
			          local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        elseif choice == 2 then
                        PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "threaten", 3357669916, 1930978996, Spawn)
                        end
                else
				local choice = math.random(1,3)
	                if choice == 1 then
		            PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_aeb1a20f.mp3", "It is with honor that I welcome you to our community.", "thanks", 157565536, 4238836509, Spawn)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_a6a7e923.mp3", "Hail to you, it is indeed a pleasure.", "royalwave", 224557122, 3782103568, Spawn)
	                elseif choice == 3 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_869cb34a.mp3", "Hello, young adventurer. It is with the utmost delight that I greet you.", "fullcurtsey", 1236739692, 2465236460, Spawn)
                    end
                end
	    	end
		
		
		
		elseif race == HUMAN then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_55c7abb4.mp3", "If you know what's good for ya, you didn't see anything!", "shakefist", 3295550745, 254450600, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_8d2a0876.mp3", "That look's like an awfully expensive pair of boots there, my friend.", "ponder", 367255988, 2113438867, Spawn)
				        end
				    else  			        
                	local choice = math.random(1,9)

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
	                   	end
	                 end  	
				elseif GOOD then
                    if Qfaction <0 then
                 	local choice = math.random(1,3)
	                    if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_1a98f879.mp3", "How did you get past the city gates?!", "doubletake", 2984037816, 3824691347, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 1112175527, 3181748573, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_b24ac070.mp3", "Antonius Bayle!  Save us from this brute!", "scream", 271724567, 4059439523, Spawn)
                    	end
                    else
				    
                	local choice = math.random(1,5)

                    	if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_7e3b456a.mp3", "Hail, pleasure to meet you.", "agree", 471367832, 2417424572, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_ef2b9651.mp3", "Will you quit pestering me?  Don't force me to summon the guards!", "tapfoot", 3345611839, 1442739842, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_26f4c608.mp3", "Greetings visitor, I'm glad to meet you.", "bye", 1300497520, 2713745446, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_13b79d2d.mp3", "Welcome...welcome traveler, to the fair city of Qeynos! My, isn't it a magnificent day?", "hello", 3746934207, 794965138, Spawn)
		                elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_e58035f3.mp3", "What do you want? Leave me be!", "shrug", 1323474108, 3355478224, Spawn)
                    	elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gm_2c5409ba.mp3", "Another lovely day in the city of Qeynos!", "sigh", 2759856909, 614688407, Spawn)
                    	elseif choice == 7 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gm_4d212798.mp3", "I'm confident that the merchants of our village will fill all equipment needs with the utmost hospitality.", "smile", 2600666744, 586734676, Spawn)
                    	elseif choice == 8 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_9b2049a3.mp3", "Well met, friend.  It's good to make your acquaintance!", "bow", 754727055, 3165426316, Spawn)
	                    end
                    end 
				end
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else
	        local choice = math.random(1,8)

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
	                    end				        
	                 end   
	                    
				elseif GOOD then
				    if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
                	    end
	   				end
	    	    end
            end
--[[	           local choice = math.random(1,6)

	                    if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gf_837968a9.mp3", "Oh, my aching back!  As good a time to stop and chat as any, I say.", "yawn", 3270846909, 2717985314, Spawn)
                    	elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_froglok_gf_b1da0602.mp3", "Hail to you, short and shiny one!", "", 2380925828, 15459918, Spawn)
                    	elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_woodelf_gf_2ab5b9e2.mp3", "I wish I had the ability to keep the plants in my home happy.", "", 2624412872, 2478031045, Spawn)
                     	elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_gnome_gf_a777615.mp3", "I wish I knew what some of these new-fangled gnomish inventions are meant to do.", "", 1410161766, 2130476086, Spawn)
                    	elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gf_2d0e8823.mp3", "Almost time to stop and have an ale, isn't it?", "wink", 1106325239, 2982056892, Spawn)
                    	elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_highelf_gf_a4ddebdc.mp3", "A good day in Qeynos always beats a bad day anywhere else.", "", 2563785575, 2973629845, Spawn)
                    	end]]-- 
               		
		
		elseif race == IKSAR then
			if gender == MALE then
			        if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroath", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  
	                local choice = math.random(1,6)

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
--[[	            local choice = math.random(1,4)
	                if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_darkelf_gf_41fe94ed.mp3", "We share a similar fate -- cast from our homes by the destruction of our world.", "hello", 735434566, 2925685625, Spawn)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_hail_gf_5cacd110.mp3", "If you need help, please find someone who'll provide it.", "shrug", 529474944, 2390194258, Spawn)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_hail_gf_c15f0740.mp3", "Welcome. We greet you.", "yawn", 3949639532, 268039246, Spawn)
            	    elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_ratonga_gf_d01ccae8.mp3", "I wonder where you have come from... so little history to draw on.", "ponder", 3355738899, 1187010903, Spawn)
        	        end	]]--    			
			
			
		elseif race == KERRA then
			if gender == MALE then
			    if EVIL then
			        if FPfaction < 0 then
                        local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then			            
		                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_notcitizen_gm_55c7abb4.mp3", "For Thall's sake, what is it?", "glare", 3110431219, 3470484865, Spawn)
			            end
			        else   
	            local choice = math.random(1,10)

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
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_164ffd98.mp3", "I can purr my way out of anything. ", "wink", 4263608089, 504552247, Spawn)
	                elseif choice == 9 then
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_aoi_gf_c9f2b4f1.mp3", "Friendship is too costly around here.", "sigh", 1983387905, 3075550393, Spawn)
	                elseif choice == 10 then
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_aoi_gm_38301159.mp3", "We can't help that!  We're all mad here!", "crazy", 1508409788, 219596858, Spawn)
	                end
                end
				elseif GOOD then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else				    
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
			end
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			        
                	local choice = math.random(1,4)

                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_9f680679.mp3", "I'd kill to know what the overlord has in that citadel!", "scheme", 3285282644, 3219725501, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_3fe55b38.mp3", "Why, don't I seem to be the popular one today.", "whome", 1475998222, 3731288810, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_895b5e07.mp3", "Everything has a price!  What's yours?", "shrug", 599093835, 2436498104, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_8a065b90.mp3", "I am a kindly master, just so long as you remember your place.", "scold", 1400094764, 1979877393, Spawn)
                    	end
                    end	
				elseif GOOD then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else				    
                	local choice = math.random(1,3)
            
                    	if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_28445ab7.mp3", "I don't spend as much time grooming as the others say I do.", "sulk", 2675025847, 2696760246, Spawn)
	                    elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_6c9e41c6.mp3", "Don't think that I'm silly, I just happen to like the simple little things.", "flustered", 1426227770, 2304966225, Spawn)
	                    elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_63881722.mp3", "I'm trying to find a new seasoning for my dried fish.", "ponder", 3802648946, 1171453079, Spawn)
                        end
			   	    end
		         end
		    end
 --[[               	local choice = math.random(1,4)
--RACE CHECK
                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_gnome_gf_5efa2600.mp3", "You make my tail twitch with all your cogs and flizgigs.  Please, keep those away from me.", "", 749990561, 792243248, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gf_925a7b74.mp3", "Give me the simplicity of life as the kerra once knew it, and I'll be satisfied.", "", 3093126564, 1574100386, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gf_4ae9178a.mp3", "I would like nothing better than to be with my pride, away from the bustle of any town.", "", 261206360, 3555440428, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_highelf_gf_d5455b09.mp3", "Good leaders bide their time, planning all the while.  I'm sure you already know this.", "", 2270743009, 1129155946, Spawn)
]]--			
		
		elseif race == OGRE then
			if gender == MALE then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			    
                	local choice = math.random(1,10)
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			    
	            local choice = math.random(1,4)

	                if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_5e63a07a.mp3", "If winning isn't everything, why do we keep score?", "sneer", 3927334706, 1835318852, Spawn)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_2c495445.mp3", "I dabble in repossessions and personal loans. ", "scheme", 4196817122, 2118800432, Spawn)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_9d45b59e.mp3", "There's no way they're better than us.  We have more.", "thanks", 187163254, 678724024, Spawn)
            	    elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_c698777f.mp3", "I was never even near the bank.", "whome", 3628945834, 3044934463, Spawn)
	           	    end
                end
	    elseif gender == FEMALE then
	            if FPfaction <0 then
                    local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "neener", 0, 0, Spawn)
				        elseif choice == 2 then	                
	                    PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gf_8d2a0876.mp3", "I heard you screaming from all the way over there.", "point", 3634348917, 2158238801, Spawn)
                        end
                else
			    local choice = math.random(1,6)
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
	                end
	    	    end
	    	 end
		    --[[	local choice = math.random(1,4)

	                if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_darkelf_gf_12accc66.mp3", "Perhaps the dark ones will require our services in the future.", "scheme", 3576261185, 2087562403, Spawn)
	                elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_hail_gf_5fe381f6.mp3", "Yes, yes, that will do nicely... err, hello, who are you?", "scheme", 3504817921, 2028500155, Spawn)
	                elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_ratonga_gf_7fcc0516.mp3", "Watch for the trolls, they like to eats us!", "hello", 1635718299, 1583941867, Spawn)
                	elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_ratonga_gf_95e0fb2a.mp3", "Small and fast, we go where others can't!", "nod", 362113991, 3436119366, Spawn)
]]--		    
		
		
		elseif race == TROLL then
			if gender == MALE then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  
            	local choice = math.random(1,4)
-- EXTRA            PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_630d65f1.mp3", "I used to have my own bridge before tasty dark elves took it from me.", "doh", 1590618969, 2701180460, Spawn)
            	    if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_f9319fbb.mp3", "I like killing things just to see them die.  Don't you?", "giggle", 2044250119, 1492935869, Spawn)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_60a4050b.mp3", "Me likes it when they are scared.  It tastes better that way.", "thanks", 2363588727, 2924742015, Spawn)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_46facad7.mp3", "If I eats you now, I wouldn't know what you were going to say.", "wink", 191047961, 2382342743, Spawn)
            	    elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_ae48977.mp3", "You can't eat money. Then why people care about it so much?", "wince", 404920869, 3492621289, Spawn)
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
            	local choice = math.random(1,6)
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
	 	            end
			    end
			 end   
			    
		elseif race == WOOD_ELF then
			if gender == MALE then
                if Qfaction <0 then
                    local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then                    
                  	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_notcitizen_gm_7e3f7ca.mp3", "I refuse to contaminate myself by conversing with trash.", "sulk", 2529393016, 3485196338, Spawn)
                        end
                else
            	local choice = math.random(1,7)
                    if choice == 1 then
	          	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_13f00546.mp3", "Patience they say, is a virtue.  It has taken a lot of patience to rebuild our lives so far from home.", "nod", 1108677104, 3869422611, Spawn)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_fcb14e3e.mp3", "We must remain steadfast and vigilant against tyranny.  This will allow nature to shape Norrath around us.   ", "shakefist", 3130983522, 101511459, Spawn)
	                elseif choice == 3 then
	            	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_62f30b60.mp3", "The Elddar Grove is truly a marvel in these troubled times.  ", "sigh", 303722838, 1259846495, Spawn)
	                elseif choice == 4 then
	               	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_1568024c.mp3", "I see that you have many adventures ahead of you.  This era of darkness is coming to a close.", "ponder", 3567183056, 3400757896, Spawn)
	                elseif choice == 5 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_75b61001.mp3", "Don't let the nice day fool you.  My knee is acting up, a storm is brewing.  I can smell it.", "stretch", 3641086231, 3980350899, Spawn)
	                elseif choice == 6 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_a2427d62.mp3", "They say time and nature heal all wounds.  Still, some wrongs can never be forgotten.", "sad", 2603397723, 1316741802, Spawn)
                    end
	            end
			elseif gender == FEMALE then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "wince", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else			    
            	local choice = math.random(1,5)

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
	        	    end    
                end   
            end
--[[	            local choice = math.random(1,7)

	                    if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_3e59423a.mp3", "The blessing of Tunare is the highest blessing of all.", "", 853299003, 3297095439, Spawn)
	                    elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_halfelf_gf_2474b915.mp3", "Let us meet later for a goblet of wine!  I'm sure you have great tales to tell.", "", 2915398014, 2744924447, Spawn)
                    	elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_halfelf_gf_eb3acf89.mp3", "I don't understand the need for piercings, but they look fine on you.", "", 1366742481, 2195063196, Spawn)
                    	elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_woodelf_gf_5621269a.mp3", "I too long for my home in Faydark.  Someday Tunare will answer us, I'm sure.", "", 3953058409, 3176959607, Spawn)
                    	elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_status_gf_80ffe645.mp3", "You have proven yourself among all those who doubt the Feir'Dal's worth.  Well done!", "", 670005551, 4229139858, Spawn)
                    	elseif choice == 6 then
	                   	PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_woodelf_gf_601050b5.mp3", "May Tunare's blessings be with you and yours.", "", 3511142094, 3935712685, Spawn)
                    	elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_darkelf_gf_894a567a.mp3", "The Feir`Dal will not let this traitor of the elven race reside within these city walls. Expect no more than a short welcome here.", "", 26640370, 1478096414, Spawn)
	
	                    end]]--	
	
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
				    local choice = math.random(1,3)
                        if choice == 1 then	
		                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_hail_gm_431b37d1.mp3", "Watch yerself, this city can be rough.", "wink", 1560541305, 226492698, Spawn)
		                elseif choice == 2 then	
                        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_hail_gm_dd0b4913.mp3", "Hah! New around these parts?", "hello", 3252919562, 342739868, Spawn)
                        elseif choice == 3 then				        
				            if spawnRace == BARBARIAN then
                            PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_barbarian_gm_df05bfb0.mp3", "You can push anyone around here except the ogres and trolls.", "nod", 1644989273, 3794783731, Spawn)
                            elseif spawnRace == DARK_ELF then
                            PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_barbarian_gm_df05bfb0.mp3", "Straying a bit, are we?", "glare", 4033200255, 1327891280, Spawn)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_erudite_gm_6a360eb1.mp3", "I never was one for the books.  I guess that's why we leave them to you!", "no", 271638372, 933214140, Spawn)
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_iksar_gm_df4e01c0.mp3", "Scales are obviously tipped in my favor... Eh? Heh Hehuheh!", "chuckle", 2060746310, 2782545175, Spawn)
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
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_halfelf_gm_4794558f.mp3", "If you really want to prove your courage in battle, get yourself a woad. Those can't be taken off so easily.", "nod", 1356161649, 134319671, Spawn)
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
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
                                     PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_d571c130.mp3", "I'm not used to this weather, but my people can adapt to any change in order to survive.", "no", 3421348121, 1004876500, Spawn)
                                    elseif choice == 2 then	
                                    PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_5a6b643f.mp3", "Treasures from the past can be found throughout the lands for those who care to look.", "nod", 3614931515, 1601871948, Spawn)
				       		        end                   
		                    end
                        elseif choice == 2 then	
                        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_d571c130.mp3", "I'm not used to this weather, but my people can adapt to any change in order to survive.", "no", 3421348121, 1004876500, Spawn)
                        elseif choice == 3 then	
                        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_5a6b643f.mp3", "Treasures from the past can be found throughout the lands for those who care to look.", "nod", 3614931515, 1601871948, Spawn)
				        end
				    end   
			elseif gender == FEMALE then
			    if GOOD then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			    --[[
	            local choice = math.random(1,4)

	                if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_7d00f821.mp3", "All those rumors about the people I decapitated are false, trust me. I decapitated many more by my count.", "pout", 2231247084, 2781311359, Spawn)
	                elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_56e1abc5.mp3", "Don't worry. The last time I killed someone was a few months ago. I've almost forgot how its done.", "threaten", 3295546544, 225622615, Spawn)
                	elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_7c898040.mp3", "If I wanted to speak with riff raff like you, you'd know it.", "scold", 2131940659, 1785120161, Spawn)
                 	elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_c76c11b.mp3", "No, I didn't say you could look at me or talk to me for that matter.", "heckno", 1951847708, 3399171438, Spawn)
	                end]]--		
		
		elseif race == DARK_ELF then
			if gender == MALE then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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

--[[		  local choice = math.random(1,6)
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
		          end--]]
		elseif gender == FEMALE then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
		  --[[	local choice = math.random(1,2)

	                if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gf_eb029bed.mp3", "I am sickened by the lack of amenities within this city.", "flustered", 140632112, 1000708438, Spawn)
	                elseif choice == 2 then
	               	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gf_18ec7845.mp3", "Do you honestly believe I would speak with someone like you?", "boggle", 2993277341, 1897394040, Spawn)

	                end]]--
			    
			    
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
--[[            	local choice = math.random(1,4)

	                    if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_ratonga_gm_4d3aaca.mp3", "One day, I may have use for your services, sneaky.", "nod", 1373077305, 3004061362, Spawn)
	                    elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gm_43bd22f2.mp3", "Greetings.  One day I hope everyone bows before my intellect.", "hello", 3316681960, 3617003101, Spawn)
	                    elseif choice == 3 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gm_9bc2cf77.mp3", "My time is too valuable to be spent chatting.", "bye", 788162420, 1166698384, Spawn)
	                    elseif choice == 4 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_iksar_gm_2cdba125.mp3", "It's a shame Cabalis isn't around, it would have made an interesting study.", "sigh", 3903013371, 226829195, Spawn)
                    	end]]--		                    	
                    	
				elseif GOOD then
				    if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "threaten", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_aoi_gf_ff7f6e34.mp3", "You must be cautious of the draws of evil.  We must master our temptations to preserve our city.", "nod", 4169564254, 3711533067, Spawn)
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
--[[	            local choice = math.random(1,4)

	                    if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_hail_gf_24e3a5aa.mp3", "I have learned that it is best to trust to your own wisdom rather than the weaponry of your acquaintances.", "", 2387566735, 2940828519, Spawn)
                    	elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_gnome_gf_885ee58d.mp3", "The machinations of the average gnome's mind are really best left untouched.", "", 499883228, 2559247313, Spawn)
	                    elseif choice == 3 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_hail_gf_8f458045.mp3", "Please, I am in the midst of solving a very complex problem and must not be interrupted.", "", 971990033, 2178584483, Spawn)
	                    elseif choice == 4 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_highelf_gf_cfbdf659.mp3", "That ensemble is quite becoming to you.  Almost as good as my own.", "", 2314937497, 2446209028, Spawn)
	
	                    end]]--				
			
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
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_aeef4870.mp3", "I pray on you, stranger.  Dost thou any news on friends of Gukta?", "bow", 2960870988, 3925790084, Spawn)
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
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_a64f6eec.mp3", "What hast thou done?  When one greets a daughter of Marr, a small bow is in order!", "boggle", 2304123366, 1172967267, Spawn)
   	                elseif choice == 6 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_aaa0d7f3.mp3", "Marr ye good den.  How are't thou on this fine afternoond?", "hello", 725320917, 2360930144, Spawn)
   	                elseif choice == 7 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_c0864f03.mp3", "Now ye shall'th rejoyce within the taverns by night, but we shall not rest until the truth of our kin hath been discovered.", "happy", 1638938881, 2182528216, Spawn)
   	                elseif choice == 8 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_e4cf5b64.mp3", "How now, friend adventurer?  Has't thou seen other daughters of Marr in the wilds?", "ponder", 2966512768, 1279748767, Spawn)
   	                elseif choice == 9 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_f56ada2a.mp3", "The queen calls all of us to service.  We shall find our kin to serve her majesty.", "agree", 484194272, 1279748767, Spawn)
                    end                                                                                                                           
                end
			end
--[[            	local choice = math.random(1,4)
--RACE CHECK
                	if choice == 1 then
                	PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_gnome_gf_42177c87.mp3", "What's that? All thy mutterings about whizzlegigs and furbelows is quite unintelligible.", "", 3856971048, 2722248899, Spawn)
                	elseif choice == 2 then
                	PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_hail_gf_cd3d026e.mp3", "Always step carefully within the city limits -- and even more carefully when outside of the city.", "", 2864618200, 434416947, Spawn)
                	elseif choice == 3 then
                	PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_hail_gf_eae44fad.mp3", "May the blessings of Mithaniel Marr be upon you.", "", 2437408909, 3055505253, Spawn)
                	elseif choice== 4 then
                	PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_highelf_gf_d3687a91.mp3", "It is good to see elven-kind here in Qeynos who can help us defend the laws of the land. ", "", 3596392273, 2126265241, Spawn)
-]]      			
			
		elseif race == GNOME then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "scheme", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			        
                --[[    local choice = math.random(1,8)
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

      	                end]]--	
				elseif GOOD then
				    if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
--[[	            local choice = math.random(1,2)

	                    if choice == 1 then
	                   	PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_hail_gf_39da4f6d.mp3", "Cheers and boggle chippers to you!", "", 3143145827, 3768593316, Spawn)
	                    elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_barbarian_gf_68486376.mp3", "Watch your step, you rusty-pated, slow-witted, half-turned knob on a cognizoid!  Can't you see I'm busy?", "", 2020911566, 1624319994, Spawn)
    	
                        end]]--  
                    
				elseif EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
--[[ 	                local choice = math.random(1,7)

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
	                   	                   	                                      
                    end]]--		
		
		elseif race == HALF_ELF then
			if gender == MALE then
			    if GOOD then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else			        
                	local choice = math.random(1,5)
                        if choice == 1 then--RACE CHECK 
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_15163426.mp3", "You talk to strangers?  What's the purpose of that?", "", 1620470786, 1752689340, Spawn)
	                    elseif choice == 2 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_c91da8a3.mp3", "I have nothing to say to you right now.", "shrug", 2888703527, 1699968860, Spawn)
                        elseif choice == 3 then
                        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_highelf_gm_24cca44b.mp3", "You're no better than the rest of us, no matter whose blessing you think you have.", "", 1706562095, 4255036175, Spawn)
                        elseif choice == 4 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gm_2fa5fd3b.mp3", "We'll have to get together for a goblet of wine sometime soon.  Your treat.", "", 2999782150, 334868042, Spawn)
                        elseif choice == 5 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gm_876eb977.mp3", "I wish I had 'good old days' to remember, like you do.  Ah, well.  Best to worry about today and not yesterday.", "", 918037021, 185336532, Spawn)
	                    end
                    end
    --[[	
                if Qfaction <= 0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then                
	                	PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_notcitizen_gm_ad3832d1.mp3", "Half-elves have the best of both worlds.", "thumbsup", 3804541486, 3539803287, Spawn)
                        end
                else    
    
                   local choice = math.random(1,3)

	                    if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_768a0c8b.mp3", "Everywhere is walking distance if you have the time.", "wink", 2228417017, 3880753774, Spawn)
    	                elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_ea435b69.mp3", "I'm going to get some piercings so I can be unique like everyone else.", "yeah", 2468101640, 903029053, Spawn)
    	                elseif choice == 3 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_666e9477.mp3", "I think the word dual-breed has a little more dignity than half-elf, don't you?", "ponder", 3563191265, 3563670932, Spawn)
                        end
                end
	        end]]--	
	                        
				elseif EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
	              --[[  local choice = math.random(1,6)

	                    if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_darkelf_gf_b7243656.mp3", "Get out of here, before I get a few friends and teach you whose turf this is!", "threaten", 1591785045, 2161856385, Spawn)
	                    elseif choice == 2 then
	                   	PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_woodelf_gf_15785897.mp3", "Harumph. I came to Freeport to get away from your kind.", "yawn", 3646199817, 3971791216, Spawn)
	                    elseif choice == 3 then
	                   	PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_ratonga_gf_9f5502a.mp3", "Where have your sneaky fingers been today?  Hopefully not in my pocket.", "ponder", 3377223212, 405360644, Spawn)
	                    elseif choice == 4 then
	                   	PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_hail_gf_817ed115.mp3", "Sometimes you have to take what you want.", "nod", 235476376, 378561265, Spawn)
	                    elseif choice == 5 then
	                  	PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_hail_gf_3f18f86f.mp3", "Freeport has everything you could want: intrigue, murder, and greed!", "hello", 5269968, 3778619854, Spawn)
                        end]]--
	   				
	   		    		
			elseif gender == FEMALE then
			    if EVIL then
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
	            	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_aoi_gf_f8dd15ce", " Got any coin?", "beg", 3660925534, 3735346681, Spawn)
		                end
	               end
				end
			end
	
	
	    elseif race == HALFLING then
			if gender == MALE then
		       if Qfaction < 0 then
                    local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "sulk", 0, 0, Spawn)
				        elseif choice == 2 then		           
		                PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 893626909, 4027326251, Spawn)
                        end
                else
	            local choice = math.random(1,3)

            	    if choice == 1 then
	           	    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_cd9164d6.mp3", "You're a stranger. And I don't like strangers, no sir I don't!", "sulk", 785726454, 3155500140, Spawn)
            	    elseif choice == 2 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_75c0e97c.mp3", "Welcome to the city, adventurer. Be mindful of the peace and quiet.  Here in Qeynos, we value our privacy.", "bow", 1955296899, 2249687997, Spawn)
                    elseif choice == 3 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_50622dfa.mp3", "Whoa, hello there!  Eager and in a hurry I see.  My advice, take your time.  The city isn't going anywhere.", "wave", 2627404831, 2664895493, Spawn)
                    end
                end
--              PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_woodelf_gm_b160d4db.mp3", "You must miss home, too, huh?  I've never seen it myself, but I wish I could return to Rivervale.", "", 3826858900, 561795809, Spawn)
            
		elseif gender == FEMALE then
            if Qfaction <0 then
            	local choice = math.random(1,2)			      
		        if choice == 1 then
		        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_5afcbd03.mp3", "The streets aren't safe with your kind upon them!", "point", 3071247604, 671588271, Spawn)
                elseif choice == 2 then
		        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 1040511037, 3422590702, Spawn)
                end                
            else
 --	PlayFlavor(NPC, "voiceover/english/optional2/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_gnome_gf_8e6f2cee.mp3", "What're you working on now, hmm?  Hope this one works out!", "", 1396523759, 1857436654, Spawn)
               
            	local choice = math.random(1,6)		    
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
	                end
            end
	    end
    		
		
		elseif race == HIGH_ELF then
			if gender == MALE then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else			    
            	local choice = math.random(1,3)

                	if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_eb4f8f5d.mp3", "I hope you have been sent by someone of importance. I'm quite busy.", "yawn", 111891212, 1507953677, Spawn)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_4fa9c654.mp3", "How do you do! I am always pleased to meet a capable being, such as yourself.", "nod", 4124935177, 986848244, Spawn)
                	elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_6d02d4f.mp3", "Hail, friend and well met. I do hope your visits to our village are frequent. Too often do adventurers fail to return.", "stare", 1030195744, 970105613, Spawn)
            	    end
            	end
			elseif gender == FEMALE then
			    if Qfaction < 0 then  
			          local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        elseif choice == 2 then
                        PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "threaten", 3357669916, 1930978996, Spawn)
                        end
                else
				local choice = math.random(1,3)
	                if choice == 1 then
		            PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_aeb1a20f.mp3", "It is with honor that I welcome you to our community.", "thanks", 157565536, 4238836509, Spawn)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_a6a7e923.mp3", "Hail to you, it is indeed a pleasure.", "royalwave", 224557122, 3782103568, Spawn)
	                elseif choice == 3 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_869cb34a.mp3", "Hello, young adventurer. It is with the utmost delight that I greet you.", "fullcurtsey", 1236739692, 2465236460, Spawn)
                    end
                end
	    	end
		
		
		
		elseif race == HUMAN then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_55c7abb4.mp3", "If you know what's good for ya, you didn't see anything!", "shakefist", 3295550745, 254450600, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_8d2a0876.mp3", "That look's like an awfully expensive pair of boots there, my friend.", "ponder", 367255988, 2113438867, Spawn)
				        end
				    else  			        
                	local choice = math.random(1,9)

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
	                   	end
	                 end  	
				elseif GOOD then
                    if Qfaction <0 then
                 	local choice = math.random(1,3)
	                    if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_1a98f879.mp3", "How did you get past the city gates?!", "doubletake", 2984037816, 3824691347, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 1112175527, 3181748573, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_b24ac070.mp3", "Antonius Bayle!  Save us from this brute!", "scream", 271724567, 4059439523, Spawn)
                    	end
                    else
				    
                	local choice = math.random(1,5)

                    	if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_7e3b456a.mp3", "Hail, pleasure to meet you.", "agree", 471367832, 2417424572, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_ef2b9651.mp3", "Will you quit pestering me?  Don't force me to summon the guards!", "tapfoot", 3345611839, 1442739842, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_26f4c608.mp3", "Greetings visitor, I'm glad to meet you.", "bye", 1300497520, 2713745446, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_13b79d2d.mp3", "Welcome...welcome traveler, to the fair city of Qeynos! My, isn't it a magnificent day?", "hello", 3746934207, 794965138, Spawn)
		                elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_e58035f3.mp3", "What do you want? Leave me be!", "shrug", 1323474108, 3355478224, Spawn)
                    	elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gm_2c5409ba.mp3", "Another lovely day in the city of Qeynos!", "sigh", 2759856909, 614688407, Spawn)
                    	elseif choice == 7 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gm_4d212798.mp3", "I'm confident that the merchants of our village will fill all equipment needs with the utmost hospitality.", "smile", 2600666744, 586734676, Spawn)
                    	elseif choice == 8 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_9b2049a3.mp3", "Well met, friend.  It's good to make your acquaintance!", "bow", 754727055, 3165426316, Spawn)
	                    end
                    end 
				end
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			        
	                local choice = math.random(1,10)
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
	                    end
	                 end   
            --[[	local choice = math.random(1,8)

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
	                    end
	end]]--	                    
	                    
				elseif GOOD then
				    if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
                	    end
	   				end
	    	    end
            end
--[[	           local choice = math.random(1,6)

	                    if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gf_837968a9.mp3", "Oh, my aching back!  As good a time to stop and chat as any, I say.", "yawn", 3270846909, 2717985314, Spawn)
                    	elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_froglok_gf_b1da0602.mp3", "Hail to you, short and shiny one!", "", 2380925828, 15459918, Spawn)
                    	elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_woodelf_gf_2ab5b9e2.mp3", "I wish I had the ability to keep the plants in my home happy.", "", 2624412872, 2478031045, Spawn)
                     	elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_gnome_gf_a777615.mp3", "I wish I knew what some of these new-fangled gnomish inventions are meant to do.", "", 1410161766, 2130476086, Spawn)
                    	elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gf_2d0e8823.mp3", "Almost time to stop and have an ale, isn't it?", "wink", 1106325239, 2982056892, Spawn)
                    	elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_highelf_gf_a4ddebdc.mp3", "A good day in Qeynos always beats a bad day anywhere else.", "", 2563785575, 2973629845, Spawn)
                    	end]]-- 
               		
		
		elseif race == IKSAR then
			if gender == MALE then
			        if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroath", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  
	                local choice = math.random(1,6)

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
--[[	            local choice = math.random(1,4)
	                if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_darkelf_gf_41fe94ed.mp3", "We share a similar fate -- cast from our homes by the destruction of our world.", "hello", 735434566, 2925685625, Spawn)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_hail_gf_5cacd110.mp3", "If you need help, please find someone who'll provide it.", "shrug", 529474944, 2390194258, Spawn)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_hail_gf_c15f0740.mp3", "Welcome. We greet you.", "yawn", 3949639532, 268039246, Spawn)
            	    elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_ratonga_gf_d01ccae8.mp3", "I wonder where you have come from... so little history to draw on.", "ponder", 3355738899, 1187010903, Spawn)
        	        end	]]--    			
			
			
		elseif race == KERRA then
			if gender == MALE then
			    if EVIL then
			        if FPfaction < 0 then
                        local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then			            
		                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_notcitizen_gm_55c7abb4.mp3", "For Thall's sake, what is it?", "glare", 3110431219, 3470484865, Spawn)
			            end
			        else   
	            local choice = math.random(1,10)

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
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_164ffd98.mp3", "I can purr my way out of anything. ", "wink", 4263608089, 504552247, Spawn)
	                elseif choice == 9 then
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_aoi_gf_c9f2b4f1.mp3", "Friendship is too costly around here.", "sigh", 1983387905, 3075550393, Spawn)
	                elseif choice == 10 then
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_aoi_gm_38301159.mp3", "We can't help that!  We're all mad here!", "crazy", 1508409788, 219596858, Spawn)
	                end
                end
				elseif GOOD then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else				    
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
			end
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			        
                	local choice = math.random(1,4)

                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_9f680679.mp3", "I'd kill to know what the overlord has in that citadel!", "scheme", 3285282644, 3219725501, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_3fe55b38.mp3", "Why, don't I seem to be the popular one today.", "whome", 1475998222, 3731288810, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_895b5e07.mp3", "Everything has a price!  What's yours?", "shrug", 599093835, 2436498104, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_8a065b90.mp3", "I am a kindly master, just so long as you remember your place.", "scold", 1400094764, 1979877393, Spawn)
                    	end
                    end	
				elseif GOOD then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else				    
                	local choice = math.random(1,3)
            
                    	if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_28445ab7.mp3", "I don't spend as much time grooming as the others say I do.", "sulk", 2675025847, 2696760246, Spawn)
	                    elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_6c9e41c6.mp3", "Don't think that I'm silly, I just happen to like the simple little things.", "flustered", 1426227770, 2304966225, Spawn)
	                    elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_63881722.mp3", "I'm trying to find a new seasoning for my dried fish.", "ponder", 3802648946, 1171453079, Spawn)
                        end
			   	    end
		         end
		    end
 --[[               	local choice = math.random(1,4)
--RACE CHECK
                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_gnome_gf_5efa2600.mp3", "You make my tail twitch with all your cogs and flizgigs.  Please, keep those away from me.", "", 749990561, 792243248, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gf_925a7b74.mp3", "Give me the simplicity of life as the kerra once knew it, and I'll be satisfied.", "", 3093126564, 1574100386, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gf_4ae9178a.mp3", "I would like nothing better than to be with my pride, away from the bustle of any town.", "", 261206360, 3555440428, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_highelf_gf_d5455b09.mp3", "Good leaders bide their time, planning all the while.  I'm sure you already know this.", "", 2270743009, 1129155946, Spawn)
]]--			
		
		elseif race == OGRE then
			if gender == MALE then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			    
                	local choice = math.random(1,10)
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			    
	            local choice = math.random(1,4)

	                if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_5e63a07a.mp3", "If winning isn't everything, why do we keep score?", "sneer", 3927334706, 1835318852, Spawn)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_2c495445.mp3", "I dabble in repossessions and personal loans. ", "scheme", 4196817122, 2118800432, Spawn)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_9d45b59e.mp3", "There's no way they're better than us.  We have more.", "thanks", 187163254, 678724024, Spawn)
            	    elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_c698777f.mp3", "I was never even near the bank.", "whome", 3628945834, 3044934463, Spawn)
	           	    end
                end
	    elseif gender == FEMALE then
	            if FPfaction <0 then
                    local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "neener", 0, 0, Spawn)
				        elseif choice == 2 then	                
	                    PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gf_8d2a0876.mp3", "I heard you screaming from all the way over there.", "point", 3634348917, 2158238801, Spawn)
                        end
                else
			    local choice = math.random(1,6)
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
	                end
	    	    end
	    	 end
		    --[[	local choice = math.random(1,4)

	                if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_darkelf_gf_12accc66.mp3", "Perhaps the dark ones will require our services in the future.", "scheme", 3576261185, 2087562403, Spawn)
	                elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_hail_gf_5fe381f6.mp3", "Yes, yes, that will do nicely... err, hello, who are you?", "scheme", 3504817921, 2028500155, Spawn)
	                elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_ratonga_gf_7fcc0516.mp3", "Watch for the trolls, they like to eats us!", "hello", 1635718299, 1583941867, Spawn)
                	elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_ratonga_gf_95e0fb2a.mp3", "Small and fast, we go where others can't!", "nod", 362113991, 3436119366, Spawn)
]]--		    
		
		
		elseif race == TROLL then
			if gender == MALE then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  
            	local choice = math.random(1,4)
-- EXTRA            PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_630d65f1.mp3", "I used to have my own bridge before tasty dark elves took it from me.", "doh", 1590618969, 2701180460, Spawn)
            	    if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_f9319fbb.mp3", "I like killing things just to see them die.  Don't you?", "giggle", 2044250119, 1492935869, Spawn)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_60a4050b.mp3", "Me likes it when they are scared.  It tastes better that way.", "thanks", 2363588727, 2924742015, Spawn)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_46facad7.mp3", "If I eats you now, I wouldn't know what you were going to say.", "wink", 191047961, 2382342743, Spawn)
            	    elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_ae48977.mp3", "You can't eat money. Then why people care about it so much?", "wince", 404920869, 3492621289, Spawn)
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
            	local choice = math.random(1,6)
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
	 	            end
			    end
			 end   
			    
		elseif race == WOOD_ELF then
			if gender == MALE then
                if Qfaction <0 then
                    local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then                    
                  	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_notcitizen_gm_7e3f7ca.mp3", "I refuse to contaminate myself by conversing with trash.", "sulk", 2529393016, 3485196338, Spawn)
                        end
                else
            	local choice = math.random(1,7)
                    if choice == 1 then
	          	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_13f00546.mp3", "Patience they say, is a virtue.  It has taken a lot of patience to rebuild our lives so far from home.", "nod", 1108677104, 3869422611, Spawn)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_fcb14e3e.mp3", "We must remain steadfast and vigilant against tyranny.  This will allow nature to shape Norrath around us.   ", "shakefist", 3130983522, 101511459, Spawn)
	                elseif choice == 3 then
	            	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_62f30b60.mp3", "The Elddar Grove is truly a marvel in these troubled times.  ", "sigh", 303722838, 1259846495, Spawn)
	                elseif choice == 4 then
	               	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_1568024c.mp3", "I see that you have many adventures ahead of you.  This era of darkness is coming to a close.", "ponder", 3567183056, 3400757896, Spawn)
	                elseif choice == 5 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_75b61001.mp3", "Don't let the nice day fool you.  My knee is acting up, a storm is brewing.  I can smell it.", "stretch", 3641086231, 3980350899, Spawn)
	                elseif choice == 6 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_a2427d62.mp3", "They say time and nature heal all wounds.  Still, some wrongs can never be forgotten.", "sad", 2603397723, 1316741802, Spawn)
                    end
	            end
			elseif gender == FEMALE then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "wince", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else			    
            	local choice = math.random(1,5)

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
	        	    end    
                end   
            end
--[[	            local choice = math.random(1,7)

	                    if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_3e59423a.mp3", "The blessing of Tunare is the highest blessing of all.", "", 853299003, 3297095439, Spawn)
	                    elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_halfelf_gf_2474b915.mp3", "Let us meet later for a goblet of wine!  I'm sure you have great tales to tell.", "", 2915398014, 2744924447, Spawn)
                    	elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_halfelf_gf_eb3acf89.mp3", "I don't understand the need for piercings, but they look fine on you.", "", 1366742481, 2195063196, Spawn)
                    	elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_woodelf_gf_5621269a.mp3", "I too long for my home in Faydark.  Someday Tunare will answer us, I'm sure.", "", 3953058409, 3176959607, Spawn)
                    	elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_status_gf_80ffe645.mp3", "You have proven yourself among all those who doubt the Feir'Dal's worth.  Well done!", "", 670005551, 4229139858, Spawn)
                    	elseif choice == 6 then
	                   	PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_woodelf_gf_601050b5.mp3", "May Tunare's blessings be with you and yours.", "", 3511142094, 3935712685, Spawn)
                    	elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_darkelf_gf_894a567a.mp3", "The Feir`Dal will not let this traitor of the elven race reside within these city walls. Expect no more than a short welcome here.", "", 26640370, 1478096414, Spawn)
	
	                    end]]--	
	
--[[				if choice == 1 then
	                PlayFlavor(NPC, "voiceover/english/optional2/woodelf_eco_good_2/ft/woodelf/woodelf_eco_good_2_aoi_gf_e67f1023.mp3", "Such a beautiful day!  All I need now is a nice vintage of elven mulberry and my relaxation will be complete.", "stretch", 3245673411, 1934163553, Spawn)
  RACE             	local choice = math.random(1,3)

	                if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_3e59423a.mp3", "The blessing of Tunare is the highest blessing of all.", "", 853299003, 3297095439, Spawn)
                	elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_50387146.mp3", "To be among the highest leaves and branches of a tree is to feel free.", "", 1191446540, 711911709, Spawn)
                	elseif choice == 3 then
	               	PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_woodelf_gf_5621269a.mp3", "I too long for my home in Faydark.  Someday Tunare will answer us, I'm sure.", "", 3953058409, 3176959607, Spawn)
	                
	                end]]--
				
			
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
			if gender == MALE then
			    if EVIL then
				    local choice = math.random(1,3)
                        if choice == 1 then	
		                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_hail_gm_431b37d1.mp3", "Watch yerself, this city can be rough.", "wink", 1560541305, 226492698, Spawn)
		                elseif choice == 2 then	
                        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_hail_gm_dd0b4913.mp3", "Hah! New around these parts?", "hello", 3252919562, 342739868, Spawn)
                        elseif choice == 3 then				        
				            if spawnRace == BARBARIAN then
                            PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_barbarian_gm_df05bfb0.mp3", "You can push anyone around here except the ogres and trolls.", "nod", 1644989273, 3794783731, Spawn)
                            elseif spawnRace == DARK_ELF then
                            PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_barbarian_gm_df05bfb0.mp3", "Straying a bit, are we?", "glare", 4033200255, 1327891280, Spawn)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_erudite_gm_6a360eb1.mp3", "I never was one for the books.  I guess that's why we leave them to you!", "no", 271638372, 933214140, Spawn)
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_iksar_gm_df4e01c0.mp3", "Scales are obviously tipped in my favor... Eh? Heh Hehuheh!", "chuckle", 2060746310, 2782545175, Spawn)
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
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_halfelf_gm_4794558f.mp3", "If you really want to prove your courage in battle, get yourself a woad. Those can't be taken off so easily.", "nod", 1356161649, 134319671, Spawn)
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
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
                                     PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_d571c130.mp3", "I'm not used to this weather, but my people can adapt to any change in order to survive.", "no", 3421348121, 1004876500, Spawn)
                                    elseif choice == 2 then	
                                    PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_5a6b643f.mp3", "Treasures from the past can be found throughout the lands for those who care to look.", "nod", 3614931515, 1601871948, Spawn)
				       		        end                   
		                    end
                        elseif choice == 2 then	
                        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_d571c130.mp3", "I'm not used to this weather, but my people can adapt to any change in order to survive.", "no", 3421348121, 1004876500, Spawn)
                        elseif choice == 3 then	
                        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_5a6b643f.mp3", "Treasures from the past can be found throughout the lands for those who care to look.", "nod", 3614931515, 1601871948, Spawn)
				        end
				    end   
			elseif gender == FEMALE then
			    if GOOD then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			    --[[
	            local choice = math.random(1,4)

	                if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_7d00f821.mp3", "All those rumors about the people I decapitated are false, trust me. I decapitated many more by my count.", "pout", 2231247084, 2781311359, Spawn)
	                elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_56e1abc5.mp3", "Don't worry. The last time I killed someone was a few months ago. I've almost forgot how its done.", "threaten", 3295546544, 225622615, Spawn)
                	elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_7c898040.mp3", "If I wanted to speak with riff raff like you, you'd know it.", "scold", 2131940659, 1785120161, Spawn)
                 	elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_c76c11b.mp3", "No, I didn't say you could look at me or talk to me for that matter.", "heckno", 1951847708, 3399171438, Spawn)
	                end]]--		
		
		elseif race == DARK_ELF then
			if gender == MALE then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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

--[[		  local choice = math.random(1,6)
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
		          end--]]
		elseif gender == FEMALE then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
		  --[[	local choice = math.random(1,2)

	                if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gf_eb029bed.mp3", "I am sickened by the lack of amenities within this city.", "flustered", 140632112, 1000708438, Spawn)
	                elseif choice == 2 then
	               	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gf_18ec7845.mp3", "Do you honestly believe I would speak with someone like you?", "boggle", 2993277341, 1897394040, Spawn)

	                end]]--
			    
			    
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
--[[            	local choice = math.random(1,4)

	                    if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_ratonga_gm_4d3aaca.mp3", "One day, I may have use for your services, sneaky.", "nod", 1373077305, 3004061362, Spawn)
	                    elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gm_43bd22f2.mp3", "Greetings.  One day I hope everyone bows before my intellect.", "hello", 3316681960, 3617003101, Spawn)
	                    elseif choice == 3 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gm_9bc2cf77.mp3", "My time is too valuable to be spent chatting.", "bye", 788162420, 1166698384, Spawn)
	                    elseif choice == 4 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_iksar_gm_2cdba125.mp3", "It's a shame Cabalis isn't around, it would have made an interesting study.", "sigh", 3903013371, 226829195, Spawn)
                    	end]]--		                    	
                    	
				elseif GOOD then
				    if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "threaten", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_aoi_gf_ff7f6e34.mp3", "You must be cautious of the draws of evil.  We must master our temptations to preserve our city.", "nod", 4169564254, 3711533067, Spawn)
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
--[[	            local choice = math.random(1,4)

	                    if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_hail_gf_24e3a5aa.mp3", "I have learned that it is best to trust to your own wisdom rather than the weaponry of your acquaintances.", "", 2387566735, 2940828519, Spawn)
                    	elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_gnome_gf_885ee58d.mp3", "The machinations of the average gnome's mind are really best left untouched.", "", 499883228, 2559247313, Spawn)
	                    elseif choice == 3 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_hail_gf_8f458045.mp3", "Please, I am in the midst of solving a very complex problem and must not be interrupted.", "", 971990033, 2178584483, Spawn)
	                    elseif choice == 4 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_highelf_gf_cfbdf659.mp3", "That ensemble is quite becoming to you.  Almost as good as my own.", "", 2314937497, 2446209028, Spawn)
	
	                    end]]--				
			
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
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_aeef4870.mp3", "I pray on you, stranger.  Dost thou any news on friends of Gukta?", "bow", 2960870988, 3925790084, Spawn)
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
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_a64f6eec.mp3", "What hast thou done?  When one greets a daughter of Marr, a small bow is in order!", "boggle", 2304123366, 1172967267, Spawn)
   	                elseif choice == 6 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_aaa0d7f3.mp3", "Marr ye good den.  How are't thou on this fine afternoond?", "hello", 725320917, 2360930144, Spawn)
   	                elseif choice == 7 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_c0864f03.mp3", "Now ye shall'th rejoyce within the taverns by night, but we shall not rest until the truth of our kin hath been discovered.", "happy", 1638938881, 2182528216, Spawn)
   	                elseif choice == 8 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_e4cf5b64.mp3", "How now, friend adventurer?  Has't thou seen other daughters of Marr in the wilds?", "ponder", 2966512768, 1279748767, Spawn)
   	                elseif choice == 9 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_f56ada2a.mp3", "The queen calls all of us to service.  We shall find our kin to serve her majesty.", "agree", 484194272, 1279748767, Spawn)
                    end                                                                                                                           
                end
			end
--[[            	local choice = math.random(1,4)
--RACE CHECK
                	if choice == 1 then
                	PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_gnome_gf_42177c87.mp3", "What's that? All thy mutterings about whizzlegigs and furbelows is quite unintelligible.", "", 3856971048, 2722248899, Spawn)
                	elseif choice == 2 then
                	PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_hail_gf_cd3d026e.mp3", "Always step carefully within the city limits -- and even more carefully when outside of the city.", "", 2864618200, 434416947, Spawn)
                	elseif choice == 3 then
                	PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_hail_gf_eae44fad.mp3", "May the blessings of Mithaniel Marr be upon you.", "", 2437408909, 3055505253, Spawn)
                	elseif choice== 4 then
                	PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_highelf_gf_d3687a91.mp3", "It is good to see elven-kind here in Qeynos who can help us defend the laws of the land. ", "", 3596392273, 2126265241, Spawn)
-]]      			
			
		elseif race == GNOME then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "scheme", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			        
                --[[    local choice = math.random(1,8)
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

      	                end]]--	
				elseif GOOD then
				    if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
--[[	            local choice = math.random(1,2)

	                    if choice == 1 then
	                   	PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_hail_gf_39da4f6d.mp3", "Cheers and boggle chippers to you!", "", 3143145827, 3768593316, Spawn)
	                    elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_barbarian_gf_68486376.mp3", "Watch your step, you rusty-pated, slow-witted, half-turned knob on a cognizoid!  Can't you see I'm busy?", "", 2020911566, 1624319994, Spawn)
    	
                        end]]--  
                    
				elseif EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
--[[ 	                local choice = math.random(1,7)

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
	                   	                   	                                      
                    end]]--		
		
		elseif race == HALF_ELF then
			if gender == MALE then
			    if GOOD then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else			        
                	local choice = math.random(1,5)
                        if choice == 1 then--RACE CHECK 
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_15163426.mp3", "You talk to strangers?  What's the purpose of that?", "", 1620470786, 1752689340, Spawn)
	                    elseif choice == 2 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_c91da8a3.mp3", "I have nothing to say to you right now.", "shrug", 2888703527, 1699968860, Spawn)
                        elseif choice == 3 then
                        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_highelf_gm_24cca44b.mp3", "You're no better than the rest of us, no matter whose blessing you think you have.", "", 1706562095, 4255036175, Spawn)
                        elseif choice == 4 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gm_2fa5fd3b.mp3", "We'll have to get together for a goblet of wine sometime soon.  Your treat.", "", 2999782150, 334868042, Spawn)
                        elseif choice == 5 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gm_876eb977.mp3", "I wish I had 'good old days' to remember, like you do.  Ah, well.  Best to worry about today and not yesterday.", "", 918037021, 185336532, Spawn)
	                    end
                    end
    --[[	
                if Qfaction <= 0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then                
	                	PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_notcitizen_gm_ad3832d1.mp3", "Half-elves have the best of both worlds.", "thumbsup", 3804541486, 3539803287, Spawn)
                        end
                else    
    
                   local choice = math.random(1,3)

	                    if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_768a0c8b.mp3", "Everywhere is walking distance if you have the time.", "wink", 2228417017, 3880753774, Spawn)
    	                elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_ea435b69.mp3", "I'm going to get some piercings so I can be unique like everyone else.", "yeah", 2468101640, 903029053, Spawn)
    	                elseif choice == 3 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_666e9477.mp3", "I think the word dual-breed has a little more dignity than half-elf, don't you?", "ponder", 3563191265, 3563670932, Spawn)
                        end
                end
	        end]]--	
	                        
				elseif EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
	              --[[  local choice = math.random(1,6)

	                    if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_darkelf_gf_b7243656.mp3", "Get out of here, before I get a few friends and teach you whose turf this is!", "threaten", 1591785045, 2161856385, Spawn)
	                    elseif choice == 2 then
	                   	PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_woodelf_gf_15785897.mp3", "Harumph. I came to Freeport to get away from your kind.", "yawn", 3646199817, 3971791216, Spawn)
	                    elseif choice == 3 then
	                   	PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_ratonga_gf_9f5502a.mp3", "Where have your sneaky fingers been today?  Hopefully not in my pocket.", "ponder", 3377223212, 405360644, Spawn)
	                    elseif choice == 4 then
	                   	PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_hail_gf_817ed115.mp3", "Sometimes you have to take what you want.", "nod", 235476376, 378561265, Spawn)
	                    elseif choice == 5 then
	                  	PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_hail_gf_3f18f86f.mp3", "Freeport has everything you could want: intrigue, murder, and greed!", "hello", 5269968, 3778619854, Spawn)
                        end]]--
	   				
	   		    		
			elseif gender == FEMALE then
			    if EVIL then
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
	            	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_aoi_gf_f8dd15ce", " Got any coin?", "beg", 3660925534, 3735346681, Spawn)
		                end
	               end
				end
			end
	
	
	    elseif race == HALFLING then
			if gender == MALE then
		       if Qfaction < 0 then
                    local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "sulk", 0, 0, Spawn)
				        elseif choice == 2 then		           
		                PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 893626909, 4027326251, Spawn)
                        end
                else
	            local choice = math.random(1,3)

            	    if choice == 1 then
	           	    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_cd9164d6.mp3", "You're a stranger. And I don't like strangers, no sir I don't!", "sulk", 785726454, 3155500140, Spawn)
            	    elseif choice == 2 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_75c0e97c.mp3", "Welcome to the city, adventurer. Be mindful of the peace and quiet.  Here in Qeynos, we value our privacy.", "bow", 1955296899, 2249687997, Spawn)
                    elseif choice == 3 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_50622dfa.mp3", "Whoa, hello there!  Eager and in a hurry I see.  My advice, take your time.  The city isn't going anywhere.", "wave", 2627404831, 2664895493, Spawn)
                    end
                end
--              PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_woodelf_gm_b160d4db.mp3", "You must miss home, too, huh?  I've never seen it myself, but I wish I could return to Rivervale.", "", 3826858900, 561795809, Spawn)
            
		elseif gender == FEMALE then
            if Qfaction <0 then
            	local choice = math.random(1,2)			      
		        if choice == 1 then
		        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_5afcbd03.mp3", "The streets aren't safe with your kind upon them!", "point", 3071247604, 671588271, Spawn)
                elseif choice == 2 then
		        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 1040511037, 3422590702, Spawn)
                end                
            else
 --	PlayFlavor(NPC, "voiceover/english/optional2/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_gnome_gf_8e6f2cee.mp3", "What're you working on now, hmm?  Hope this one works out!", "", 1396523759, 1857436654, Spawn)
               
            	local choice = math.random(1,6)		    
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
	                end
            end
	    end
    		
		
		elseif race == HIGH_ELF then
			if gender == MALE then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else			    
            	local choice = math.random(1,3)

                	if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_eb4f8f5d.mp3", "I hope you have been sent by someone of importance. I'm quite busy.", "yawn", 111891212, 1507953677, Spawn)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_4fa9c654.mp3", "How do you do! I am always pleased to meet a capable being, such as yourself.", "nod", 4124935177, 986848244, Spawn)
                	elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_6d02d4f.mp3", "Hail, friend and well met. I do hope your visits to our village are frequent. Too often do adventurers fail to return.", "stare", 1030195744, 970105613, Spawn)
            	    end
            	end
			elseif gender == FEMALE then
			    if Qfaction < 0 then  
			          local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        elseif choice == 2 then
                        PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "threaten", 3357669916, 1930978996, Spawn)
                        end
                else
				local choice = math.random(1,3)
	                if choice == 1 then
		            PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_aeb1a20f.mp3", "It is with honor that I welcome you to our community.", "thanks", 157565536, 4238836509, Spawn)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_a6a7e923.mp3", "Hail to you, it is indeed a pleasure.", "royalwave", 224557122, 3782103568, Spawn)
	                elseif choice == 3 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_869cb34a.mp3", "Hello, young adventurer. It is with the utmost delight that I greet you.", "fullcurtsey", 1236739692, 2465236460, Spawn)
                    end
                end
	    	end
		
		
		
		elseif race == HUMAN then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_55c7abb4.mp3", "If you know what's good for ya, you didn't see anything!", "shakefist", 3295550745, 254450600, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_8d2a0876.mp3", "That look's like an awfully expensive pair of boots there, my friend.", "ponder", 367255988, 2113438867, Spawn)
				        end
				    else  			        
                	local choice = math.random(1,9)

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
	                   	end
	                 end  	
				elseif GOOD then
                    if Qfaction <0 then
                 	local choice = math.random(1,3)
	                    if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_1a98f879.mp3", "How did you get past the city gates?!", "doubletake", 2984037816, 3824691347, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 1112175527, 3181748573, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_b24ac070.mp3", "Antonius Bayle!  Save us from this brute!", "scream", 271724567, 4059439523, Spawn)
                    	end
                    else
				    
                	local choice = math.random(1,5)

                    	if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_7e3b456a.mp3", "Hail, pleasure to meet you.", "agree", 471367832, 2417424572, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_ef2b9651.mp3", "Will you quit pestering me?  Don't force me to summon the guards!", "tapfoot", 3345611839, 1442739842, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_26f4c608.mp3", "Greetings visitor, I'm glad to meet you.", "bye", 1300497520, 2713745446, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_13b79d2d.mp3", "Welcome...welcome traveler, to the fair city of Qeynos! My, isn't it a magnificent day?", "hello", 3746934207, 794965138, Spawn)
		                elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_e58035f3.mp3", "What do you want? Leave me be!", "shrug", 1323474108, 3355478224, Spawn)
                    	elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gm_2c5409ba.mp3", "Another lovely day in the city of Qeynos!", "sigh", 2759856909, 614688407, Spawn)
                    	elseif choice == 7 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gm_4d212798.mp3", "I'm confident that the merchants of our village will fill all equipment needs with the utmost hospitality.", "smile", 2600666744, 586734676, Spawn)
                    	elseif choice == 8 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_9b2049a3.mp3", "Well met, friend.  It's good to make your acquaintance!", "bow", 754727055, 3165426316, Spawn)
	                    end
                    end 
				end
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			        
	                local choice = math.random(1,10)
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
	                    end
	                 end   
            --[[	local choice = math.random(1,8)

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
	                    end
	end]]--	                    
	                    
				elseif GOOD then
				    if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
                	    end
	   				end
	    	    end
            end
--[[	           local choice = math.random(1,6)

	                    if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gf_837968a9.mp3", "Oh, my aching back!  As good a time to stop and chat as any, I say.", "yawn", 3270846909, 2717985314, Spawn)
                    	elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_froglok_gf_b1da0602.mp3", "Hail to you, short and shiny one!", "", 2380925828, 15459918, Spawn)
                    	elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_woodelf_gf_2ab5b9e2.mp3", "I wish I had the ability to keep the plants in my home happy.", "", 2624412872, 2478031045, Spawn)
                     	elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_gnome_gf_a777615.mp3", "I wish I knew what some of these new-fangled gnomish inventions are meant to do.", "", 1410161766, 2130476086, Spawn)
                    	elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gf_2d0e8823.mp3", "Almost time to stop and have an ale, isn't it?", "wink", 1106325239, 2982056892, Spawn)
                    	elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_highelf_gf_a4ddebdc.mp3", "A good day in Qeynos always beats a bad day anywhere else.", "", 2563785575, 2973629845, Spawn)
                    	end]]-- 
               		
		
		elseif race == IKSAR then
			if gender == MALE then
			        if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroath", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  
	                local choice = math.random(1,6)

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
--[[	            local choice = math.random(1,4)
	                if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_darkelf_gf_41fe94ed.mp3", "We share a similar fate -- cast from our homes by the destruction of our world.", "hello", 735434566, 2925685625, Spawn)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_hail_gf_5cacd110.mp3", "If you need help, please find someone who'll provide it.", "shrug", 529474944, 2390194258, Spawn)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_hail_gf_c15f0740.mp3", "Welcome. We greet you.", "yawn", 3949639532, 268039246, Spawn)
            	    elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_ratonga_gf_d01ccae8.mp3", "I wonder where you have come from... so little history to draw on.", "ponder", 3355738899, 1187010903, Spawn)
        	        end	]]--    			
			
			
		elseif race == KERRA then
			if gender == MALE then
			    if EVIL then
			        if FPfaction < 0 then
                        local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then			            
		                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_notcitizen_gm_55c7abb4.mp3", "For Thall's sake, what is it?", "glare", 3110431219, 3470484865, Spawn)
			            end
			        else   
	            local choice = math.random(1,10)

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
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_164ffd98.mp3", "I can purr my way out of anything. ", "wink", 4263608089, 504552247, Spawn)
	                elseif choice == 9 then
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_aoi_gf_c9f2b4f1.mp3", "Friendship is too costly around here.", "sigh", 1983387905, 3075550393, Spawn)
	                elseif choice == 10 then
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_aoi_gm_38301159.mp3", "We can't help that!  We're all mad here!", "crazy", 1508409788, 219596858, Spawn)
	                end
                end
				elseif GOOD then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else				    
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
			end
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			        
                	local choice = math.random(1,4)

                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_9f680679.mp3", "I'd kill to know what the overlord has in that citadel!", "scheme", 3285282644, 3219725501, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_3fe55b38.mp3", "Why, don't I seem to be the popular one today.", "whome", 1475998222, 3731288810, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_895b5e07.mp3", "Everything has a price!  What's yours?", "shrug", 599093835, 2436498104, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_8a065b90.mp3", "I am a kindly master, just so long as you remember your place.", "scold", 1400094764, 1979877393, Spawn)
                    	end
                    end	
				elseif GOOD then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else				    
                	local choice = math.random(1,3)
            
                    	if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_28445ab7.mp3", "I don't spend as much time grooming as the others say I do.", "sulk", 2675025847, 2696760246, Spawn)
	                    elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_6c9e41c6.mp3", "Don't think that I'm silly, I just happen to like the simple little things.", "flustered", 1426227770, 2304966225, Spawn)
	                    elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_63881722.mp3", "I'm trying to find a new seasoning for my dried fish.", "ponder", 3802648946, 1171453079, Spawn)
                        end
			   	    end
		         end
		    end
 --[[               	local choice = math.random(1,4)
--RACE CHECK
                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_gnome_gf_5efa2600.mp3", "You make my tail twitch with all your cogs and flizgigs.  Please, keep those away from me.", "", 749990561, 792243248, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gf_925a7b74.mp3", "Give me the simplicity of life as the kerra once knew it, and I'll be satisfied.", "", 3093126564, 1574100386, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gf_4ae9178a.mp3", "I would like nothing better than to be with my pride, away from the bustle of any town.", "", 261206360, 3555440428, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_highelf_gf_d5455b09.mp3", "Good leaders bide their time, planning all the while.  I'm sure you already know this.", "", 2270743009, 1129155946, Spawn)
]]--			
		
		elseif race == OGRE then
			if gender == MALE then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			    
                	local choice = math.random(1,10)
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			    
	            local choice = math.random(1,4)

	                if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_5e63a07a.mp3", "If winning isn't everything, why do we keep score?", "sneer", 3927334706, 1835318852, Spawn)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_2c495445.mp3", "I dabble in repossessions and personal loans. ", "scheme", 4196817122, 2118800432, Spawn)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_9d45b59e.mp3", "There's no way they're better than us.  We have more.", "thanks", 187163254, 678724024, Spawn)
            	    elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_c698777f.mp3", "I was never even near the bank.", "whome", 3628945834, 3044934463, Spawn)
	           	    end
                end
	    elseif gender == FEMALE then
	            if FPfaction <0 then
                    local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "neener", 0, 0, Spawn)
				        elseif choice == 2 then	                
	                    PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gf_8d2a0876.mp3", "I heard you screaming from all the way over there.", "point", 3634348917, 2158238801, Spawn)
                        end
                else
			    local choice = math.random(1,6)
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
	                end
	    	    end
	    	 end
		    --[[	local choice = math.random(1,4)

	                if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_darkelf_gf_12accc66.mp3", "Perhaps the dark ones will require our services in the future.", "scheme", 3576261185, 2087562403, Spawn)
	                elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_hail_gf_5fe381f6.mp3", "Yes, yes, that will do nicely... err, hello, who are you?", "scheme", 3504817921, 2028500155, Spawn)
	                elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_ratonga_gf_7fcc0516.mp3", "Watch for the trolls, they like to eats us!", "hello", 1635718299, 1583941867, Spawn)
                	elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_ratonga_gf_95e0fb2a.mp3", "Small and fast, we go where others can't!", "nod", 362113991, 3436119366, Spawn)
]]--		    
		
		
		elseif race == TROLL then
			if gender == MALE then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  
            	local choice = math.random(1,4)
-- EXTRA            PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_630d65f1.mp3", "I used to have my own bridge before tasty dark elves took it from me.", "doh", 1590618969, 2701180460, Spawn)
            	    if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_f9319fbb.mp3", "I like killing things just to see them die.  Don't you?", "giggle", 2044250119, 1492935869, Spawn)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_60a4050b.mp3", "Me likes it when they are scared.  It tastes better that way.", "thanks", 2363588727, 2924742015, Spawn)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_46facad7.mp3", "If I eats you now, I wouldn't know what you were going to say.", "wink", 191047961, 2382342743, Spawn)
            	    elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_ae48977.mp3", "You can't eat money. Then why people care about it so much?", "wince", 404920869, 3492621289, Spawn)
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
            	local choice = math.random(1,6)
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
	 	            end
			    end
			 end   
			    
		elseif race == WOOD_ELF then
			if gender == MALE then
                if Qfaction <0 then
                    local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then                    
                  	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_notcitizen_gm_7e3f7ca.mp3", "I refuse to contaminate myself by conversing with trash.", "sulk", 2529393016, 3485196338, Spawn)
                        end
                else
            	local choice = math.random(1,7)
                    if choice == 1 then
	          	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_13f00546.mp3", "Patience they say, is a virtue.  It has taken a lot of patience to rebuild our lives so far from home.", "nod", 1108677104, 3869422611, Spawn)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_fcb14e3e.mp3", "We must remain steadfast and vigilant against tyranny.  This will allow nature to shape Norrath around us.   ", "shakefist", 3130983522, 101511459, Spawn)
	                elseif choice == 3 then
	            	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_62f30b60.mp3", "The Elddar Grove is truly a marvel in these troubled times.  ", "sigh", 303722838, 1259846495, Spawn)
	                elseif choice == 4 then
	               	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_1568024c.mp3", "I see that you have many adventures ahead of you.  This era of darkness is coming to a close.", "ponder", 3567183056, 3400757896, Spawn)
	                elseif choice == 5 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_75b61001.mp3", "Don't let the nice day fool you.  My knee is acting up, a storm is brewing.  I can smell it.", "stretch", 3641086231, 3980350899, Spawn)
	                elseif choice == 6 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_a2427d62.mp3", "They say time and nature heal all wounds.  Still, some wrongs can never be forgotten.", "sad", 2603397723, 1316741802, Spawn)
                    end
	            end
			elseif gender == FEMALE then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "wince", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else			    
            	local choice = math.random(1,5)

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
	        	    end    
                end   
            end
--[[	            local choice = math.random(1,7)

	                    if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_3e59423a.mp3", "The blessing of Tunare is the highest blessing of all.", "", 853299003, 3297095439, Spawn)
	                    elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_halfelf_gf_2474b915.mp3", "Let us meet later for a goblet of wine!  I'm sure you have great tales to tell.", "", 2915398014, 2744924447, Spawn)
                    	elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_halfelf_gf_eb3acf89.mp3", "I don't understand the need for piercings, but they look fine on you.", "", 1366742481, 2195063196, Spawn)
                    	elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_woodelf_gf_5621269a.mp3", "I too long for my home in Faydark.  Someday Tunare will answer us, I'm sure.", "", 3953058409, 3176959607, Spawn)
                    	elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_status_gf_80ffe645.mp3", "You have proven yourself among all those who doubt the Feir'Dal's worth.  Well done!", "", 670005551, 4229139858, Spawn)
                    	elseif choice == 6 then
	                   	PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_woodelf_gf_601050b5.mp3", "May Tunare's blessings be with you and yours.", "", 3511142094, 3935712685, Spawn)
                    	elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_darkelf_gf_894a567a.mp3", "The Feir`Dal will not let this traitor of the elven race reside within these city walls. Expect no more than a short welcome here.", "", 26640370, 1478096414, Spawn)
	
	                    end]]--	
	
--[[				if choice == 1 then
	                PlayFlavor(NPC, "voiceover/english/optional2/woodelf_eco_good_2/ft/woodelf/woodelf_eco_good_2_aoi_gf_e67f1023.mp3", "Such a beautiful day!  All I need now is a nice vintage of elven mulberry and my relaxation will be complete.", "stretch", 3245673411, 1934163553, Spawn)
  RACE             	local choice = math.random(1,3)

	                if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_3e59423a.mp3", "The blessing of Tunare is the highest blessing of all.", "", 853299003, 3297095439, Spawn)
                	elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_50387146.mp3", "To be among the highest leaves and branches of a tree is to feel free.", "", 1191446540, 711911709, Spawn)
                	elseif choice == 3 then
	               	PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_woodelf_gf_5621269a.mp3", "I too long for my home in Faydark.  Someday Tunare will answer us, I'm sure.", "", 3953058409, 3176959607, Spawn)
	                
	                end]]--
				
			
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

--                                  GenericSpawnRaceCallout

-------------------------------------------------------------------------------------------

function GenericSpawnRaceCallout(NPC, Spawn, faction)
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
				    local choice = math.random(1,3)
                        if choice == 1 then	
		                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_hail_gm_431b37d1.mp3", "Watch yerself, this city can be rough.", "wink", 1560541305, 226492698, Spawn)
		                elseif choice == 2 then	
                        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_hail_gm_dd0b4913.mp3", "Hah! New around these parts?", "hello", 3252919562, 342739868, Spawn)
                        elseif choice == 3 then				        
				            if spawnRace == BARBARIAN then
                            PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_barbarian_gm_df05bfb0.mp3", "You can push anyone around here except the ogres and trolls.", "nod", 1644989273, 3794783731, Spawn)
                            elseif spawnRace == DARK_ELF then
                            PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_barbarian_gm_df05bfb0.mp3", "Straying a bit, are we?", "glare", 4033200255, 1327891280, Spawn)
                            elseif spawnRace == ERUDITE then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_erudite_gm_6a360eb1.mp3", "I never was one for the books.  I guess that's why we leave them to you!", "no", 271638372, 933214140, Spawn)
                            elseif spawnRace == IKSAR then
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_iksar_gm_df4e01c0.mp3", "Scales are obviously tipped in my favor... Eh? Heh Hehuheh!", "chuckle", 2060746310, 2782545175, Spawn)
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
					        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_halfelf_gm_4794558f.mp3", "If you really want to prove your courage in battle, get yourself a woad. Those can't be taken off so easily.", "nod", 1356161649, 134319671, Spawn)
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
                                    local check = math.random(1,2) 
	                           	    if check == 1 then
                                     PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_d571c130.mp3", "I'm not used to this weather, but my people can adapt to any change in order to survive.", "no", 3421348121, 1004876500, Spawn)
                                    elseif choice == 2 then	
                                    PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_5a6b643f.mp3", "Treasures from the past can be found throughout the lands for those who care to look.", "nod", 3614931515, 1601871948, Spawn)
				       		        end                   
		                    end
                        elseif choice == 2 then	
                        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_d571c130.mp3", "I'm not used to this weather, but my people can adapt to any change in order to survive.", "no", 3421348121, 1004876500, Spawn)
                        elseif choice == 3 then	
                        PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_5a6b643f.mp3", "Treasures from the past can be found throughout the lands for those who care to look.", "nod", 3614931515, 1601871948, Spawn)
				        end
				    end   
			elseif gender == FEMALE then
			    if GOOD then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			    --[[
	            local choice = math.random(1,4)

	                if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_7d00f821.mp3", "All those rumors about the people I decapitated are false, trust me. I decapitated many more by my count.", "pout", 2231247084, 2781311359, Spawn)
	                elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_56e1abc5.mp3", "Don't worry. The last time I killed someone was a few months ago. I've almost forgot how its done.", "threaten", 3295546544, 225622615, Spawn)
                	elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_7c898040.mp3", "If I wanted to speak with riff raff like you, you'd know it.", "scold", 2131940659, 1785120161, Spawn)
                 	elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_c76c11b.mp3", "No, I didn't say you could look at me or talk to me for that matter.", "heckno", 1951847708, 3399171438, Spawn)
	                end]]--		
		
		elseif race == DARK_ELF then
			if gender == MALE then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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

--[[		  local choice = math.random(1,6)
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
		          end--]]
		elseif gender == FEMALE then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
		  --[[	local choice = math.random(1,2)

	                if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gf_eb029bed.mp3", "I am sickened by the lack of amenities within this city.", "flustered", 140632112, 1000708438, Spawn)
	                elseif choice == 2 then
	               	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_2/ft/darkelf/darkelf_eco_evil_2_hail_gf_18ec7845.mp3", "Do you honestly believe I would speak with someone like you?", "boggle", 2993277341, 1897394040, Spawn)

	                end]]--
			    
			    
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
--[[            	local choice = math.random(1,4)

	                    if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_ratonga_gm_4d3aaca.mp3", "One day, I may have use for your services, sneaky.", "nod", 1373077305, 3004061362, Spawn)
	                    elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gm_43bd22f2.mp3", "Greetings.  One day I hope everyone bows before my intellect.", "hello", 3316681960, 3617003101, Spawn)
	                    elseif choice == 3 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_hail_gm_9bc2cf77.mp3", "My time is too valuable to be spent chatting.", "bye", 788162420, 1166698384, Spawn)
	                    elseif choice == 4 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_evil/ft/eco/evil/erudite_eco_race_evil_iksar_gm_2cdba125.mp3", "It's a shame Cabalis isn't around, it would have made an interesting study.", "sigh", 3903013371, 226829195, Spawn)
                    	end]]--		                    	
                    	
				elseif GOOD then
				    if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "threaten", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
	                    PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_aoi_gf_ff7f6e34.mp3", "You must be cautious of the draws of evil.  We must master our temptations to preserve our city.", "nod", 4169564254, 3711533067, Spawn)
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
--[[	            local choice = math.random(1,4)

	                    if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_hail_gf_24e3a5aa.mp3", "I have learned that it is best to trust to your own wisdom rather than the weaponry of your acquaintances.", "", 2387566735, 2940828519, Spawn)
                    	elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_gnome_gf_885ee58d.mp3", "The machinations of the average gnome's mind are really best left untouched.", "", 499883228, 2559247313, Spawn)
	                    elseif choice == 3 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_hail_gf_8f458045.mp3", "Please, I am in the midst of solving a very complex problem and must not be interrupted.", "", 971990033, 2178584483, Spawn)
	                    elseif choice == 4 then
	                	PlayFlavor(NPC, "voiceover/english/erudite_eco_race_good/ft/eco/good/erudite_eco_race_good_highelf_gf_cfbdf659.mp3", "That ensemble is quite becoming to you.  Almost as good as my own.", "", 2314937497, 2446209028, Spawn)
	
	                    end]]--				
			
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
            	    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gm_aeef4870.mp3", "I pray on you, stranger.  Dost thou any news on friends of Gukta?", "bow", 2960870988, 3925790084, Spawn)
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
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_a64f6eec.mp3", "What hast thou done?  When one greets a daughter of Marr, a small bow is in order!", "boggle", 2304123366, 1172967267, Spawn)
   	                elseif choice == 6 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_aaa0d7f3.mp3", "Marr ye good den.  How are't thou on this fine afternoond?", "hello", 725320917, 2360930144, Spawn)
   	                elseif choice == 7 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_c0864f03.mp3", "Now ye shall'th rejoyce within the taverns by night, but we shall not rest until the truth of our kin hath been discovered.", "happy", 1638938881, 2182528216, Spawn)
   	                elseif choice == 8 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_e4cf5b64.mp3", "How now, friend adventurer?  Has't thou seen other daughters of Marr in the wilds?", "ponder", 2966512768, 1279748767, Spawn)
   	                elseif choice == 9 then 
                    PlayFlavor(NPC, "voiceover/english/froglok_eco_good_1/ft/froglok/froglok_eco_good_1_hail_gf_f56ada2a.mp3", "The queen calls all of us to service.  We shall find our kin to serve her majesty.", "agree", 484194272, 1279748767, Spawn)
                    end                                                                                                                           
                end
			end
--[[            	local choice = math.random(1,4)
--RACE CHECK
                	if choice == 1 then
                	PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_gnome_gf_42177c87.mp3", "What's that? All thy mutterings about whizzlegigs and furbelows is quite unintelligible.", "", 3856971048, 2722248899, Spawn)
                	elseif choice == 2 then
                	PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_hail_gf_cd3d026e.mp3", "Always step carefully within the city limits -- and even more carefully when outside of the city.", "", 2864618200, 434416947, Spawn)
                	elseif choice == 3 then
                	PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_hail_gf_eae44fad.mp3", "May the blessings of Mithaniel Marr be upon you.", "", 2437408909, 3055505253, Spawn)
                	elseif choice== 4 then
                	PlayFlavor(NPC, "voiceover/english/froglok_eco_race_good/ft/eco/good/froglok_eco_race_good_highelf_gf_d3687a91.mp3", "It is good to see elven-kind here in Qeynos who can help us defend the laws of the land. ", "", 3596392273, 2126265241, Spawn)
-]]      			
			
		elseif race == GNOME then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "scheme", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
			        
                --[[    local choice = math.random(1,8)
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

      	                end]]--	
				elseif GOOD then
				    if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
				        end
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
--[[	            local choice = math.random(1,2)

	                    if choice == 1 then
	                   	PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_hail_gf_39da4f6d.mp3", "Cheers and boggle chippers to you!", "", 3143145827, 3768593316, Spawn)
	                    elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/gnome_eco_race_good/ft/eco/good/gnome_eco_race_good_barbarian_gf_68486376.mp3", "Watch your step, you rusty-pated, slow-witted, half-turned knob on a cognizoid!  Can't you see I'm busy?", "", 2020911566, 1624319994, Spawn)
    	
                        end]]--  
                    
				elseif EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
--[[ 	                local choice = math.random(1,7)

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
	                   	                   	                                      
                    end]]--		
		
		elseif race == HALF_ELF then
			if gender == MALE then
			    if GOOD then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else			        
                	local choice = math.random(1,5)
                        if choice == 1 then--RACE CHECK 
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_15163426.mp3", "You talk to strangers?  What's the purpose of that?", "", 1620470786, 1752689340, Spawn)
	                    elseif choice == 2 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_c91da8a3.mp3", "I have nothing to say to you right now.", "shrug", 2888703527, 1699968860, Spawn)
                        elseif choice == 3 then
                        PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_highelf_gm_24cca44b.mp3", "You're no better than the rest of us, no matter whose blessing you think you have.", "", 1706562095, 4255036175, Spawn)
                        elseif choice == 4 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gm_2fa5fd3b.mp3", "We'll have to get together for a goblet of wine sometime soon.  Your treat.", "", 2999782150, 334868042, Spawn)
                        elseif choice == 5 then
	                    PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_woodelf_gm_876eb977.mp3", "I wish I had 'good old days' to remember, like you do.  Ah, well.  Best to worry about today and not yesterday.", "", 918037021, 185336532, Spawn)
	                    end
                    end
    --[[	
                if Qfaction <= 0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then                
	                	PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_notcitizen_gm_ad3832d1.mp3", "Half-elves have the best of both worlds.", "thumbsup", 3804541486, 3539803287, Spawn)
                        end
                else    
    
                   local choice = math.random(1,3)

	                    if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_768a0c8b.mp3", "Everywhere is walking distance if you have the time.", "wink", 2228417017, 3880753774, Spawn)
    	                elseif choice == 2 then
		                PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_ea435b69.mp3", "I'm going to get some piercings so I can be unique like everyone else.", "yeah", 2468101640, 903029053, Spawn)
    	                elseif choice == 3 then
	                	PlayFlavor(NPC, "voiceover/english/optional2/halfelf_eco_good_2/ft/halfelf/halfelf_eco_good_2_hail_gm_666e9477.mp3", "I think the word dual-breed has a little more dignity than half-elf, don't you?", "ponder", 3563191265, 3563670932, Spawn)
                        end
                end
	        end]]--	
	                        
				elseif EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
	              --[[  local choice = math.random(1,6)

	                    if choice == 1 then
		                PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_darkelf_gf_b7243656.mp3", "Get out of here, before I get a few friends and teach you whose turf this is!", "threaten", 1591785045, 2161856385, Spawn)
	                    elseif choice == 2 then
	                   	PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_woodelf_gf_15785897.mp3", "Harumph. I came to Freeport to get away from your kind.", "yawn", 3646199817, 3971791216, Spawn)
	                    elseif choice == 3 then
	                   	PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_ratonga_gf_9f5502a.mp3", "Where have your sneaky fingers been today?  Hopefully not in my pocket.", "ponder", 3377223212, 405360644, Spawn)
	                    elseif choice == 4 then
	                   	PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_hail_gf_817ed115.mp3", "Sometimes you have to take what you want.", "nod", 235476376, 378561265, Spawn)
	                    elseif choice == 5 then
	                  	PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_evil/ft/eco/evil/halfelf_eco_race_evil_hail_gf_3f18f86f.mp3", "Freeport has everything you could want: intrigue, murder, and greed!", "hello", 5269968, 3778619854, Spawn)
                        end]]--
	   				
	   		    		
			elseif gender == FEMALE then
			    if EVIL then
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
	            	    PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/halfelf/halfelf_eco_good_1_aoi_gf_f8dd15ce", " Got any coin?", "beg", 3660925534, 3735346681, Spawn)
		                end
	               end
				end
			end
	
	
	    elseif race == HALFLING then
			if gender == MALE then
		       if Qfaction < 0 then
                    local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "sulk", 0, 0, Spawn)
				        elseif choice == 2 then		           
		                PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 893626909, 4027326251, Spawn)
                        end
                else
	            local choice = math.random(1,3)

            	    if choice == 1 then
	           	    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_cd9164d6.mp3", "You're a stranger. And I don't like strangers, no sir I don't!", "sulk", 785726454, 3155500140, Spawn)
            	    elseif choice == 2 then
        		    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_75c0e97c.mp3", "Welcome to the city, adventurer. Be mindful of the peace and quiet.  Here in Qeynos, we value our privacy.", "bow", 1955296899, 2249687997, Spawn)
                    elseif choice == 3 then
                    PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_50622dfa.mp3", "Whoa, hello there!  Eager and in a hurry I see.  My advice, take your time.  The city isn't going anywhere.", "wave", 2627404831, 2664895493, Spawn)
                    end
                end
--              PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_woodelf_gm_b160d4db.mp3", "You must miss home, too, huh?  I've never seen it myself, but I wish I could return to Rivervale.", "", 3826858900, 561795809, Spawn)
            
		elseif gender == FEMALE then
            if Qfaction <0 then
            	local choice = math.random(1,2)			      
		        if choice == 1 then
		        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_5afcbd03.mp3", "The streets aren't safe with your kind upon them!", "point", 3071247604, 671588271, Spawn)
                elseif choice == 2 then
		        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 1040511037, 3422590702, Spawn)
                end                
            else
 --	PlayFlavor(NPC, "voiceover/english/optional2/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_gnome_gf_8e6f2cee.mp3", "What're you working on now, hmm?  Hope this one works out!", "", 1396523759, 1857436654, Spawn)
               
            	local choice = math.random(1,6)		    
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
	                end
            end
	    end
    		
		
		elseif race == HIGH_ELF then
			if gender == MALE then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else			    
            	local choice = math.random(1,3)

                	if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_eb4f8f5d.mp3", "I hope you have been sent by someone of importance. I'm quite busy.", "yawn", 111891212, 1507953677, Spawn)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_4fa9c654.mp3", "How do you do! I am always pleased to meet a capable being, such as yourself.", "nod", 4124935177, 986848244, Spawn)
                	elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_6d02d4f.mp3", "Hail, friend and well met. I do hope your visits to our village are frequent. Too often do adventurers fail to return.", "stare", 1030195744, 970105613, Spawn)
            	    end
            	end
			elseif gender == FEMALE then
			    if Qfaction < 0 then  
			          local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        elseif choice == 2 then
                        PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gf_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "threaten", 3357669916, 1930978996, Spawn)
                        end
                else
				local choice = math.random(1,3)
	                if choice == 1 then
		            PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_aeb1a20f.mp3", "It is with honor that I welcome you to our community.", "thanks", 157565536, 4238836509, Spawn)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_a6a7e923.mp3", "Hail to you, it is indeed a pleasure.", "royalwave", 224557122, 3782103568, Spawn)
	                elseif choice == 3 then
	               	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_869cb34a.mp3", "Hello, young adventurer. It is with the utmost delight that I greet you.", "fullcurtsey", 1236739692, 2465236460, Spawn)
                    end
                end
	    	end
		
		
		
		elseif race == HUMAN then
			if gender == MALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_55c7abb4.mp3", "If you know what's good for ya, you didn't see anything!", "shakefist", 3295550745, 254450600, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_notcitizen_gm_8d2a0876.mp3", "That look's like an awfully expensive pair of boots there, my friend.", "ponder", 367255988, 2113438867, Spawn)
				        end
				    else  			        
                	local choice = math.random(1,9)

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
	                   	end
	                 end  	
				elseif GOOD then
                    if Qfaction <0 then
                 	local choice = math.random(1,3)
	                    if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_1a98f879.mp3", "How did you get past the city gates?!", "doubletake", 2984037816, 3824691347, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_6da83eeb.mp3", "I'll defend myself if it comes to that, savage!", "shakefist", 1112175527, 3181748573, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_b24ac070.mp3", "Antonius Bayle!  Save us from this brute!", "scream", 271724567, 4059439523, Spawn)
                    	end
                    else
				    
                	local choice = math.random(1,5)

                    	if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_7e3b456a.mp3", "Hail, pleasure to meet you.", "agree", 471367832, 2417424572, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_ef2b9651.mp3", "Will you quit pestering me?  Don't force me to summon the guards!", "tapfoot", 3345611839, 1442739842, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_26f4c608.mp3", "Greetings visitor, I'm glad to meet you.", "bye", 1300497520, 2713745446, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_13b79d2d.mp3", "Welcome...welcome traveler, to the fair city of Qeynos! My, isn't it a magnificent day?", "hello", 3746934207, 794965138, Spawn)
		                elseif choice == 5 then
		                PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_e58035f3.mp3", "What do you want? Leave me be!", "shrug", 1323474108, 3355478224, Spawn)
                    	elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gm_2c5409ba.mp3", "Another lovely day in the city of Qeynos!", "sigh", 2759856909, 614688407, Spawn)
                    	elseif choice == 7 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gm_4d212798.mp3", "I'm confident that the merchants of our village will fill all equipment needs with the utmost hospitality.", "smile", 2600666744, 586734676, Spawn)
                    	elseif choice == 8 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_9b2049a3.mp3", "Well met, friend.  It's good to make your acquaintance!", "bow", 754727055, 3165426316, Spawn)
	                    end
                    end 
				end
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			        
	                local choice = math.random(1,10)
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
	                    end
	                 end   
            --[[	local choice = math.random(1,8)

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
	                    end
	end]]--	                    
	                    
				elseif GOOD then
				    if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
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
                	    end
	   				end
	    	    end
            end
--[[	           local choice = math.random(1,6)

	                    if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gf_837968a9.mp3", "Oh, my aching back!  As good a time to stop and chat as any, I say.", "yawn", 3270846909, 2717985314, Spawn)
                    	elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_froglok_gf_b1da0602.mp3", "Hail to you, short and shiny one!", "", 2380925828, 15459918, Spawn)
                    	elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_woodelf_gf_2ab5b9e2.mp3", "I wish I had the ability to keep the plants in my home happy.", "", 2624412872, 2478031045, Spawn)
                     	elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_gnome_gf_a777615.mp3", "I wish I knew what some of these new-fangled gnomish inventions are meant to do.", "", 1410161766, 2130476086, Spawn)
                    	elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gf_2d0e8823.mp3", "Almost time to stop and have an ale, isn't it?", "wink", 1106325239, 2982056892, Spawn)
                    	elseif choice == 6 then
                		PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_highelf_gf_a4ddebdc.mp3", "A good day in Qeynos always beats a bad day anywhere else.", "", 2563785575, 2973629845, Spawn)
                    	end]]-- 
               		
		
		elseif race == IKSAR then
			if gender == MALE then
			        if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroath", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  
	                local choice = math.random(1,6)

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
--[[	            local choice = math.random(1,4)
	                if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_darkelf_gf_41fe94ed.mp3", "We share a similar fate -- cast from our homes by the destruction of our world.", "hello", 735434566, 2925685625, Spawn)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_hail_gf_5cacd110.mp3", "If you need help, please find someone who'll provide it.", "shrug", 529474944, 2390194258, Spawn)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_hail_gf_c15f0740.mp3", "Welcome. We greet you.", "yawn", 3949639532, 268039246, Spawn)
            	    elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/iksar_eco_race_evil/ft/eco/evil/iksar_eco_race_evil_ratonga_gf_d01ccae8.mp3", "I wonder where you have come from... so little history to draw on.", "ponder", 3355738899, 1187010903, Spawn)
        	        end	]]--    			
			
			
		elseif race == KERRA then
			if gender == MALE then
			    if EVIL then
			        if FPfaction < 0 then
                        local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then			            
		                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_notcitizen_gm_55c7abb4.mp3", "For Thall's sake, what is it?", "glare", 3110431219, 3470484865, Spawn)
			            end
			        else   
	            local choice = math.random(1,10)

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
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gf_164ffd98.mp3", "I can purr my way out of anything. ", "wink", 4263608089, 504552247, Spawn)
	                elseif choice == 9 then
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_aoi_gf_c9f2b4f1.mp3", "Friendship is too costly around here.", "sigh", 1983387905, 3075550393, Spawn)
	                elseif choice == 10 then
	                PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_aoi_gm_38301159.mp3", "We can't help that!  We're all mad here!", "crazy", 1508409788, 219596858, Spawn)
	                end
                end
				elseif GOOD then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else				    
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
			end
			elseif gender == FEMALE then
			    if EVIL then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			        
                	local choice = math.random(1,4)

                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_9f680679.mp3", "I'd kill to know what the overlord has in that citadel!", "scheme", 3285282644, 3219725501, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_3fe55b38.mp3", "Why, don't I seem to be the popular one today.", "whome", 1475998222, 3731288810, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_895b5e07.mp3", "Everything has a price!  What's yours?", "shrug", 599093835, 2436498104, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_evil_2/ft/kerran/kerran_eco_evil_2_hail_gf_8a065b90.mp3", "I am a kindly master, just so long as you remember your place.", "scold", 1400094764, 1979877393, Spawn)
                    	end
                    end	
				elseif GOOD then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else				    
                	local choice = math.random(1,3)
            
                    	if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_28445ab7.mp3", "I don't spend as much time grooming as the others say I do.", "sulk", 2675025847, 2696760246, Spawn)
	                    elseif choice == 2 then
	                	PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_6c9e41c6.mp3", "Don't think that I'm silly, I just happen to like the simple little things.", "flustered", 1426227770, 2304966225, Spawn)
	                    elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gf_63881722.mp3", "I'm trying to find a new seasoning for my dried fish.", "ponder", 3802648946, 1171453079, Spawn)
                        end
			   	    end
		         end
		    end
 --[[               	local choice = math.random(1,4)
--RACE CHECK
                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_gnome_gf_5efa2600.mp3", "You make my tail twitch with all your cogs and flizgigs.  Please, keep those away from me.", "", 749990561, 792243248, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gf_925a7b74.mp3", "Give me the simplicity of life as the kerra once knew it, and I'll be satisfied.", "", 3093126564, 1574100386, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_hail_gf_4ae9178a.mp3", "I would like nothing better than to be with my pride, away from the bustle of any town.", "", 261206360, 3555440428, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/kerra_eco_race_good/ft/eco/good/kerra_eco_race_good_highelf_gf_d5455b09.mp3", "Good leaders bide their time, planning all the while.  I'm sure you already know this.", "", 2270743009, 1129155946, Spawn)
]]--			
		
		elseif race == OGRE then
			if gender == MALE then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			    
                	local choice = math.random(1,10)
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
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  			    
	            local choice = math.random(1,4)

	                if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_5e63a07a.mp3", "If winning isn't everything, why do we keep score?", "sneer", 3927334706, 1835318852, Spawn)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_2c495445.mp3", "I dabble in repossessions and personal loans. ", "scheme", 4196817122, 2118800432, Spawn)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_9d45b59e.mp3", "There's no way they're better than us.  We have more.", "thanks", 187163254, 678724024, Spawn)
            	    elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gm_c698777f.mp3", "I was never even near the bank.", "whome", 3628945834, 3044934463, Spawn)
	           	    end
                end
	    elseif gender == FEMALE then
	            if FPfaction <0 then
                    local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "neener", 0, 0, Spawn)
				        elseif choice == 2 then	                
	                    PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_notcitizen_gf_8d2a0876.mp3", "I heard you screaming from all the way over there.", "point", 3634348917, 2158238801, Spawn)
                        end
                else
			    local choice = math.random(1,6)
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
	                end
	    	    end
	    	 end
		    --[[	local choice = math.random(1,4)

	                if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_darkelf_gf_12accc66.mp3", "Perhaps the dark ones will require our services in the future.", "scheme", 3576261185, 2087562403, Spawn)
	                elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_hail_gf_5fe381f6.mp3", "Yes, yes, that will do nicely... err, hello, who are you?", "scheme", 3504817921, 2028500155, Spawn)
	                elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_ratonga_gf_7fcc0516.mp3", "Watch for the trolls, they like to eats us!", "hello", 1635718299, 1583941867, Spawn)
                	elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_eco_race_evil/ft/eco/evil/ratonga_eco_race_evil_ratonga_gf_95e0fb2a.mp3", "Small and fast, we go where others can't!", "nod", 362113991, 3436119366, Spawn)
]]--		    
		
		
		elseif race == TROLL then
			if gender == MALE then
			    	if FPfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else  
            	local choice = math.random(1,4)
-- EXTRA            PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/troll/troll_eco_evil_1_hail_gf_630d65f1.mp3", "I used to have my own bridge before tasty dark elves took it from me.", "doh", 1590618969, 2701180460, Spawn)
            	    if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_f9319fbb.mp3", "I like killing things just to see them die.  Don't you?", "giggle", 2044250119, 1492935869, Spawn)
            	    elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_60a4050b.mp3", "Me likes it when they are scared.  It tastes better that way.", "thanks", 2363588727, 2924742015, Spawn)
            	    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_46facad7.mp3", "If I eats you now, I wouldn't know what you were going to say.", "wink", 191047961, 2382342743, Spawn)
            	    elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_ae48977.mp3", "You can't eat money. Then why people care about it so much?", "wince", 404920869, 3492621289, Spawn)
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
            	local choice = math.random(1,6)
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
	 	            end
			    end
			 end   
			    
		elseif race == WOOD_ELF then
			if gender == MALE then
                if Qfaction <0 then
                    local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
				        elseif choice == 2 then                    
                  	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_notcitizen_gm_7e3f7ca.mp3", "I refuse to contaminate myself by conversing with trash.", "sulk", 2529393016, 3485196338, Spawn)
                        end
                else
            	local choice = math.random(1,7)
                    if choice == 1 then
	          	    PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_13f00546.mp3", "Patience they say, is a virtue.  It has taken a lot of patience to rebuild our lives so far from home.", "nod", 1108677104, 3869422611, Spawn)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_fcb14e3e.mp3", "We must remain steadfast and vigilant against tyranny.  This will allow nature to shape Norrath around us.   ", "shakefist", 3130983522, 101511459, Spawn)
	                elseif choice == 3 then
	            	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_62f30b60.mp3", "The Elddar Grove is truly a marvel in these troubled times.  ", "sigh", 303722838, 1259846495, Spawn)
	                elseif choice == 4 then
	               	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_1568024c.mp3", "I see that you have many adventures ahead of you.  This era of darkness is coming to a close.", "ponder", 3567183056, 3400757896, Spawn)
	                elseif choice == 5 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_75b61001.mp3", "Don't let the nice day fool you.  My knee is acting up, a storm is brewing.  I can smell it.", "stretch", 3641086231, 3980350899, Spawn)
	                elseif choice == 6 then
	              	PlayFlavor(NPC, "voiceover/english/woodelf_eco_good_1/ft/woodelf/woodelf_eco_good_1_hail_gm_a2427d62.mp3", "They say time and nature heal all wounds.  Still, some wrongs can never be forgotten.", "sad", 2603397723, 1316741802, Spawn)
                    end
	            end
			elseif gender == FEMALE then
			        if Qfaction <0 then
			            local choice = math.random(1,2)
				        if choice == 1 then
				        PlayFlavor(NPC, "", "", "wince", 0, 0, Spawn)
				        elseif choice == 2 then
				        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
				        end
				    else			    
            	local choice = math.random(1,5)

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
	        	    end    
                end   
            end
--[[	            local choice = math.random(1,7)

	                    if choice == 1 then
	                	PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_3e59423a.mp3", "The blessing of Tunare is the highest blessing of all.", "", 853299003, 3297095439, Spawn)
	                    elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_halfelf_gf_2474b915.mp3", "Let us meet later for a goblet of wine!  I'm sure you have great tales to tell.", "", 2915398014, 2744924447, Spawn)
                    	elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_halfelf_gf_eb3acf89.mp3", "I don't understand the need for piercings, but they look fine on you.", "", 1366742481, 2195063196, Spawn)
                    	elseif choice == 4 then
                		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_woodelf_gf_5621269a.mp3", "I too long for my home in Faydark.  Someday Tunare will answer us, I'm sure.", "", 3953058409, 3176959607, Spawn)
                    	elseif choice == 5 then
                		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_status_gf_80ffe645.mp3", "You have proven yourself among all those who doubt the Feir'Dal's worth.  Well done!", "", 670005551, 4229139858, Spawn)
                    	elseif choice == 6 then
	                   	PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_woodelf_gf_601050b5.mp3", "May Tunare's blessings be with you and yours.", "", 3511142094, 3935712685, Spawn)
                    	elseif choice == 7 then
                		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_darkelf_gf_894a567a.mp3", "The Feir`Dal will not let this traitor of the elven race reside within these city walls. Expect no more than a short welcome here.", "", 26640370, 1478096414, Spawn)
	
	                    end]]--	
	
--[[				if choice == 1 then
	                PlayFlavor(NPC, "voiceover/english/optional2/woodelf_eco_good_2/ft/woodelf/woodelf_eco_good_2_aoi_gf_e67f1023.mp3", "Such a beautiful day!  All I need now is a nice vintage of elven mulberry and my relaxation will be complete.", "stretch", 3245673411, 1934163553, Spawn)
  RACE             	local choice = math.random(1,3)

	                if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_3e59423a.mp3", "The blessing of Tunare is the highest blessing of all.", "", 853299003, 3297095439, Spawn)
                	elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_50387146.mp3", "To be among the highest leaves and branches of a tree is to feel free.", "", 1191446540, 711911709, Spawn)
                	elseif choice == 3 then
	               	PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_woodelf_gf_5621269a.mp3", "I too long for my home in Faydark.  Someday Tunare will answer us, I'm sure.", "", 3953058409, 3176959607, Spawn)
	                
	                end]]--
				
			
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
      	AddTimer(NPC,3000,"ResetTimer") 	
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
           TimeCheck = true	
      	AddTimer(NPC,10000,"ResetTimer")     
	if race >= 0 and race <= 18 and gender >= 1 and gender <= 2 then	
    if race == DWARF then
    	if gender == MALE then
    	local choice = math.random(1,2)

        	    if choice == 1 then
	            PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_drunk/ft/eco/good/dwarf_eco_good_drunk_barmaid_gf_605d472a.mp3", "I could use another ale for the road anytime now.", "tapfoot", 3896761363, 1121187529, Spawn)
        	    elseif choice == 2 then
	            PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_drunk/ft/eco/good/dwarf_eco_good_drunk_barmaid_gf_a1d96f41.mp3", "My stein hasn't any legs to walk over and fill itself up.", "glare", 3669594198, 1736543032, Spawn)
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
            if EVIL then
	            local choice = math.random(1,4)

	            if choice == 1 then
        		PlayFlavor(NPC, "voiceover/english/human_eco_evil_drunk/ft/eco/evil/human_eco_evil_drunk_bartender_gm_e4fde966.mp3", "I haven't that much to drink yet, I got here when... bah I forgot.", "no", 612325975, 4257910058, Spawn)
            	elseif choice == 2 then
        		PlayFlavor(NPC, "voiceover/english/human_eco_evil_drunk/ft/eco/evil/human_eco_evil_drunk_barmaid_gm_a1d96f41.mp3", "My stein hasn't any legs to walk over and fill itself up.", "glare", 2656968471, 1396939792, Spawn)
            	elseif choice == 3 then
        		PlayFlavor(NPC, "voiceover/english/human_eco_evil_drunk/ft/eco/evil/human_eco_evil_drunk_bartender_gm_2b255210.mp3", "Ahhh ... quit your whinin'! I paid ya with my jokes and fine company.", "boggle", 2971571763, 3318817519, Spawn)
            	elseif choice == 4 then
        		PlayFlavor(NPC, "voiceover/english/human_eco_evil_drunk/ft/eco/evil/human_eco_evil_drunk_barmaid_gm_7f76ecc6.mp3", "Hurry up! My stomach's near dry thanks to ya.", "frustrated", 2014105974, 2128019974, Spawn)
	            end            
            elseif GOOD then
            end
    	elseif gender == FEMALE then
    	 end   
    	end 
    end	    
    end	
end


