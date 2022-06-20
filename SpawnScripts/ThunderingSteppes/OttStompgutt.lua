--[[
    Script Name    : SpawnScripts/ThunderingSteppes/OttStompgutt.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.20 03:06:08
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function aggro(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(OttSpawn,"","Ye come lookin' for that sticker the fool dropped when he ran?  Ye can't have it!  It's mine now!","",0,0)
	
end

function respawn(NPC)
	spawn(NPC)
end