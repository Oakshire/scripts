--[[
    Script Name    : SpawnScripts/FreeportCitizenshipTrialChamber/zonetofpvillages.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.26 04:06:56
    Script Purpose : Race based door for returning to racial hamlet.  Newer/evil races are sent to BeggersCourt.
                   : 
--]]



function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn,SpellName)
 if SpellName == 'Return Home' then  
    local con = CreateConversation()
    AddConversationOption(con, "Yes", "Leave")
    AddConversationOption(con, "No","CloseItemConversation")
    StartDialogConversation(con, 1, NPC, Spawn, "Do you wish to leave the trial chamber?")
end
end

function Leave(NPC,Spawn)
    CloseConversation(NPC,Spawn)
      Race = GetRace(Spawn)

    -- Erudite / Kerra
    if Race == 3 or Race == 11 then
        ZoneRef = GetZone("Stonestair")
        Zone(ZoneRef,Spawn)

      -- Ratonga / Gnome
    elseif Race == 5 or Race == 13 then
        ZoneRef = GetZone("TempleSt")
        Zone(ZoneRef,Spawn)


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
        Zone(ZoneRef,Spawn)

    else 
        ZoneRef = GetZone("BeggarsCourt")
        Zone(ZoneRef,Spawn,58.67, -7.08, 112.61, 352.60)

    end
end