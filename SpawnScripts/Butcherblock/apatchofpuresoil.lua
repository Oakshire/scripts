--[[
    Script Name    : SpawnScripts/Butcherblock/apatchofpuresoil.lua
    Script Author  : jakejp
    Script Date    : 2018.06.13 09:06:04
    Script Purpose : 
                   : 
--]]

local DiggingInTheYard = 313

function spawn(NPC)
    AddSpawnAccess(NPC, NPC)
    SetPlayerProximityFunction(NPC, 40, "CheckQuest", "CheckQuest")
    SetRequiredQuest(NPC, DiggingInTheYard, 1)

end

function casted_on(Target, Caster, SpellName)
    if SpellName == "gather" and GetQuestStep(Caster, DiggingInTheYard) == 1 then
	    Despawn(Target)
    end
end

function respawn(NPC)
    spawn(NPC)
end

function CheckQuest(NPC, Player)
    if HasQuest(Player, DiggingInTheYard) and GetQuestStep(Player, DiggingInTheYard) == 1 then
        AddSpawnAccess(NPC, Player)
    else 
        RemoveSpawnAccess(NPC, Player)
    end
end