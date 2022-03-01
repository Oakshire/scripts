--[[
    Script Name    : SpawnScripts/FallenGate/LordAkTarnis.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.07 09:07:36
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function aggro(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/optional3/lord_ak_tarnis/fallengate/boss/lord_aktarnis_aggro_9104ec9.mp3", "You approach your death.", "", 1510323888, 457619518, Spawn)
end