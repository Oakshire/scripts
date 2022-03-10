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
				local choice = math.random(1, 4)  
	                if choice == 1 then				
					PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_garbled_gf_19afe4c1.mp3", "I wonder, do I owe you any coin?  I sure hope not!", "", 2899758174, 1767429074, Spawn,1)
				    elseif choice ==2 then
					PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_garbled_gf_645e1c12.mp3", "I dont like the look of your face! Off with you!", "", 4007621363, 2577915200, Spawn,1)
    				elseif choice ==3 then
					PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_garbled_gf_8d42a684.mp3", "Giving you the cold shoulder this way is great.", "", 3994584076, 1013655548, Spawn,1)
	                elseif choice ==4 then
					PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_garbled_gf_f8c9923f.mp3", "Try not to screw up my fist with your face.", "", 653161975, 3035939203, Spawn,1)
				    end
				end
			elseif race == DARK_ELF then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == DWARF then
				if gender == MALE then
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
					PlayFlavor(NPC, "voiceover/english/erudite/ft/erudite/erudite_eco_garble_garbled_gm_7ea96683.mp3", "Read a book. My power of the tongue is mighter than any of your weapons.", "", 1242543565, 322796390, Spawn,4)
				    elseif choice ==2 then
					PlayFlavor(NPC, "voiceover/english/erudite/ft/erudite/erudite_eco_garble_garbled_gm_db22bac2.mp3","Your mind is far too small to comprehend my intellect.", "nod", 1934819035, 1442456634, Spawn,4)
    				elseif choice ==3 then
					PlayFlavor(NPC, "voiceover/english/erudite/ft/erudite/erudite_eco_garble_garbled_gm_f25c00f6.mp3", "Senseless is what you are. Staring at me this way.", "", 2181028941, 3368136634, Spawn,4)
	               	end			    
				elseif gender == FEMALE then
					local choice = math.random(1, 1)  
	                if choice == 1 then				
					PlayFlavor(NPC, "voiceover/english/erudite_base_1/ft/erudite/erudite_base_1_1_garbled_gf_20ee9ec8.mp3", "Read a book. My power of the tongue is mighter than any of your weapons.", "", 1414494311, 909104232, Spawn,4)
				    end				    
				end
			elseif race == FROGLOK then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == GNOME then
				if gender == MALE then
					local choice = math.random(1, 5)  
	                if choice == 1 then				
					PlayFlavor(NPC, "voiceover/english/gnome/ft/gnome/gnome_eco_garble_garbled_gm_4209685a.mp3", "Never fear! I will not punt you regardless of what you do to me.", "", 754274427, 2826976580, Spawn,6)
				    elseif choice ==2 then
					PlayFlavor(NPC, "voiceover/english/gnome/ft/gnome/gnome_eco_garble_garbled_gm_8be4cc54.mp3", "Dont move! My sprockets just fell from my pocket!", "", 3538910205, 3203956650, Spawn,6)
    				elseif choice ==3 then
					PlayFlavor(NPC, "voiceover/english/gnome/ft/gnome/gnome_eco_garble_garbled_gm_dbff9c5a.mp3", "Gnomekind deserves all the praise for their innovation.", "", 2680872805, 2962768580, Spawn,6)
	                elseif choice ==4 then
					PlayFlavor(NPC, "voiceover/english/gnome/ft/gnome/gnome_eco_garble_garbled_gm_e05cbaf3.mp3", "Have you any spare foozlebits? Im one away from a fwinger.", "", 1818849573, 715200280, Spawn,6)
			   	    elseif choice ==5 then
					PlayFlavor(NPC, "voiceover/english/gnome/ft/gnome/gnome_eco_garble_garbled_gm_cd85a24f.mp3", "Have you any spare foozlebits? Im one away from a fwinger.", "", 2230728991, 3389119515, Spawn,6)
			        end  				    
				elseif gender == FEMALE then
					local choice = math.random(1, 2)  
	                if choice == 1 then				
					PlayFlavor(NPC, "voiceover/english/gnome_sewer_rats/ft/gnome/gnome_sewer_rats_1_garbled_gf_9833761f.mp3", "Never fear! I will not punt you regardless of what you do to me.", "", 3347501993, 118609776, Spawn,6)
				    elseif choice ==2 then
					PlayFlavor(NPC, "voiceover/english/gnome_sewer_rats/ft/gnome/gnome_sewer_rats_1_victory_gm_3f8221f0.mp3", "Dont move! My sprockets just fell from my pocket!", "", 2760547670, 4241194541, Spawn,6)
    							    
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
	            end	
				elseif gender == FEMALE then
				end
			elseif race == HALFLING then
				if gender == MALE then
				elseif gender == FEMALE then
                local choice = math.random(1,2)
                    if choice == 1 then
                    PlayFlavor(NPC, "voiceover/english/halfling_base_1/ft/halfling/halfling_base_1_1_garbled_gf_54e55451.mp3", "Do you have a pie in your pocket or are you just happy to see me?", "", 1486303618, 2371451914, Spawn, 8)
    	            elseif choice == 2 then
		            PlayFlavor(NPC, "voiceover/english/halfling_base_1/ft/halfling/halfling_base_1_1_garbled_gf_823f1021.mp3", "Never trust a halfling without a taste for jumjum.", "", 3051197299, 2401133915, Spawn, 8)
    	            end
				end
			elseif race == HIGH_ELF then
				if gender == MALE then
                local choice = math.random(1,2)
                    if choice == 1 then
                    PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gm_a002225a.mp3", "Read a book. My power of the tongue is mighter than any of your weapons.", "", 3994111433, 864857397, Spawn, 9)
    	            elseif choice == 2 then
		            PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gm_d396c4fc.mp3", "Your mind is far too small to comprehend my intellect. Off with you.", "", 3403333804, 3641522203, Spawn, 9)
    	            end				    
				elseif gender == FEMALE then
					local choice = math.random(1, 1)  
	                if choice == 1 then				
					PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gf_755db2c3.mp3", "Read a book. My power of the tongue is mighter than any of your weapons.", "", 1930935604, 3692814157, Spawn,9)
				    end					    
				end
			elseif race == HUMAN then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == IKSAR then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == KERRA then
				if gender == MALE then
				elseif gender == FEMALE then
				end
			elseif race == OGRE then
				if gender == MALE then
				elseif gender == FEMALE then
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