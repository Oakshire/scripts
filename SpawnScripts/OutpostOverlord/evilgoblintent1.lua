--[[
    Script Name    : SpawnScripts/OutpostOverlord/evilgoblintent1.lua
    Script Author  : Vo1d
    Script Date    : 2019.10.23 05:10:42
    Modified Date  : 20.05.2020
    Modified by   :  premierio015
    Modified Notes : Now burn all the tunarians around the tent. TODO: Chat shows messages "evil_goblin_tent has killed <mobname>, should be removed somehow. Tent should have huge fire visual state, according to packet data effect should be applied on "dpo_invisible_cube" object and not on tent widget. 
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
                SpawnSetByDistance(NPC, 15, "visual_state", 491)
                KillSpawnByDistance(NPC, 15, 0, 1)
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