--[[
    Script Name    : SpawnScripts/qeynos_combined02/InquistrainingdummyNPC.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.03 02:10:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC) 
    SetLuaBrain(NPC)
    SetBrainTick(NPC, 500)
    Think(NPC, Spawn)
end



function Think(NPC, Spawn)                -- MAKES TRAINING DUMMY IS JUST A DUMMY (WON'T ATTACK BACK ANYMORE LOL)
    local mostHated = GetMostHated(NPC)
        if mostHated ~= nil then
        ClearHate(NPC)
        SetInCombat(NPC, false)
        ClearEncounter(NPC)
    end    
end

function healthchanged(NPC, Spawn, Damage)   -- MAKES TRAINING DUMMY UNDYING
 local npc_hp = GetHP(NPC)
    if Damage >= npc_hp then
        SetHP(NPC, GetMaxHP(NPC))
        return -1 -- DIPLOMATIC immunity!!
    end
    return 0 -- use default Damage passed in
end




function respawn(NPC)
    spawn(NPC)
end