--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/Geredo.lua
    Script Author  : Cynnar
    Script Date    : 2019.08.04 12:08:08
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    choice = math.random(0, 2)	
    FaceTarget(NPC, Spawn)	
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/geredo/boat_06p_tutorial02_fvo_001.mp3", "Do you happen to have any mechanical leg extenders? I want to see the water.", "agree", 2902186099, 1357276764)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/geredo/boat_06p_tutorial02_fvo_002.mp3", "Thinking I should design a new mechanical boat. It would be perfect! Yes, perfect indeed!", "ponder", 2630458163, 1309095480)
	else
		PlayFlavor(NPC, "voiceover/english/geredo/boat_06p_tutorial02_fvo_003.mp3", "Owie, my elbow is sore!  It always gets this way when I am near water.  I could have helped rescue Anikra and Valik, but I wasn't able to swim.  Thanks for helping me.", "grumble", 2653823570, 1351171804)
	end
end

function respawn(NPC)

end

