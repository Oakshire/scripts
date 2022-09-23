--[[
    Script Name    : SpawnScripts/MizansCellar/smashedbarrel2.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.22 06:09:28
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
    if Message == "clean" then
    if QuestStepIsComplete(Spawn,5749,3)== false then
        SetStepComplete(Spawn,5749,3)
        SpawnSet(NPC,"model_type","0")
        PlaySound(NPC,"sounds/widgets/triggered_environmental/enviro_woodsplntr_large002.wav",GetX(NPC), GetY(NPC), GetZ(NPC))
    end
end
end

function respawn(NPC)
	spawn(NPC)
end