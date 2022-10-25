--[[
    Script Name    : SpawnScripts/Antonica/DockmasterWilson.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.24 04:10:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1002.mp3", "Our boats are some of the stoutest on the ocean.", "nod", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1002.mp3", "I'll set you up with a ride to the city if ya be need'n.", "agree", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1002.mp3", "Once the waters calm, I'll be able to send you off to new lands.", "shrug", 0, 0, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1002.mp3", "Head on into the Qeynos Harbor if you're looking for some grub or other passage.", "smile", 0, 0, Spawn, 0)

	end
end

function respawn(NPC)
	spawn(NPC)
end