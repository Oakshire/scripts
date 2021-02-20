--[[
    Script Name    : SpawnScripts/qeynos_combined02/GilpJadefist.lua
    Script Author  : Rylec
    Script Date    : 2021.02.19 11:02:17
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    local model = MakeRandomInt(1,4)
        if model == 1 then
            SetModelType(NPC, "4936")
        elseif model == 2 then
            SetModelType(NPC, "4937")
        elseif model == 3 then
            SetModelType(NPC, "4938")
        elseif model == 4 then
            SetModelType(NPC, "4939")
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

