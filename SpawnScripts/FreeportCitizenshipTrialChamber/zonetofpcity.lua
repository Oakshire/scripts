--[[
    Script Name    : SpawnScripts/FreeportCitizenshipTrialChamber/zonetofpcity.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.27 12:06:01
    Script Purpose : 
                   : 
--]]
local BQCitizen = 5871
local CVQCitizen = 5866
local GQCitizen = 5867
local NQCitizen = 5868
local SCQCitizen = 5869
local WWQCitizen = 5870

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Player,SpellName)
 if SpellName == 'Enter Qeynos' then  
    local con = CreateConversation()
if not HasCompletedQuest(Player,BQCitizen) and
not HasCompletedQuest(Player,CVQCitizen) and
not HasCompletedQuest(Player,GQCitizen) and
not HasCompletedQuest(Player,NQCitizen) and
not HasCompletedQuest(Player,SCQCitizen) and
not HasCompletedQuest(Player,WWQCitizen) then
    SendMessage(Player,"You must be a citizen to enter the city.")
    SendPopUpMessage(Player,"You must be a citizen to enter the city.",255,255,255)
    PlaySound(Spawn,"sounds/ui/ui_warning.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
else    
    AddConversationOption(con, "Yes", "Leave")
    AddConversationOption(con, "No","CloseConversation")
    StartDialogConversation(con, 1, NPC, Player, "Do you wish to enter the City of Freeport?")
end
end
end

function Leave(NPC,Spawn)
    CloseConversation(NPC,Spawn)
      Race = GetRace(Spawn)

    -- Erudite / Kerra
    if Race == 3 or Race == 11 then
        ZoneRef = GetZone("NorthFreeport")
        Zone(ZoneRef,Spawn,-5.33, -20.05, -307.49, 173.11)

      -- Ratonga / Gnome
    elseif Race == 5 or Race == 13 then
        ZoneRef = GetZone("SouthFreeport")
        Zone(ZoneRef,Spawn,-174.13, -36.65, 325.36, 30.57)


      -- Human / Half Elf
    elseif Race == 9 or Race == 6 then
        ZoneRef = GetZone("NorthFreeport")
        Zone(ZoneRef,Spawn,-146.95, -50.60, -376.78, 183.34)


   -- Orge / Troll
    elseif Race == 12 or Race == 14 then
        ZoneRef = GetZone("SouthFreeport")
        Zone(ZoneRef,Spawn,61.09, -12.09, 247.55, 4.3)
    
   -- Dark Elf 
    elseif Race == 1  or Race == 19 or Race == 17 then
        ZoneRef = GetZone("NorthFreeport")
        Zone(ZoneRef,Spawn,-80.29, -34.58, -369.26, 178.10)

    -- Barbarian / Iksar / Sarnak
    elseif Race == 0 or Race == 10 or Race == 18 then
        ZoneRef = GetZone("SouthFreeport")
        Zone(ZoneRef,Spawn,-62.26, -25.02, 282.78, 19.45)

    else 
        ZoneRef = GetZone("NorthFreeport")
        Zone(ZoneRef,Spawn,-146.95, -50.60, -376.78, 183.34)

    end
end