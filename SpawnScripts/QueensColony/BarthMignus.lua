--[[
    Script Name    : SpawnScripts/QueensColony/BarthMignus.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Barth Mignus dialog
    Modified Date  : 2020.04.09
    Modified by    : premierio015
    Notes          : Added all dialogues, now uses correct VoiceOvers.
--]]
function spawn (NPC)
      hailed(NPC, Spawn)
end

function respawn (NPC)
     spawn(NPC)
end	 

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	math.randomseed(os.time())
	choice = math.random (1, 3)
	str = tostring(choice)
	if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1062.mp3", "Aah! Once it hit the lips... i've been waiting for an ale all day.", "", 0, 0, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1062.mp3", "I hear Murrar Shar is on the island.", "", 0, 0, Spawn)
	else
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1062.mp3", "You need to be careful not to fall off into the bay. Not becasue of the sharks, but because ale and seawater don't mix.", "", 0, 0, Spawn)
end
end


