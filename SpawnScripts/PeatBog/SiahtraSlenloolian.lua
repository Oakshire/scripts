--[[
    Script Name    : SpawnScripts/PeatBog/SiahtraSlenloolian.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.18 07:05:10
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1033.mp3", "There appears to be increased troll activity in the Peat Bog.  Curious.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1033.mp3", "My soil and water samples are producing some curious results.  I wonder what could be causing this?", "", 0, 0, Spawn, 0)
    end
end

function respawn(NPC)
	spawn(NPC)
end