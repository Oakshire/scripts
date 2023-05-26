--[[
    Script Name    : SpawnScripts/thunderdome/AntoniaBayle.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.25 12:05:36
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/ClassSkillCheckNew.lua")

function spawn(NPC)

end

function hailed(NPC,Spawn)
    changeSkills(NPC, Spawn)
    FaceTarget(NPC,Spawn)
    PlayFlavor(NPC,"","Done","nod",0,0,Spawn)
end

function respawn(NPC)
	spawn(NPC)
end