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
	voice = math.random (1, 3)
	str = tostring(voice)

        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1062.mp3", "", "", 0, 0, Spawn)

        text = math.random(1,3)

        if text == 1 then
            Say(NPC, "Aah! Once it hit the lips... I've been waiting for an ale all day.")
        elseif text == 2 then
            Say(NPC, "I hear Murrar Shar is on the island.")
        else
            Say(NPC, "Ya need to be careful not to fall off into the bay. Not becasue of the sharks, but because ale and seawater don't mix.")	
        end
end


