--[[
    Script Name    : SpawnScripts/Edgewater/pileofbones.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.05 07:07:17
    Script Purpose : 
                   : 
--]]

local TheCoinofBattle = 5290   

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)  
end

function InRange(NPC, Spawn)
 if not HasQuest(Spawn, TheCoinofBattle) and not HasCompletedQuest(Spawn,  TheCoinofBattle) then
     AddPrimaryEntityCommand(Spawn, NPC, "examine pile of bones", 5, "examine pile of bones", "", 100) 
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'examine pile of bones' then
                OfferQuest(NPC, Spawn,  TheCoinofBattle)
    SetAccessToEntityCommand(Spawn,NPC,"examine pile of bones", 0)
     SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
    end
end

function check(NPC, Spawn)
     if not HasQuest(Spawn,  TheCoinofBattle) and not HasCompletedQuest(Spawn,  TheCoinofBattle) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"examine pile of bones", 1)
end
   end

function respawn(NPC)
	spawn(NPC)
end