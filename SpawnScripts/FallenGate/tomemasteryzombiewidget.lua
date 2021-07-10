--[[
    Script Name    : SpawnScripts/FallenGate/tomemasteryzombiewidget.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.09 08:07:48
    Script Purpose : 
                   : 
--]]

local ZatirresFirstZombie = 15650

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)  
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function InRange(NPC, Spawn)
 if not HasItem(Spawn,  ZatirresFirstZombie) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"Search Urn", 1)
elseif HasItem(Spawn, ZatirresFirstZombie) then
        SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    SetAccessToEntityCommand(Spawn,NPC,"Search Urn", 0)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Search Urn' then
		    if not HasItem(Spawn, ZatirresFirstZombie) then
		    SendMessage(Spawn, "You find an old tattered book.")
		    SendPopUpMessage(Spawn, "You receive Zattire's First Zombie.", 255, 255, 255)
		    SummonItem(Spawn, ZatirresFirstZombie)
		    elseif HasItem(Spawn, ZatirresFirstZombie) then
   SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    SetAccessToEntityCommand(Spawn,NPC,"Search Urn", 0)
		    end
end
   end

function respawn(NPC)
	spawn(NPC)
end