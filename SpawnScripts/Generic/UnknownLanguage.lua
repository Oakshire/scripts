--[[
    Script Name    : SpawnScripts/Generic/UnknownLanguage.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.10 04:03:21
    Script Purpose : Currently only for CITY NPCs. For racial-based callouts unique in language VO and Language Font.
                   : 
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

function Garbled(NPC, Spawn, Faction)
	if NPC ~= nil then
		local race = GetRace(NPC)
		local gender = GetGender(NPC)
		
		if race >= 0 and race <= 18 and gender >= 1 and gender <= 2 then
			local file_option = math.random(1, 3)
			local file_race_gender = 0
			if race == BARBARIAN then
				if gender == MALE then
				local choice = math.random(1, 5)  
					if choice == 1 then				
					PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_garbled_gm_1cfda4cd.mp3", "I wonder, do I owe you any coin?  I sure hope not!", "", 2853459229, 77062894, Spawn,1)
				    elseif choice ==2 then
					PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_garbled_gm_51f68cb4.mp3", "The look of your face annoys me! Shove off!", "", 2398080559, 940422767, Spawn,1)
    				elseif choice ==3 then
					PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_garbled_gm_6360be2b.mp3", "Giving you the cold shoulder this way is great.", "", 263596632, 1162455231, Spawn,1)
        			elseif choice ==4 then
					PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_garbled_gm_6f177dfe.mp3", "Try not to screw up my fist with your face.", "", 355102266, 2393608111, Spawn,1)
        			elseif choice ==5 then
					PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_garbled_gm_a1fa2fc8.mp3", "Could really go for a tall pint... and you dont have one.", "", 133865330, 3138674565, Spawn,1)
                    end
				elseif gender == FEMALE then
				local choice = math.random(1, 5)  
	                if choice == 1 then				
					PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_garbled_gf_19afe4c1.mp3", "I wonder, do I owe you any coin?  I sure hope not!", "", 2899758174, 1767429074, Spawn,1)
				    elseif choice ==2 then
					PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_garbled_gf_645e1c12.mp3", "Your face offends! Off with you!", "", 4007621363, 2577915200, Spawn,1)
    				elseif choice ==3 then
					PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_garbled_gf_8d42a684.mp3", "Giving you the cold shoulder this way is great.", "", 3994584076, 1013655548, Spawn,1)
	                elseif choice ==4 then
					PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_garbled_gf_f8c9923f.mp3", "Try not to screw up my fist with your face.", "", 653161975, 3035939203, Spawn,1)
	                elseif choice ==5 then
                    PlayFlavor(NPC, "voiceover/english/barbarian/ft/barbarian/barbarian_eco_garble_garbled_gf_befe5c31.mp3", "Washing three dozen kilts is murder", "", 1408939577, 3083827178, Spawn)
			  
			         end
				end
			elseif race == DARK_ELF then
				if gender == MALE then
				local choice = math.random(1, 3)  
	                if choice == 1 then				
					PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_garbled_gm_8dd636c1.mp3", "Power of the tongue is mighter than any of your weapons.", "", 983323899, 3112871522, Spawn,2)
				    elseif choice ==2 then
					PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_garbled_gm_fab027b8.mp3","Small minds unable to comprehend my intellect.", "", 1055587810, 93253246, Spawn,2)
    				elseif choice ==3 then
					PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_garbled_gm_810a3ce3.mp3", "Senseless is what you are. Staring at me this way.", "", 1130393437, 2011449714, Spawn,2)
	               	end					    
				elseif gender == FEMALE then
	            local choice = math.random(1, 3)  
	                if choice == 1 then				
		            PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_garbled_gf_36e875b.mp3", "Atzeen   fahrseh", "", 761026681, 962675039, Spawn, 2)
	                elseif choice == 2 then
	            	PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_garbled_gf_fab027b8.mp3", "Hach bahr neh jadh osh agh", "", 3272896968, 3465123316, Spawn, 2)
	                elseif choice == 3 then
	            	PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_garbled_gf_810a3ce3.mp3", "Dark in body and soul! Hah!", "", 1604363761, 647045676, Spawn, 2)
				    end				    
				end
			elseif race == DWARF then
				if gender == MALE then
				local choice = math.random(1, 6)  --records show male dwarves use male barbarian VOs
					if choice == 1 then				
					PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_garbled_gm_1cfda4cd.mp3", "I wonder, do I owe you any coin?  I sure hope not!", "", 2853459229, 77062894, Spawn,3)
				    elseif choice ==2 then
					PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_garbled_gm_51f68cb4.mp3", "The look of your face annoys me! Shove off!", "", 2398080559, 940422767, Spawn,3)
    				elseif choice ==3 then
					PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_garbled_gm_6360be2b.mp3", "Giving you the cold shoulder this way is great.", "", 263596632, 1162455231, Spawn,3)
        			elseif choice ==4 then
					PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_garbled_gm_6f177dfe.mp3", "Try not to screw up my fist with your face.", "", 355102266, 2393608111, Spawn,3)
        			elseif choice ==5 then
					PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_garbled_gm_a1fa2fc8.mp3", "Could really go for a tall pint.", "", 133865330, 3138674565, Spawn,3)
        			elseif choice ==6 then
					PlayFlavor(NPC, "voiceover/english/dwarf_qeynos_agitators/ft/dwarf/dwarf_qeynos_agitators_1_garbled_gm_b129f218.mp3", "Let me clear my throat so you can understand.", "", 1491391518, 212658016, Spawn,3)
                    end				    
				elseif gender == FEMALE then
					local choice = math.random(1, 4)  
	                if choice == 1 then				
					PlayFlavor(NPC, "voiceover/english/dwarf/ft/dwarf/dwarf_eco_garble_garbled_gf_80515f2f.mp3", "I wonder, do I owe you any coin?  I sure hope not!", "", 956006367, 3976653265, Spawn,3)
				    elseif choice ==2 then
					PlayFlavor(NPC, "voiceover/english/dwarf/ft/dwarf/dwarf_eco_garble_garbled_gf_89b5cec2.mp3", "I dont like the look of your face! Off with you!", "", 1376862084, 1663916600, Spawn,3)
    				elseif choice ==3 then
					PlayFlavor(NPC, "voiceover/english/dwarf/ft/dwarf/dwarf_eco_garble_garbled_gf_9729edda.mp3", "Giving you the cold shoulder this way is great.", "", 1602667253, 1907098372, Spawn,3)
	                elseif choice ==4 then
					PlayFlavor(NPC, "voiceover/english/dwarf/ft/dwarf/dwarf_eco_garble_garbled_gf_cb1a6fa8.mp3", "Could really go for a tall pint... and you dont have one.", "", 4293920139, 1771029099, Spawn,3)
				    end    
				end
			elseif race == ERUDITE then
				if gender == MALE then
					local choice = math.random(1, 3)  
	                if choice == 1 then				
					PlayFlavor(NPC, "voiceover/english/erudite/ft/erudite/erudite_eco_garble_garbled_gm_7ea96683.mp3", "Power of the tongue is mighter than any of your weapons.", "", 1242543565, 322796390, Spawn,4)
				    elseif choice ==2 then
					PlayFlavor(NPC, "voiceover/english/erudite/ft/erudite/erudite_eco_garble_garbled_gm_db22bac2.mp3","Your mind is far too small to comprehend my intellect.", "nod", 1934819035, 1442456634, Spawn,4)
    				elseif choice ==3 then
					PlayFlavor(NPC, "voiceover/english/erudite/ft/erudite/erudite_eco_garble_garbled_gm_f25c00f6.mp3", "Senseless is what you are. Staring at me this way.", "", 2181028941, 3368136634, Spawn,4)
	               	end			    
				elseif gender == FEMALE then
					local choice = math.random(1, 4)  
	                if choice == 1 then				
					PlayFlavor(NPC, "voiceover/english/erudite_base_1/ft/erudite/erudite_base_1_1_garbled_gf_20ee9ec8.mp3", "Power of the tongue is mighter than any of your weapons.", "", 1414494311, 909104232, Spawn,4)
				    elseif choice ==2 then
					PlayFlavor(NPC, "voiceover/english/erudite_base_1/ft/erudite/erudite_base_1_1_garbled_gf_8c788b45.mp3","Small minded fool. Read more books!", "nod", 159075636, 2590624879, Spawn,4)
				    elseif choice ==3 then
            		PlayFlavor(NPC, "voiceover/english/erudite_base_1/ft/erudite/erudite_base_1_1_garbled_gf_d16cf4e4.mp3", "wow you translated this go do quests or something", "", 3211556166, 1993968789, Spawn, 4)
				    elseif choice ==4 then
            		PlayFlavor(NPC, "voiceover/english/erudite_base_1/ft/erudite/erudite_base_1_1_garbled_gf_d16cf4e4.mp3", "the eternal question sleep or make more dialogue", "", 3211556166, 1993968789, Spawn, 4)
										end				    
				end
			elseif race == FROGLOK then
				if gender == MALE then
					local choice = math.random(1, 4)  				    
                    if choice == 1 then
                    PlayFlavor(NPC, "voiceover/english/froglok/ft/froglok/froglok_eco_garble_garbled_gm_313c0376.mp3", "Valor of Marr is more than an attitude.", "", 1459589175, 20349875, Spawn, 5)
    	            elseif choice == 2 then
		            PlayFlavor(NPC, "voiceover/english/froglok/ft/froglok/froglok_eco_garble_garbled_gm_d88025cf.mp3", "Have you any flies in your pocket?", "", 2553064065, 3197021914, Spawn, 5)
    				elseif choice == 3 then
					PlayFlavor(NPC, "voiceover/english/froglok/ft/froglok/froglok_eco_garble_garbled_gm_d8caf6d7.mp3", "Bounding is my means of getting about this place.", "", 2816022720, 105938521, Spawn,5)
    	            elseif choice == 4 then
		            PlayFlavor(NPC, "voiceover/english/froglok/ft/froglok/froglok_eco_garble_garbled_gm_e15e6e2.mp3", "We are not murlocks. We are frogloks!", "", 3107143047, 4119333315, Spawn, 5)
    			    end                				    
				elseif gender == FEMALE then
				end
			elseif race == GNOME then
				if gender == MALE then
					local choice = math.random(1, 5)  
	                if choice == 1 then				
					PlayFlavor(NPC, "voiceover/english/gnome/ft/gnome/gnome_eco_garble_garbled_gm_4209685a.mp3", "Punting will not happen today.", "", 754274427, 2826976580, Spawn,6)
				    elseif choice ==2 then
					PlayFlavor(NPC, "voiceover/english/gnome/ft/gnome/gnome_eco_garble_garbled_gm_8be4cc54.mp3", "My sprockets just fell from my pocket!", "", 3538910205, 3203956650, Spawn,6)
    				elseif choice ==3 then
					PlayFlavor(NPC, "voiceover/english/gnome/ft/gnome/gnome_eco_garble_garbled_gm_dbff9c5a.mp3", "Gnomekind deserves all the praise for their innovation.", "", 2680872805, 2962768580, Spawn,6)
	                elseif choice ==4 then
					PlayFlavor(NPC, "voiceover/english/gnome/ft/gnome/gnome_eco_garble_garbled_gm_e05cbaf3.mp3", "Foozlebits and fwingers. Gimmy!", "", 1818849573, 715200280, Spawn,6)
			   	    elseif choice ==5 then
					PlayFlavor(NPC, "voiceover/english/gnome/ft/gnome/gnome_eco_garble_garbled_gm_cd85a24f.mp3", "Have you any spare foozlebits?.", "", 2230728991, 3389119515, Spawn,6)
			        end  				    
				elseif gender == FEMALE then
					local choice = math.random(1, 2)  
	                if choice == 1 then				
					PlayFlavor(NPC, "voiceover/english/gnome_sewer_rats/ft/gnome/gnome_sewer_rats_1_garbled_gf_9833761f.mp3", "Never fear! Inventions will provide.", "", 3347501993, 118609776, Spawn,6)
				    elseif choice ==2 then
					PlayFlavor(NPC, "voiceover/english/gnome_sewer_rats/ft/gnome/gnome_sewer_rats_1_victory_gm_3f8221f0.mp3", "My sprockets just fell from my pocket!", "", 2760547670, 4241194541, Spawn,6)
    			    end				    
				end
			elseif race == HALF_ELF then
				if gender == MALE then
					local choice = math.random(1, 5)  				    
                    if choice == 1 then
                    PlayFlavor(NPC, "voiceover/english/halfelf/ft/halfelf/halfelf_eco_garble_garbled_gm_3390a20b.mp3", "My grandma looks better with piercings than your face does.", "", 58495426, 4283803154, Spawn, 7)
    	            elseif choice == 2 then
		            PlayFlavor(NPC, "voiceover/english/halfelf/ft/halfelf/halfelf_eco_garble_garbled_gm_5ded1b43.mp3", "Ever wonder if youre half right and half wrong?", "", 3351053507, 1867045435, Spawn, 7)
    				elseif choice == 3 then
					PlayFlavor(NPC, "voiceover/english/halfelf/ft/halfelf/halfelf_eco_garble_garbled_gm_9aa6006a.mp3", "So much angst against the system I can hardly contain it.", "", 558136573, 1239672624, Spawn,7)
    	            elseif choice == 4 then
		            PlayFlavor(NPC, "voiceover/english/halfelf/ft/halfelf/halfelf_eco_garble_garbled_gm_b2df5aa6.mp3", "People just dont get me. My feelings are all twisted up inside.", "", 1054047347, 282100297, Spawn, 7)
    				elseif choice == 5 then
					PlayFlavor(NPC, "voiceover/english/halfelf/ft/halfelf/halfelf_eco_garble_garbled_gm_2e8f1542.mp3", "So much angst against the system I can hardly contain it.", "", 1894354512, 3476177255, Spawn,7)
                    end

--[[                These are halfelf dervish
                    PlayFlavor(NPC, "voiceover/english/halfelf_dervish/ft/halfelf/halfelf_dervish_1_garbled_gm_8436f046.mp3", "My grandma looks better with piercings than your face does.", "", 4148449659, 1524328444, Spawn, 7)
    	            elseif choice == 2 then
		            PlayFlavor(NPC, "voiceover/english/halfelf_dervish/ft/halfelf/halfelf_dervish_1_garbled_gm_feb1d2e4.mp3", "Ever wonder if youre half right and half wrong?", "", 2791310022, 3266743218, Spawn, 7)
    				elseif choice ==3 then
					PlayFlavor(NPC, "voiceover/english/halfelf_dervish/ft/halfelf/halfelf_dervish_1_garbled_gm_c175ec10.mp3", "So much angst against the system I can hardly contain it.", "", 1192114494, 883220862, Spawn,7)
]]--	               	            
	            	
				elseif gender == FEMALE then
                	local choice = math.random(1,3)
	                   if choice == 1 then
	                    PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_2/ft/halfelf/halfelf_base_2_1_garbled_gf_84555678.mp3", "half is better than nothing", "", 1222734846, 1658567854, Spawn)
                    	elseif choice == 2 then
                		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_2/ft/halfelf/halfelf_base_2_1_garbled_gf_c175ec10.mp3", "people call me a half elf im really a three quarter elf", "", 1655768806, 1430035197, Spawn)
                    	elseif choice == 3 then
                		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_2/ft/halfelf/halfelf_base_2_1_garbled_gf_feb1d2e4.mp3", "i am a half helf and im rude", "", 1628841617, 2548194304, Spawn)
				        end
				end
			elseif race == HALFLING then
				if gender == MALE then
                local choice = math.random(1,2)
                    if choice == 1 then
                    PlayFlavor(NPC, "voiceover/english/halfling_crazed/ft/halfling/halfling_crazed_1_garbled_gm_7b0d27d5.mp3", "Pie in your pocket or happy to see me?", "", 3679068852, 490576745, Spawn, 8)
    	            elseif choice == 2 then
		            PlayFlavor(NPC, "voiceover/english/halfling_crazed/ft/halfling/halfling_crazed_1_garbled_gm_54e55451.mp3", "Never trust a halfling without a taste for jumjum.", "", 2087702128, 2642872371, Spawn, 8)
    	            end				    
				elseif gender == FEMALE then
                local choice = math.random(1,4)
                    if choice == 1 then
                    PlayFlavor(NPC, "voiceover/english/halfling_base_1/ft/halfling/halfling_base_1_1_garbled_gf_54e55451.mp3", "Do you have a pie in your pocket or are you just happy to see me?", "", 1486303618, 2371451914, Spawn, 8)
    	            elseif choice == 2 then
		            PlayFlavor(NPC, "voiceover/english/halfling_base_1/ft/halfling/halfling_base_1_1_garbled_gf_823f1021.mp3", "Never trust a halfling without a taste for jumjum.", "", 3051197299, 2401133915, Spawn, 8)
    	            elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/halfling_base_1/ft/halfling/halfling_base_1_1_garbled_gf_43769f72.mp3", "garbled text not to be translated", "", 893109963, 3250825089, Spawn, 8)
    	            elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/halfling_base_1/ft/halfling/halfling_base_1_1_garbled_gf_7b0d27d5.mp3", "garbled text not to be translated", "", 2116174363, 1770552623, Spawn, 8)
    	            end
				end
			elseif race == HIGH_ELF then
				if gender == MALE then
                local choice = math.random(1,3)
                    if choice == 1 then
                    PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gm_a002225a.mp3", "Read a book. My power of the tongue is mighter than any of your weapons.", "", 3994111433, 864857397, Spawn, 9)
    	            elseif choice == 2 then
		            PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gm_d396c4fc.mp3", "Your mind is far too small to comprehend my intellect. Off with you.", "", 3403333804, 3641522203, Spawn, 9)
                    elseif choice == 3 then
	                PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gm_755db2c3.mp3", "Tunare blesses all her children. Unfortunately you wont know this.", "", 2766992983, 3224256482, Spawn, 9)
	            end				    
				elseif gender == FEMALE then
					local choice = math.random(1, 3)  
	                if choice == 1 then				
					PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gf_755db2c3.mp3", "Read a book. My power of the tongue is mighter than any of your weapons.", "", 1930935604, 3692814157, Spawn,9)
			        elseif choice == 2 then
		            PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gf_a002225a.mp3", "Tunare blesses all her children. Unfortunately you wont know this.", "", 3121965781, 2073270812, Spawn, 9)
    	            elseif choice == 3 then
		            PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gf_fde7b8f7.mp3", "The high elves have the best of life in Castleview.", "", 595061935, 2035542297, Spawn, 9)
    	            end
			    end					    
			
			elseif race == HUMAN then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == IKSAR then
				if gender == MALE then
				    
				    
				elseif gender == FEMALE then
					local choice = math.random(1, 4)  				    
                    if choice == 1 then
                    PlayFlavor(NPC, "voiceover/english/iksar_base_1/ft/iksar/iksar_base_1_1_garbled_gf_3227e578.mp3", "When you hate everyone like we do you learn stupid is uncurable.", "", 1491051702, 2384283394, Spawn, 12)
    	            elseif choice == 2 then
		            PlayFlavor(NPC, "voiceover/english/iksar_base_1/ft/iksar/iksar_base_1_1_garbled_gf_39d8181d.mp3", "Ever been to Sebelis? They have some of the best iksar quisine you could image.", "", 3912501661, 73343976, Spawn, 12)
    				elseif choice == 3 then
					PlayFlavor(NPC, "voiceover/english/iksar_base_1/ft/iksar/iksar_base_1_1_garbled_gf_788f677d.mp3", "Us iksar have fangs. Watch yourself or you will experience them.", "", 578110723, 497129059, Spawn, 12)
    	            elseif choice == 4 then
		            PlayFlavor(NPC, "voiceover/english/iksar_base_1/ft/iksar/iksar_base_1_1_garbled_gf_84d4f1e3.mp3", "Could really go for a platter of floglok legs right now.", "", 3286114835, 3653443796, Spawn, 12)
    			    end  				    
				end
			elseif race == KERRA then
				if gender == MALE then
                local choice = math.random(1,4)
                    if choice == 1 then
                    PlayFlavor(NPC, "voiceover/english/kerran/ft/kerran/kerran_eco_garble_garbled_gm_2686291e.mp3", "Mind if give my claws a good workout?", "", 3043468628, 38902721, Spawn, 13)
    	            elseif choice == 2 then
		            PlayFlavor(NPC, "voiceover/english/kerran/ft/kerran/kerran_eco_garble_garbled_gm_9d6a5ad3.mp3", "Nevermind the litterbox. I need facilities that suit my fancies.", "", 2529038460, 1283968454, Spawn, 13)
                    elseif choice == 3 then
	                PlayFlavor(NPC, "voiceover/english/kerran/ft/kerran/kerran_eco_garble_garbled_gm_d598de6c.mp3", "Roll your R sounds. Move your tongue like this. Rurlubplr", "", 2406034521, 1600126995, Spawn, 13)
                    elseif choice == 4 then
	                PlayFlavor(NPC, "voiceover/english/kerran/ft/kerran/kerran_eco_garble_garbled_gm_87e38c0a.mp3", "Rurlubplr. Move your tongue like this. ", "", 2983711710, 88301434, Spawn, 13)
	            
	            end					    
				elseif gender == FEMALE then
                local choice = math.random(1,4)
                    if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/optional3/kerran/ft/kerran/kerran_eco_garble_garbled_gf_87e38c0a.mp3", "Milk is overrated.", "", 266835931, 3653451247, Spawn, 13)
    	            elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/optional3/kerran/ft/kerran/kerran_eco_garble_garbled_gf_2686291e.mp3", "Can you recommend a good dentist?", "", 4079212472, 1785391422, Spawn, 13)
                    elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/optional3/kerran/ft/kerran/kerran_eco_garble_garbled_gf_9d6a5ad3.mp3", "Kerrans are the best and don't you forget it!", "", 224323381, 733575634, Spawn, 13)
                    elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/optional3/kerran/ft/kerran/kerran_eco_garble_garbled_gf_c5df7b09.mp3", "Blarrdeh blooh parrthymm", "happy", 337817290, 3934534932, Spawn, 13)
	   				end
   		    end
   		    
			elseif race == OGRE then
				if gender == MALE then
                local choice = math.random(1,4)
                    if choice == 1 then
                    PlayFlavor(NPC, "voiceover/english/ogre/ft/ogre/ogre_eco_garble_garbled_gm_5b81626f.mp3", "Picked dwarf is the best thing for a hungry stomach.", "", 3514709231, 112583900, Spawn, 14)
    	            elseif choice == 2 then
		            PlayFlavor(NPC, "voiceover/english/ogre/ft/ogre/ogre_eco_garble_garbled_gm_db73bf19.mp3", "You need to stop and smell the flowers from time to time!", "", 510403883, 4026183304, Spawn, 14)
    	            elseif choice == 3 then
		            PlayFlavor(NPC, "voiceover/english/ogre/ft/ogre/ogre_eco_garble_garbled_gm_77a5c747.mp3", "Zek needs to come back and make us ogres godlike again.", "", 2797105076, 2416568959, Spawn, 14)
    	            elseif choice == 4 then
		            PlayFlavor(NPC, "voiceover/english/ogre/ft/ogre/ogre_eco_garble_garbled_gm_c036e2b.mp3", "Im pretty hungry. Ill take your head and make jelly if youre willing.", "", 244516262, 352386668, Spawn, 14)
                 end				    
				elseif gender == FEMALE then
				end
			elseif race == RATONGA then
				if gender == MALE then
                	local choice = math.random(1,6)

                	if choice == 1 then
	            	PlayFlavor(NPC, "voiceover/english/optional3/ratonga_bloodsabers/ft/ratonga/ratonga_bloodsabers_2_garbled_gm_5a81ec49.mp3", "Hekveten plava SU klina", "", 3536439879, 1109691272, Spawn)
                	elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/optional3/ratonga_bloodsabers/ft/ratonga/ratonga_bloodsabers_2_garbled_gm_bc265d9b.mp3", "EeeSIP   qweek  MEEerallow  neep", "", 148555474, 1278831922, Spawn)
                	elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/optional3/ratonga_bloodsabers/ft/ratonga/ratonga_bloodsabers_2_garbled_gm_5c77ba46.mp3", "Chee   ava   kirAH   tay!", "", 1940215504, 447502824, Spawn)
                	elseif choice == 4 then
            		PlayFlavor(NPC, "voiceover/english/optional3/ratonga_bloodsabers/ft/ratonga/ratonga_bloodsabers_1_garbled_gm_5a81ec49.mp3", "Hekveten plava SU klina", "", 2175556278, 29227183, Spawn)
                	elseif choice == 5 then
	            	PlayFlavor(NPC, "voiceover/english/optional3/ratonga_bloodsabers/ft/ratonga/ratonga_bloodsabers_1_garbled_gm_5c77ba46.mp3", "Chee   ava   kirAH   tay!", "", 806743894, 496586204, Spawn)
	                elseif choice == 6 then
	            	PlayFlavor(NPC, "voiceover/english/optional3/ratonga_bloodsabers/ft/ratonga/ratonga_bloodsabers_1_garbled_gm_21432a6a.mp3", "TravaHAS merallund kBORrten illanya", "", 1269733907, 434806140, Spawn)
		            end				    
				elseif gender == FEMALE then
	                local choice = math.random(1,3)
                    if choice == 1 then
		            PlayFlavor(NPC, "voiceover/english/ratonga_darkblades/ft/ratonga/ratonga_darkblades_1_garbled_gf_5a81ec49.mp3", "Hekveten plava SU klina", "", 4282746773, 1025120966, Spawn)
                	elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_black_magi/ft/ratonga/ratonga_black_magi_1_garbled_gf_21432a6a.mp3", "EeeSIP   qweek  MEEerallow  neep", "", 3484386885, 1475086391, Spawn)
                	elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/ratonga_black_magi/ft/ratonga/ratonga_black_magi_1_garbled_gf_5a81ec49.mp3", "Chee   ava   kirAH   tay!", "", 3639926873, 1002267878, Spawn)
                						
					end    
				end
			elseif race == TROLL then
				if gender == MALE then
                local choice = math.random(1,5)	         
	                if choice == 1 then
		            PlayFlavor(NPC, "voiceover/english/troll/ft/troll/troll_eco_garble_garbled_gm_aa2c46fe.mp3", "You need to stop and smell the flowers from time to time!", "", 1977926860, 997450426, Spawn, 15)
	                elseif choice == 2 then
		            PlayFlavor(NPC, "voiceover/english/troll/ft/troll/troll_eco_garble_garbled_gm_a1a1512f.mp3", "Yekeshan lifestyle requires constant grooming of your earholes.", "", 2161634002, 3014201694, Spawn, 15)
    	           	elseif choice == 3 then
		            PlayFlavor(NPC, "voiceover/english/troll/ft/troll/troll_eco_garble_garbled_gm_c4c81df1.mp3", "Never argue with someone that has nails in their head.", "", 3890142976, 1854948933, Spawn, 15)
	                elseif choice == 4 then
		            PlayFlavor(NPC, "voiceover/english/troll/ft/troll/troll_eco_garble_garbled_gm_43bed989.mp3", "Tasty meats make tasty treats!", "", 2701453259, 3347954170, Spawn, 15)
    	           	elseif choice == 5 then
		            PlayFlavor(NPC, "voiceover/english/troll/ft/troll/troll_eco_garble_garbled_gm_318f674b.mp3", "Really need to improve my vocabulary.", "", 2846330309, 4155347396, Spawn, 15)
	                        
	            end				    
				elseif gender == FEMALE then
            	local choice = MakeRandomInt(1,3)
            	if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_garbled_gf_ea3de794.mp3", "Gahh rahhhm  jerrrtz    kep", "", 3982411427, 3420515042, Spawn, 15)
                	elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_garbled_gf_91739814.mp3", "Neberzzz  nok  uuuuuhhhhhhnet", "", 50333898, 3933945041, Spawn, 15)
                	elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_garbled_gf_c8a301a6.mp3", "Annnzzzzarrrr     oooohaaannnnah     whaaannn", "", 2756199569, 2426773959, Spawn, 15)
					end
                end					
			elseif race == WOOD_ELF then
				if gender == MALE then
                local choice = math.random(1,3)	         
	                if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/woodelf_forrest_wardens/ft/woodelf/woodelf_forrest_wardens_1_garbled_gm_f197012c.mp3", "Molokeeenakah  watroo    olozamm", "", 2097905045, 1612835219, Spawn, 16)
                	elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/woodelf_forrest_wardens/ft/woodelf/woodelf_forrest_wardens_1_garbled_gm_8a0bc5f8.mp3", "Kaamahaneah    queeeola      chi   sa", "", 1811305493, 2624435147, Spawn, 16)
                	elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/woodelf_forrest_wardens/ft/woodelf/woodelf_forrest_wardens_1_garbled_gm_1b979d55.mp3", "Aleeda merende wovesta", "", 2513619643, 1543099294, Spawn, 16)
                  end					    
				elseif gender == FEMALE then--PULLED FROM Willow Wood.  It is accurate.
            	local choice = MakeRandomInt(1,3) 
                	if choice == 1 then
            		PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gf_fde7b8f7.mp3", "Kaamahaneah    queeeola      chi   sa", "", 595061935, 2035542297, Spawn, 16)
                	elseif choice == 2 then
            		PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gf_755db2c3.mp3", "Aleeda merende wovesta", "", 1930935604, 3692814157, Spawn, 16)
                	elseif choice == 3 then
            		PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gf_d396c4fc.mp3", "Molokeeenakah  watroo    olozamm", "", 1717100103, 894236173, Spawn, 16)
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