--[[
    Script Name    : SpawnScripts/FrostfangSea/DefenderDetmer.lua
    Script Author  : Flunklesnarkin
    Script Date    : 2015.10.14 09:10:02
    Script Purpose : 
                   : Testing guard voiceovers.. not complete
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1002.mp3", "", "", 0, 0, Spawn)
    elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1002.mp3", "", "", 0, 0, Spawn)
    elseif choice == 3 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1002.mp3", "", "", 0, 0, Spawn)
    end

end

function respawn(NPC)

end

