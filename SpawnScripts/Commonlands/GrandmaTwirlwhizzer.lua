--[[
    Script Name    : SpawnScripts/Commonlands/GrandmaTwirlwhizzer.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.24 09:05:58
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/grandma_twirlwhizzer/commonlands/quest/qst_grandma_twirlwhizzer_callout1_80772375.mp3", "Oh dear me, who are you?", "", 3303419274, 103282159, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end