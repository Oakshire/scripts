--[[
    Script Name    : SpawnScripts/Generic/ExpelNonCitizen.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.03 01:11:17
    Script Purpose : 
                   : 
--]]

function NonCitizen(NPC,Spawn)
	Qfaction = GetFactionAmount(Spawn,11)
	FPfaction = GetFactionAmount(Spawn,12)
	local zone = GetZone(NPC)
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

	if GOOD and GetFactionAmount(Spawn,11) >0 then                                                
	    if not HasCompletedQuest(Spawn,5718) and not HasCompletedQuest(Spawn,5719) and not HasCompletedQuest(Spawn,5720) and not HasCompletedQuest(Spawn,5721) and not HasCompletedQuest(Spawn,5722) and not HasCompletedQuest(Spawn,5723) then
        Attack(NPC,Spawn)
        AddTimer(NPC,500,"Expel",1,Spawn)
        SendMessage(Spawn,"A guard has spotted you!","red")
        PlaySound(Spawn,"sounds/ui/ui_warning.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
        end
    end
end


function Expel(NPC,Spawn)
    if IsInCombat(NPC) then
    AddTimer(NPC,500,"Expel",1,Spawn)
    if GetDistance(Spawn,NPC) <=6 then
        CastSpell(NPC,1225)
        PlayAnimation(Spawn,11764)
        ExpeltoHood(NPC,Spawn)
        SetInvulnerable(Spawn)
        SendPopUpMessage(Spawn,"Refugee! You are not allowed inside the walls of Qeynos!",250,0,0)
        SendMessage(Spawn,"Refugee! You are not allowed inside the walls of Qeynos!","red")
        PlaySound(Spawn,"sounds/ui/ui_duel_defeat.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
        SetHP(Spawn,SetMaxHP(Spawn))
    end
end
end

function ExpeltoHood(NPC,Spawn)
   local Race = GetRace(Spawn)
    
    --  Kerra
    if Race == 11 or Race == 9 then
        ZoneRef = GetZone("Nettleville")
        Zone(ZoneRef,Spawn)

    -- Erudite
    elseif Race == 3 or Race == 20 then
        ZoneRef = GetZone("Starcrest")
        Zone(ZoneRef,Spawn)


    -- Barbarian / Dwarf
    elseif Race == 0 or Race == 2 then
        ZoneRef = GetZone("Graystone")
        Zone(ZoneRef,Spawn)

    -- Froglok / High Elf 
    elseif Race == 4 or Race == 8 then
        ZoneRef = GetZone("Castleview")
        Zone(ZoneRef,Spawn)

    -- Half Elf / Wood Elf
    elseif Race == 6 or Race == 15 then
        ZoneRef = GetZone("Willowwood")
        Zone(ZoneRef,Spawn)

    -- Gnome / Halfling
    elseif Race == 5 or Race == 7 then
        ZoneRef = GetZone("Baubbleshire")
        Zone(ZoneRef,Spawn)

    else
        ZoneRef = GetZone("Nettleville")
        Zone(ZoneRef,Spawn)    
    end
end
