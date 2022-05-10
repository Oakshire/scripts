--[[
    Script Name    : SpawnScripts/ElddarGrove/CarolynWu.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.09 11:05:46
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "mood_state", 11852)
    SpawnSet(NPC, "visual_state", "11420")
    AddTimer(NPC, 4000, "EmoteLoop")
end

function hailed(NPC, Spawn)

end

function respawn(NPC)
    spawn(NPC)
end

function EmoteLoop(NPC)
    SpawnSet(NPC, "action_state", 0)
    local choice = MakeRandomInt(1,10)

        if choice == 1 then
            PlayAnimation(NPC, 1966)
            AddTimer(NPC, 2100, "Idle")
        elseif choice == 2 then
            PlayAnimation(NPC, 1967)
            AddTimer(NPC, 1700, "Idle")
        elseif choice == 3 then
            PlayAnimation(NPC, 1968)
            AddTimer(NPC, 2400, "Idle")
        elseif choice == 4 then
             PlayAnimation(NPC, 1969)
            AddTimer(NPC, 3200, "Idle")
        elseif choice == 5 then
            PlayAnimation(NPC, 2953)
            AddTimer(NPC, 3700, "Idle")
        elseif choice == 6 then
            PlayAnimation(NPC, 10868)
            AddTimer(NPC, 1500, "Idle")
        else
            PlayAnimation(NPC, 10889)
            AddTimer(NPC, 3500, "Idle")
        end
end

function Idle(NPC)
    PlayAnimation(NPC, 101) 
    SpawnSet(NPC, "action_state", 101)

    local timer = MakeRandomInt(500,1400)
    AddTimer(NPC, timer, "EmoteLoop")
end