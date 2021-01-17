--[[
    Script Name    : SpawnScripts/qeynos_combined02/aWillowWooddefender.lua
    Script Author  : Rylec
    Script Date    : 2021.01.16 05:01:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    EmoteLoop(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Say(NPC, "Your deeds here will not be forgotten.")
    PlayAnimation(NPC, 12167)
end

function respawn(NPC)

end

function EmoteLoop(NPC)
--[[    math.randomseed(os.time())
    local choice = math.random(1,6)

    if choice == 1 then
-- converse_male01--]]
        PlayAnimation(NPC, 11233)
        AddTimer(NPC, 10500, "Idle")	
--[[    elseif choice == 2 then
-- converse_male02
	PlayAnimation(NPC, 11234)
	AddTimer(NPC, 4500, "Idle")
    elseif choice == 3 then
-- converse_male03
	PlayAnimation(NPC, 11235)
	AddTimer(NPC, 1700, "Idle")
    elseif choice == 5 then
-- converse_male04
	PlayAnimation(NPC, 2983)
	AddTimer(NPC, 8500, "Idle")
-- converse_male05
	PlayAnimation(NPC, 11236)
	AddTimer(NPC, 8500, "Idle")
    elseif choice == 5 then
-- converse_male06
	PlayAnimation(NPC, 11237)
        AddTimer(NPC, 30000, "Idle")
    elseif choice == 5 then
-- converse_male07
	PlayAnimation(NPC, 11238)
        AddTimer(NPC, 30000, "Idle")
    elseif choice == 5 then
-- converse_male08
	PlayAnimation(NPC, 11239)
        AddTimer(NPC, 30000, "Idle")
    elseif choice == 5 then
-- converse_male09
	PlayAnimation(NPC, 11240)
        AddTimer(NPC, 30000, "Idle")
    elseif choice == 5 then
-- converse_male10
	PlayAnimation(NPC, 11241)
        AddTimer(NPC, 30000, "Idle")
    elseif choice == 5 then
-- converse_male11
	PlayAnimation(NPC, 11242)
        AddTimer(NPC, 30000, "Idle")
-- converse_male12
	PlayAnimation(NPC, 2991)
	AddTimer(NPC, 8500, "Idle")
    elseif choice == 5 then
-- no
	PlayAnimation(NPC, 11881)
        AddTimer(NPC, 30000, "Idle")
    elseif choice == 4 then
-- agree
	PlayAnimation(NPC, 10745)
        AddTimer(NPC, 3500, "Idle")
    elseif choice == 5 then
-- nod
	PlayAnimation(NPC, 11882)
        AddTimer(NPC, 30000, "Idle")
    elseif choice == 5 then
-- heckno
	PlayAnimation(NPC, 11680)
        AddTimer(NPC, 30000, "Idle")
    elseif choice == 5 then
-- shrug
	PlayAnimation(NPC, 12240)
        AddTimer(NPC, 30000, "Idle")
    end--]]
end

function Idle(NPC)
	PlayAnimation(NPC, 323)    
        EmoteLoop(NPC)
end


