--[[
    Script Name    : SpawnScripts/Antonica/aAMBUSHhighwayman.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.01 11:05:35
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/HighwaymanAntonica.lua")

function spawn(NPC)
--[[    CastSpell(NPC,41)
    local Level = GetLevel(NPC)
    local level1 = 18
    local level2 = 19
    local difficulty1 = 6
    local hp1 = 1180
    local power1 = 410
    local difficulty2 = 6
    local hp2 = 1315
    local power2 = 425
    AddTimer(NPC,MakeRandomInt(5000,11000),"Action")
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end]]--
end

function Action(NPC)
    local choice = MakeRandomInt(1, 9)
    if IsInCombat(NPC)== false then
    if choice == 1 then
        PlayFlavor(NPC, "", "", "cutthroat", 0, 0)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "stare", 0, 0)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "shakefist", 0, 0)
    elseif choice == 4 then
        PlayFlavor(NPC, "", "", "brandish", 0, 0)
    elseif choice == 5 then
        PlayFlavor(NPC, "", "", "taunt", 0, 0)
    elseif choice == 6 then
        PlayFlavor(NPC, "", "", "tapfoot", 0, 0)
    elseif choice == 7 then
        PlayFlavor(NPC, "", "", "chuckle", 0, 0)
    elseif choice == 8 then
        PlayFlavor(NPC, "", "", "sneer", 0, 0)
    elseif choice == 9 then
        PlayFlavor(NPC, "", "", "sniff", 0, 0)
    end
    end
AddTimer(NPC,MakeRandomInt(7000,11000),"Action")
end   





function respawn(NPC)
	spawn(NPC)
end