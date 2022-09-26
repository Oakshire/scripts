--[[
    Script Name    : SpawnScripts/IsleRefuge1/LeavetheIsleofRefuge.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.26 03:09:10
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, Message)
	if Message == "leave the isle" then
        if GetClass(Spawn)>0 then
	    LeaveIsland(NPC, Spawn)
        end
end
end

function LeaveIsland(NPC, Spawn)
    Race = GetRace(Spawn)
    
    
    -- Human / Kerra
    if Race == 9 or Race == 11 then
  --      AddSpellBookEntry(Spawn, 8057, 1)	
        ZoneRef = GetZone("Nettleville")
        Zone(ZoneRef,Spawn)

    -- Erudite
    elseif Race == 3 then
  --      AddSpellBookEntry(Spawn, 8057, 1)
        ZoneRef = GetZone("Starcrest")
        Zone(ZoneRef,Spawn)

    -- Barbarian / Dwarf
    elseif Race == 0 or Race == 2 then
  --      AddSpellBookEntry(Spawn, 8057, 1)
        ZoneRef = GetZone("Graystone")
        Zone(ZoneRef,Spawn)

    -- High Elf / Froglok
    elseif Race == 4 or Race == 8 then
   --     AddSpellBookEntry(Spawn, 8057, 1)
        ZoneRef = GetZone("Castleview")
        Zone(ZoneRef,Spawn)

    -- Half Elf / Wood Elf
    elseif Race == 6 or Race == 15 then
    --    AddSpellBookEntry(Spawn, 8057, 1)
        ZoneRef = GetZone("Willowwood")
        Zone(ZoneRef,Spawn)

    -- Gnome / Halfling
    elseif Race == 5 or Race == 7 then
    --    AddSpellBookEntry(Spawn, 8057, 1)
        ZoneRef = GetZone("Baubbleshire")
        Zone(ZoneRef,Spawn)

end
end

function respawn(NPC)
	spawn(NPC)
end

--[[function LeaveIsland(NPC, Spawn)
    Race = GetRace(Spawn)
  
    Bind(Spawn, 559, -232.03, -56.06, 172.57, 360.0)
    -- Human / Kerra
    if Race == 9 or Race == 11 then
        AddSpellBookEntry(Spawn, 8057, 1)	
        ZoneRef = GetZone("Freeport")
        Zone(ZoneRef,Spawn)

      -- Ratonga / Gnome
    elseif Race == 5 or Race == 13 then
        AddSpellBookEntry(Spawn, 8057, 1)	
        ZoneRef = GetZone("Freeport")
        Zone(ZoneRef,Spawn)


      -- Half Elf
    elseif Race == 6 then
        AddSpellBookEntry(Spawn, 8057, 1)	
        ZoneRef = GetZone("Freeport")
        Zone(ZoneRef,Spawn)


   -- Orge / Troll
    elseif Race == 12 or Race == 14 then
        AddSpellBookEntry(Spawn, 8057, 1)	
        ZoneRef = GetZone("Freeport")
        Zone(ZoneRef,Spawn)
    
   -- Dark Elf / Iksar
    elseif Race == 1 or Race == 10 then
        AddSpellBookEntry(Spawn, 8057, 1)	
        ZoneRef = GetZone("Freeport")
        Zone(ZoneRef,Spawn)



    -- Erudite / Freeblood
    elseif Race == 3 or Race == 19 then
        AddSpellBookEntry(Spawn, 8057, 1)
        ZoneRef = GetZone("Freeport")
        Zone(ZoneRef,Spawn)


    -- Barbarian and Aerakyn
    elseif Race == 0 or Race == 20 then
        AddSpellBookEntry(Spawn, 8057, 1)
        ZoneRef = GetZone("Freeport")
        Zone(ZoneRef,Spawn)

    -- Arasai or Sarnak
    elseif Race == 17 or Race == 18 then
        AddSpellBookEntry(Spawn, 8057, 1)
        ZoneRef = GetZone("Freeport")
        Zone(ZoneRef,Spawn)
]]--