--[[
    Script Name    : SpawnScripts/Blackburrow/questkeyedchestbronze.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.29 09:07:41
    Script Purpose : 
                   : 
--]]

local AFilthybronzekey = 5707 -- quest ID


function spawn(NPC)
SetRequiredQuest(NPC, AFilthybronzekey, 1)
end

function casted_on(NPC, Spawn, Spell)
if Spell == 'use your key' then
    if HasItem(Spawn, 1655) then
    RemoveItem(Spawn, 1655)  -- a filthy bronze key item
    SetStepComplete(Spawn, AFilthybronzekey, 1)
    end 
  end
end  




function respawn(NPC)
	spawn(NPC)
end