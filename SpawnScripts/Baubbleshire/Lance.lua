--[[
    Script Name    : SpawnScripts/Baubbleshire/Lance.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.11 07:01:31
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
--ratcheck(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayAnimation (NPC, "bark")
end

function respawn(NPC)
	spawn(NPC)
end

--function ratcheck(NPC)
   -- if GetSpawnByLocationID 2380001 then