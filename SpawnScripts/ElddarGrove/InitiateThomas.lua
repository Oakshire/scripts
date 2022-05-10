--[[
    Script Name    : SpawnScripts/ElddarGrove/InitiateThomas.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.09 11:05:07
    Script Purpose : 
                   : 
--]]
function spawn(NPC)
    SpawnSet(NPC, "action_state", 372)
    AddTimer(NPC, math.random(2000,5000), "EmoteLoop")
end

function EmoteLoop(NPC)
    SpawnSet(NPC, "action_state", 0)
    local choice = MakeRandomInt(1,8)

        if choice == 1 then
            PlayAnimation(NPC, 1644)
            AddTimer(NPC, 1550, "Idle")
        elseif choice == 2 then
            PlayAnimation(NPC, 1646)
            AddTimer(NPC, 2100, "Idle")
        elseif choice == 3 then
            PlayAnimation(NPC, 1284)
            AddTimer(NPC, 2050, "Idle")
        elseif choice == 4 then
            PlayAnimation(NPC, 3021)
            AddTimer(NPC, 2100, "Idle")
        elseif choice == 5 then
            PlayAnimation(NPC, 1201)
            AddTimer(NPC, 1450, "Idle")
        elseif choice == 6 then
            PlayAnimation(NPC, 1181)
            AddTimer(NPC, 1550, "Idle")
        elseif choice == 7 then
            PlayAnimation(NPC, 4506)
            AddTimer(NPC, 3400, "Idle")
        else
            PlayAnimation(NPC, 3037)
            AddTimer(NPC, 2300, "Idle")
        end
end

function Idle(NPC)
    PlayAnimation(NPC, 372) 
    SpawnSet(NPC, "action_state", 372)

    local timer = MakeRandomInt(500,2500)
    AddTimer(NPC, timer, "EmoteLoop")
end