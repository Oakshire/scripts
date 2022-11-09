--[[
    Script Name    : Spells/Fighter/Banish!.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.06 03:11:17
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Banishes player from the immediate area.

--]]


function cast(Caster, Target)
	Qfaction = GetFactionAmount(Target,11)
	FPfaction = GetFactionAmount(Target,12)
	local zone = GetZone(Caster)
	if GetZoneID(zone) >= 220 and GetZoneID(zone) <= 238 then                -- clarifies which zone is designated EVIL or GOOD
	    GOOD = true
	elseif GetZoneID(zone) == 207 then
	    GOOD = true
	elseif GetZoneID(zone) >= 195 and GetZoneID(zone) <= 198 then
	    GOOD = true
	elseif GetZoneID(zone) == 589 or GetZoneID(zone) == 660 then
	    GOOD = true
	elseif GetZoneID(zone) == 470 then
	    GOOD = true
	elseif GetZoneID(zone) == 45 then
	    NEUTRAL = true
	elseif GetZoneID(zone) >= 124 and GetZoneID(zone) <= 128 then
	    EVIL = true
	elseif GetZoneID(zone) >= 134 and GetZoneID(zone)<= 168 then
	    EVIL = true
	end
	if IsPlayer(Target) then
	if GOOD and Qfaction >0 then
    ExpeltoQHood(Caster,Target)
    elseif GOOD and Qfaction <0 then
    EvilExpel(Caster,Target)        
    end
end
end

function ExpeltoQHood(Caster,Target)
   local Race = GetRace(Target)
    
    --  Kerra
    if Race == 11 or Race == 9 then
        ZoneRef = GetZone("Nettleville")
        Zone(ZoneRef,Target)

    -- Erudite
    elseif Race == 3 or Race == 20 then
        ZoneRef = GetZone("Starcrest")
        Zone(ZoneRef,Target)


    -- Barbarian / Dwarf
    elseif Race == 0 or Race == 2 then
        ZoneRef = GetZone("Graystone")
        Zone(ZoneRef,Target)

    -- Froglok / High Elf 
    elseif Race == 4 or Race == 8 then
        ZoneRef = GetZone("Castleview")
        Zone(ZoneRef,Target)

    -- Half Elf / Wood Elf
    elseif Race == 6 or Race == 15 then
        ZoneRef = GetZone("Willowwood")
        Zone(ZoneRef,Target)

    -- Gnome / Halfling
    elseif Race == 5 or Race == 7 then
        ZoneRef = GetZone("Baubbleshire")
        Zone(ZoneRef,Target)

    else
        ZoneRef = GetZone("Nettleville")
        Zone(ZoneRef,Target)    
    end
end

function EvilExpel(Caster,Target)

        ZoneRef = GetZone("Antonica")
        Zone(ZoneRef,Target)
end
