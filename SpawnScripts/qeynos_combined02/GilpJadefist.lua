--[[
    Script Name    : SpawnScripts/qeynos_combined02/GilpJadefist.lua
    Script Author  : Rylec
    Script Date    : 2021.02.19 11:02:17
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    local model = MakeRandomInt(1,3)
        if model == 1 then
            SetModelType(NPC, "76")
            SpawnSet(NPC,"soga_model_type", "76")
            SpawnSet(NPC,"skin_color", "138 0 137")
--            SpawnSet(NPC,"eye_color", "234 198 255")
        elseif model == 2 then
            SetModelType(NPC, "4940")
            SpawnSet(NPC,"soga_model_type", "4940")
            SpawnSet(NPC,"skin_color", "0 53 109")
--            SpawnSet(NPC,"eye_color", "45 53 0")
        elseif model == 3 then
            SetModelType(NPC, "4943")
            SpawnSet(NPC,"soga_model_type", "4943")
            SpawnSet(NPC,"skin_color", "252 124 104")
--            SpawnSet(NPC,"eye_color", "1 192 140")
        elseif model == 4 then
            SetModelType(NPC, "4944")
            SpawnSet(NPC,"soga_model_type", "4944")
            SpawnSet(NPC,"skin_color", "0 1 47")
--            SpawnSet(NPC,"eye_color", "1 192 140")
        elseif model == 5 then
            SetModelType(NPC, "4940")
        elseif model == 6 then
            SetModelType(NPC, "4941")  
        elseif model == 7 then
            SetModelType(NPC, "4942")  
        elseif model == 8 then
            SetModelType(NPC, "4943")
        else
            SetModelType(NPC, "4944")  
        end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
	Dialog.AddDialog("May your path always be clear.")
	Dialog.AddOption("Thanks.")
	Dialog.Start()    
end

function respawn(NPC)
    spawn(NPC)
end

