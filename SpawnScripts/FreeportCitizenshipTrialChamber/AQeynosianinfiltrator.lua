--[[
    Script Name    : SpawnScripts/FreeportCitizenshipTrialChamber/AQeynosianinfiltrator.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.25 04:06:45
    Script Purpose : 
                   : 
--]]

local BQCitizen = 5718
local CVQCitizen = 5719
local GQCitizen = 5720
local NQCitizen = 5721
local SCQCitizen = 5722
local WWQCitizen = 5723

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 5
    local level2 = 6
    local difficulty1 = 6
    local hp1 = 130
    local power1 = 65
    local difficulty2 = 6
    local hp2 = 150
    local power2 = 80
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end
    
waypoints(NPC)
end


function aggro(NPC,Spawn)
    choice = MakeRandomInt(1,2)
    if choice ==1 then
        PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gf_610c650e.mp3", "You must flee!  I'll try to hold them.", "", 1612338229, 10301262, Spawn, 0)
    else
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_aggro_gf_a68f64b6.mp3", "Alarm! Alarm!", "", 1220383018, 2962002142, Spawn)
    end
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -2.76, 0.40, -21.07, 2, 7)
	MovementLoopAddLocation(NPC, -2.76, 0.40, -21.07, 2, 1)
	MovementLoopAddLocation(NPC, -1.49, 0.40, -20.09, 2, 0)
	MovementLoopAddLocation(NPC, 0.57, 0.37, -18.22, 2, 8)
	MovementLoopAddLocation(NPC, 0.09, 0.10, -14.04, 2, 5)
	MovementLoopAddLocation(NPC, 0.09, 0.10, -14.04, 2, 1)
	MovementLoopAddLocation(NPC, 1.45, 0.43, -17.51, 2, 3)
	MovementLoopAddLocation(NPC, -2.34, 0.25, -18.81, 2, 5)
	MovementLoopAddLocation(NPC, -2.34, 0.25, -18.81, 2, 1)
end


function respawn(NPC)
	spawn(NPC)
end

function victory(NPC,Spawn)
    AddTimer(NPC,2500,"FailureExit",1,Spawn)
end   

function FailureExit(NPC,Spawn)
    CloseConversation(NPC,Spawn)
      Race = GetRace(Spawn)

    -- Erudite / Kerra
    if Race == 3 or Race == 11 then
        ZoneRef = GetZone("Stonestair")
        Zone(ZoneRef,Spawn,3.24, -4.37, -98.46, 185.35)

      -- Ratonga / Gnome
    elseif Race == 5 or Race == 13 then
        ZoneRef = GetZone("TempleSt")
        Zone(ZoneRef,Spawn,21.81, 2.92, 21.37, 190.87)


      -- Human / Half Elf
    elseif Race == 9 or Race == 6 then
        ZoneRef = GetZone("BeggarsCourt")
        Zone(ZoneRef,Spawn,61.07, -7.08, 111.67, 339.27)


   -- Orge / Troll
    elseif Race == 12 or Race == 14 then
        ZoneRef = GetZone("BigBend")
        Zone(ZoneRef,Spawn,94.12, -2.00, 2.53, 98)
    
   -- Dark Elf 
    elseif Race == 1  or Race == 19 or Race == 17 then
        ZoneRef = GetZone("longshadow")
        Zone(ZoneRef,Spawn,4.22, 3.00, 71.07, 353.87)

    -- Barbarian / Iksar / Sarnak
    elseif Race == 0 or Race == 10 or Race == 18 then
        ZoneRef = GetZone("ScaleYard")
        Zone(ZoneRef,Spawn,-6.78, -5.63, -12.96, 194.63)

    else 
        ZoneRef = GetZone("BeggarsCourt")
        Zone(ZoneRef,Spawn,58.67, -7.08, 112.61, 352.60)

    end
end