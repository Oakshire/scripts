--[[
    Script Name    : SpawnScripts/EastFreeport/TullusNovius.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.16 09:03:33
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
--[[	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_7d00f821.mp3", "All those rumors about the people I decapitated are false, trust me. I decapitated many more by my count.", "pout", 2231247084, 2781311359, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_56e1abc5.mp3", "Don't worry. The last time I killed someone was a few months ago. I've almost forgot how its done.", "threaten", 3295546544, 225622615, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_7c898040.mp3", "If I wanted to speak with riff raff like you, you'd know it.", "scold", 2131940659, 1785120161, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_evil_2/ft/barbarian/barbarian_eco_evil_2_hail_gf_c76c11b.mp3", "No, I didn't say you could look at me or talk to me for that matter.", "heckno", 1951847708, 3399171438, Spawn)
	end	]]--
			 --[[   local choice = math.random(1,7)				    
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
				    end	]]--
	
	--	local choice = math.random(1,2)

          --[[  if choice == 1 then
                    PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_aoi_gf_e557f427.mp3", "Anyone who dares to disagree with me will feel the taste of my steel.", "threaten", 1814321919, 1558985390, Spawn)
                	elseif choice == 2 then
                	PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/darkelf/darkelf_eco_evil_1_hail_gf_8a6fa526.mp3", "Who do those Iksar think they are?  There will be a reckoning one day, I swear.", "shakefist", 604625870, 159976278, Spawn)
                end]]--
                
   --[[             	local choice = math.random(1,9)

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
		PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_b0ae4c2e.mp3", "I really dislike the word 'conscience' don't you?", "glare", 125996156, 1415506360, Spawn)
	elseif choice == 8 then
		PlayFlavor(NPC, "voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_3f3e760a.mp3", "So far, I have found kerrans to have only one life, not nine.  I insist on finding the other eight!", "ponder", 4225274276, 2202716414, Spawn)
	end]]--
	
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

function respawn(NPC)
	spawn(NPC)
end