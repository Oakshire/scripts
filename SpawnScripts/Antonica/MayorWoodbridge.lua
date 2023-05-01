--[[
    Script Name    : SpawnScripts/Antonica/MayorWoodbridge.lua
    Script Author  : Dorbin
    Script Date    : 2023.04.30 01:04:47
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/Windstalkers.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SendMessage(Spawn,"Mayor Woodbridge looks at you cautiously. He appears to be sizing you up.")
	PlayFlavor(NPC,"","","ponder",0,0,Spawn)
end

function respawn(NPC)
	spawn(NPC)
end