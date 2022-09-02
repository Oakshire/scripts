--[[
    Script Name    : SpawnScripts/QeynosCitizenshipTrialChamber/zonetoqeycity.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.31 11:08:54
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetRequiredQuest(NPC, 5718, 8, 0, 1)
SetRequiredQuest(NPC, 5719, 8, 0, 1)
SetRequiredQuest(NPC, 5720, 8, 0, 1)
SetRequiredQuest(NPC, 5721, 8, 0, 1)
SetRequiredQuest(NPC, 5722, 8, 0, 1)
SetRequiredQuest(NPC, 5723, 8, 0, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn,SpellName)

 if SpellName == 'Enter Qeynos' then  
    if GetRace(Spawn)== 7 or GetRace(Spawn)== 5 then -- Gnomes/Halflings
      EG_BB = GetZone("elddargrove")
       Zone(EG_BB,Spawn,813.68,-20.95,-531.66,81.23)
       
    elseif GetRace(Spawn)== 0 or GetRace(Spawn)== 2 then -- Dwarves/Barbarians
        QH_Gray = GetZone("qeynosharbor")
       Zone(QH_Gray,Spawn,861.05, -25.42, -84.63, 185.23)
       
    elseif GetRace(Spawn)== 4 or GetRace(Spawn)== 8 then -- Highelves, Froglocks
        QH_CV = GetZone("qeynosharbor")
       Zone(QH_CV,Spawn,718.28, -20.87, -114.23, 154.22)
       
    elseif GetRace(Spawn)== 9 or GetRace(Spawn)== 11 then -- Humans, Kerra
        SQ_Net = GetZone("southqeynos")
       Zone(SQ_Net,Spawn,680.79, -20.56, 270.90, 297.71)
        
    elseif GetRace(Spawn)== 3  then -- Erudites
        SQ_SC = GetZone("southqeynos")
       Zone(SQ_SC,Spawn,693.67, -20.47, 267.62, 96.96)
        
    elseif GetRace(Spawn)== 15 or GetRace(Spawn)== 16 or GetRace(Spawn)== 6 then -- Woodelves, Halfelves, Fae
        EG_WW = GetZone("elddargrove")
       Zone(EG_WW,Spawn,808.49, -21.59, -560.27, 162.00)
       
    else
        SQ_Net = GetZone("southqeynos")
       Zone(SQ_Net,Spawn,680.79, -20.56, 270.90, 297.71)
    end
end
end