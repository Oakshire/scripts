--[[
    Script Name    : SpawnScripts/OutpostOverlord/evilgoblintent3.lua
    Script Author  : Vo1d
    Script Date    : 2019.10.23 05:10:55
    Script Purpose : 
                   : 
--]]

local TheFinalAssault = 367
local EvilGoblinTent1 = 2780125
local EvilGoblinTent2 = 2780124
local EvilGoblinTent3 = 2780123

function spawn(NPC)
    SetRequiredQuest(NPC, TheFinalAssault, 2)
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end

function respawn(NPC)
    Spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
    if SpellName == "burn tent" then
        if CheckTent(Spawn, NPC) == true then
            if GetQuestStep(Spawn, TheFinalAssault) == 2 then
                AddStepProgress(Spawn, TheFinalAssault, 2, 1)
                    BurnTent(Spawn, NPC)
            elseif GetQuestStep(Spawn, TheFinalAssault) == 3 then
                SetStepComlete(Spawn, TheFinalAssault, 2)
            else
            end
        end
    end
end

function BurnTent(Caster, Target)
    SpawnSet(Target, "show_command_icon", 0)
	AddTimer(Target, 60000, "enable_command_icon_tent")
end

function enable_command_icon_tent(NPC, Player)
    SpawnSet(NPC, "show_command_icon", 1)
end

function CheckTent(Caster, Target)
    if GetSpawnID(Target) == EvilGoblinTent1 or
       GetSpawnID(Target) == EvilGoblinTent2 or
       GetSpawnID(Target) == EvilGoblinTent3 then
        return true
    else
        return false
    end
end