--[[
    Script Name    : SpawnScripts/NorthQeynos/GavinIronforge.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.23 12:04:36
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "Hail and well met!  I am Gavin Ironforge, an apprentice shieldsmith.  Sometimes I help Tara--from the Jewel Box--with her duties, but I'm unusually busy today and can't get to everything.", "hello", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end