--[[
    Script Name    : SpawnScripts/QueensColony/aweaksparringpartner133771497.lua
    Script Author  : Rylec
    Script Date    : 2021.01.01 02:01:44
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
	math.randomseed(os.time())
	voice = math.random (1,3)

        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1004.mp3", "You can attack me whenever you're ready. You can do that by double-clicking me, by right clicking me and selecting 'attack,' by using an offensive ability while you have me targeted, or by turning on auto attack by pressing the ~ key while you have me targeted.", "", 0, 0, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function death(NPC, Spawn)
        Despawn(NPC) 
end
