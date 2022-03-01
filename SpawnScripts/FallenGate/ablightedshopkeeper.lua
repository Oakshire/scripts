--[[
    Script Name    : SpawnScripts/FallenGate/ablightedshopkeeper.lua
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
if GetModelType(NPC) == 2857 then -- OGRE FEMALE
PlayFlavor(NPC, "voiceover/english/optional3/ghost_ogre_neriak_blighted/ft/ghost/ghost_ogre_neriak_blighted_2_aggro_gf_7b81c381.mp3", "Yoo no belong here...", "", 3170017567, 336501862, Spawn)
end
end

function killed(NPC, Spawn)
 if GetModelType(NPC) == 2857 then -- OGRE FEMALE
PlayFlavor(NPC, "voiceover/english/optional3/ghost_ogre_neriak_blighted/ft/ghost/ghost_ogre_neriak_blighted_2_victory_gf_71f5f26c.mp3", "Souls are free...", "", 1373574125, 3463050018, Spawn)
end
end  



