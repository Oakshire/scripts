--[[
    Script Name    : SpawnScripts/DownBelow_Classic/AFallenPrince.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.09 09:01:57
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetSeeHide(NPC,1)
    SetSeeInvis(NPC,1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end