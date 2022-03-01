--[[
    Script Name    : SpawnScripts/qeynos_combined02/aWillowWooddefender570801.lua
    Script Author  : Rylec
    Script Date    : 2021.01.16 05:01:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    math.randomseed(os.time())
    choice = math.random(1133,1139)
    SpawnSet(NPC, "hair_type", choice)
    AddTimer(NPC, 3000, "EmoteLoop")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Say(NPC, "Your deeds here will not be forgotten.")
    PlayAnimation(NPC, 12167)
end

function respawn(NPC)
    spawn(NPC)
end

function EmoteLoop(NPC)
    math.randomseed(os.time())
    local choice = math.random(1,17)
    local timer = math.random(5000,10000)

    if choice == 1 then
-- converse_male01
        PlayAnimation(NPC, 11233)
        AddTimer(NPC, timer, "EmoteLoop")	
    elseif choice == 2 then
-- converse_male02
	PlayAnimation(NPC, 11234)
	AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 3 then
-- converse_male03
	PlayAnimation(NPC, 11235)
	AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 4 then
-- converse_male04
	PlayAnimation(NPC, 2983)
	AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 5 then
-- converse_male05
	PlayAnimation(NPC, 11236)
	AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 6 then
-- converse_male06
	PlayAnimation(NPC, 11237)
        AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 7 then
-- converse_male07
	PlayAnimation(NPC, 11238)
        AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 8 then
-- converse_male08
	PlayAnimation(NPC, 11239)
        AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 9 then
-- converse_male09
	PlayAnimation(NPC, 11240)
        AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 10 then
-- converse_male10
	PlayAnimation(NPC, 11241)
        AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 11 then
-- converse_male11
	PlayAnimation(NPC, 11242)
        AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 12 then
-- converse_male12
	PlayAnimation(NPC, 2991)
	AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 13 then
-- no
	PlayAnimation(NPC, 11881)
        AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 14 then
-- agree
	PlayAnimation(NPC, 10745)
        AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 15 then
-- nod
	PlayAnimation(NPC, 11882)
        AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 16 then
-- heckno
	PlayAnimation(NPC, 11680)
        AddTimer(NPC, timer, "EmoteLoop")
    else
-- shrug
	PlayAnimation(NPC, 12240)
        AddTimer(NPC, timer, "EmoteLoop")
    end
end

--function Idle(NPC)
--	PlayAnimation(NPC, 323)    
--        EmoteLoop(NPC)
--end


