--[[
    Script Name    : SpawnScripts/Antonica/adankfurdockwarden.lua
    Script Author  : Premierio015
    Script Date    : 2022.05.21 09:05:00
    Script Purpose : 
                   : 
--]]

local QUEST_3 = 5561

function spawn(NPC)

end

function targeted(NPC, Spawn)
PlayFlavor(NPC, "", "... zzz ...", "", 0, 0, Spawn)
end


function casted_on(NPC, Spawn, SpellName)
    if SpellName == "Steal Manifest" then
    if GetQuestStep(Spawn, QUEST_3) == 2 then
	  SummonItem(Spawn, 7800, 1)
	  end
	end
end


function death(NPC, Spawn)
if GetQuestStep(Spawn, QUEST_3) == 2 then
if not HasItem(Spawn, 7800) then
 AddLootItem(Spawn, 7800)
elseif HasItem(Spawn, 7800) then
RemoveLootItem(Spawn, 7800)
end
 end
   end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end