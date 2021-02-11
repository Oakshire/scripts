--[[
    Script Name    : SpawnScripts/qeynos_combined02/InitiateLoFan.lua
    Script Author  : Rylec
    Script Date    : 2021.02.10 05:02:11
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC, 4000, "EmoteLoop")
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)

end

function EmoteLoop(NPC)
    SpawnSet(NPC, "action_state", 0)
    local choice = MakeRandomInt(1,8)

        if choice == 1 then
            PlayAnimation(NPC, 1181)
            AddTimer(NPC, 1300, "Idle")
        elseif choice == 2 then
            PlayAnimation(NPC, 1201)
            AddTimer(NPC, 1300, "Idle")
        elseif choice == 3 then
            PlayAnimation(NPC, 1284)
            AddTimer(NPC, 1550, "Idle")
        elseif choice == 4 then
            PlayAnimation(NPC, 1286)
            AddTimer(NPC, 1300, "Idle")
        elseif choice == 5 then
            PlayAnimation(NPC, 1287)
            AddTimer(NPC, 950, "Idle")
        elseif choice == 6 then
            PlayAnimation(NPC, 11830)
            AddTimer(NPC, 1300, "Idle")
        elseif choice == 7 then
            PlayAnimation(NPC, 11831)
            AddTimer(NPC, 2450, "Idle")
        else
            PlayAnimation(NPC, 11832)
            AddTimer(NPC, 1750, "Idle")
        end
end

function Idle(NPC)
    PlayAnimation(NPC, 372) 
    SpawnSet(NPC, "action_state", 372)

    local timer = MakeRandomInt(500,2500)
    AddTimer(NPC, timer, "EmoteLoop")
end
