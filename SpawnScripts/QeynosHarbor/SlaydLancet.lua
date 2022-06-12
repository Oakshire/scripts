--[[
    Script Name    : SpawnScripts/QeynosHarbor/SlaydLancet.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.11 10:06:54
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
               	local choice = math.random(1,9)

                    	if choice == 1 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_e1633802.mp3", "I was just saying to myself how I really don't like the way your face looks.", "agree", 2892144271, 4226558009, Spawn)
                    	elseif choice == 2 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_dfce6d9.mp3", "If you're looking for trouble, I've got a whole fistful of it waiting for you.", "threaten", 767826754, 1534633302, Spawn)
                    	elseif choice == 3 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_daf01a19.mp3", "If I had another five or six ales, maybe I wouldn't mind talking to you.", "chuckle", 3530112272, 2115498011, Spawn)
                    	elseif choice == 4 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_c467886b.mp3", "Do I look like someone who cares?", "whome", 2648633348, 1343979863, Spawn)
                    	elseif choice == 5 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_f47447aa.mp3", "Keep to yourself and you just might make it through another day.", "wink", 1457279923, 475736143, Spawn)
                    	elseif choice == 6 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_aoi_gm_a2d138b9.mp3", "Where the heck is that horrible stench coming from?   Oh.  You.", "stinky", 3989425659, 2701948732, Spawn)
                    	elseif choice == 7 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_aoi_gm_20171f6b.mp3", "If you know what's good for ya, you didn't see anything!", "scold", 369052520, 3267063374, Spawn)
                    	elseif choice == 8 then
	                    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_34b6867c.mp3", "Get out of my face, loser!", "stare", 1398343887, 3015762585, Spawn)
                    	elseif choice == 9 then
                    	PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gm_528fccc.mp3", "That look's like an awfuly expensive pair of boots there.. friend.", "ponder", 623577963, 2384305800, Spawn)
	                   	end
	               end


    