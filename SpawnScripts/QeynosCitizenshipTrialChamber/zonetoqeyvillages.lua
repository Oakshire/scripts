--[[
    Script Name    : SpawnScripts/QeynosCitizenshipTrialChamber/zonetoqeyvillages.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.31 11:08:44
    Script Purpose : Race based door for returning to racial hamlet.  Newer/evil races are sent to Nettleville.
                   : 
--]]



function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn,SpellName)

 if SpellName == 'Return Home' then  
    if GetRace(Spawn)== 7 or GetRace(Spawn)== 5 then
      BBShire = GetZone("Baubbleshire")
       Zone(BBShire,Spawn,819.46, -20.60, -525.61, 200.47)
       
    elseif GetRace(Spawn)== 0 or GetRace(Spawn)== 2 then
        Gray = GetZone("graystone")
        Zone(Gray,Spawn,865.03, -25.45, -97.91, 357.68)
        
    elseif GetRace(Spawn)== 4 or GetRace(Spawn)== 8 then
        CV = GetZone("castleview")
        Zone(CV,Spawn,729.01, -21.10, -124.36, 290.81)
        
    elseif GetRace(Spawn)== 9 or GetRace(Spawn)== 11 then
        Net = GetZone("nettleville")
        Zone(Net,Spawn,670.07, -20.39, 273.85, 114.78)
        
    elseif GetRace(Spawn)== 3 or GetRace(Spawn)== 8 then
        SC = GetZone("starcrest",704.07, -20.38, 264.40, 269.84)
        Zone(SC,Spawn)
        
    elseif GetRace(Spawn)== 15 or GetRace(Spawn)== 16 or GetRace(Spawn)== 6 then
        WW = GetZone("willowwood")
        Zone(WW,Spawn,809.96, -21.30, -566.02, 323.13)
        
    else
        Net = GetZone("nettleville")
        Zone(Net,Spawn,670.07, -20.39, 273.85, 114.78)
    end
end
end