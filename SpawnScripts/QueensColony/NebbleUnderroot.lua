--[[
    Script Name    : SpawnScripts/QueensColony/NebbleUnderroot.lua
    Script Author  : Zcoretri, premierio015(Update)
    Script Date    : 2015.07.27
    Script Purpose : Nebble Unfderroot dialog
    Modified Date  : 2020.04.03
    Modified by    : premierio015
    Modified Notes   : Added correct VoiceOvers and animation
--]]

function spawn(NPC)

end


function respawn(NPC)
         spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    choice = math.random(1,4)
    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1040.mp3", "Mmm, triggerfish pie!  I can smell it now.", "fishing_reel_in ", 0, 0, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1040.mp3", "Shark fin soup!  Maybe I'll get lucky.", "fishing_reel_in ", 0, 0, Spawn)
    elseif choice == 3 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1040.mp3", "Shark fin soup!  Maybe I'll get lucky.", "fishing_reel_in", 0, 0, Spawn)
    else
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1040.mp3", "Mmm, triggerfish pie!  I can smell it now.", "fishing_reel_in", 0, 0, Spawn)
      end
end


