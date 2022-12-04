--[[
    Script Name    : SpawnScripts/Rogue_IrontoeInn/aChest.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.03 03:12:08
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5786,1,0,0,1)
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Search Chest' and not IsInCombat(Spawn) and GetDistance(NPC,Spawn) <= 6 then
    SetStepComplete(Spawn,5786,1)
    SendMessage(Spawn,"You quickly grab the written orders from the chest.")
    elseif SpellName == 'Search Chest' and not IsInCombat(Spawn) and GetDistance(NPC,Spawn) > 6 then
    SendMessage(Spawn,"You are too far from the chest to get a clear look.")
    elseif SpellName == 'Search Chest' and IsInCombat(Spawn) then
    SendMessage(Spawn,"You have been caught!")
    end    
end

function respawn(NPC)
	spawn(NPC)
end