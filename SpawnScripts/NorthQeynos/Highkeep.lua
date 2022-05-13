--[[
    Script Name    : SpawnScripts/NorthQeynos/Highkeep.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.13 04:05:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
 if GetFactionAmount(Spawn,11) <0 then
    	FaceTarget(NPC, Spawn)
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
        end
     else   
RandomGreeting(NPC, Spawn)
    end
end

function respawn(NPC)
	spawn(NPC)
end

	function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1054.mp3", "The clouds are filled with more than rain and thunder.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1054.mp3", "Beware the presence of Freeport. The Overlord's reach has extended into the clouds.", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1054.mp3", "Beware the Ulteran Spires. They will lead you to dangers greater than the depths of Solusek's Eye.", "", 0, 0, Spawn, 0)
    end
end