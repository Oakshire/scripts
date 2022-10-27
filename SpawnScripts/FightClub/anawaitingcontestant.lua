--[[
    Script Name    : SpawnScripts/FightClub/anawaitingcontestant.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 12:10:48
    Script Purpose : 
                   : 
--]]



function aggro(NPC,Spawn)
	PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_death_gm_9f33cf68.mp3", "Don't break! Hold the line!", "", 3817730547, 2283622719, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function spawn(NPC)
    SpawnSet(NPC, "action_state", 372)
    AddTimer(NPC, math.random(2000,5000), "EmoteLoop")
end

function EmoteLoop(NPC)
    SpawnSet(NPC, "action_state", 0)
    if not IsInCombat(NPC)then
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
    else
        AddTimer(NPC, 3400, "Idle")
    end
end

function Idle(NPC)
    PlayAnimation(NPC, 372) 
    SpawnSet(NPC, "action_state", 372)

    local timer = MakeRandomInt(500,2500)
    AddTimer(NPC, timer, "EmoteLoop")
end