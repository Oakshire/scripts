--[[
    Script Name    : SpawnScripts/QeynosCitizenshipTrialChamber/zonetoqeycity.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.31 11:08:54
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
    StartDialogConversation(con, 1, NPC, Player, "Do you wish to enter the city of Qeynos?")
end
end
end
function Leave(NPC,Player)
    CloseConversation(NPC,Player)
    if GetRace(Player)== 7 or GetRace(Player)== 5 then -- Gnomes/Halflings
      EG_BB = GetZone("elddargrove")
       Zone(EG_BB,Player,813.68,-20.95,-531.66,81.23)
       
    elseif GetRace(Player)== 0 or GetRace(Player)== 2 then -- Dwarves/Barbarians
        QH_Gray = GetZone("qeynosharbor")
       Zone(QH_Gray,Player,861.05, -25.42, -84.63, 185.23)
       
    elseif GetRace(Player)== 4 or GetRace(Player)== 8 then -- Highelves, Froglocks
        QH_CV = GetZone("qeynosharbor")
       Zone(QH_CV,Player,718.28, -20.87, -114.23, 154.22)
       
    elseif GetRace(Player)== 9 or GetRace(Player)== 11 then -- Humans, Kerra
        SQ_Net = GetZone("southqeynos")
       Zone(SQ_Net,Player,680.79, -20.56, 270.90, 297.71)
        
    elseif GetRace(Player)== 3  then -- Erudites
        SQ_SC = GetZone("southqeynos")
       Zone(SQ_SC,Player,693.67, -20.47, 267.62, 96.96)
        
    elseif GetRace(Player)== 15 or GetRace(Player)== 16 or GetRace(Player)== 6 then -- Woodelves, Halfelves, Fae
        EG_WW = GetZone("elddargrove")
       Zone(EG_WW,Player,808.49, -21.59, -560.27, 162.00)
       
    else
        SQ_Net = GetZone("southqeynos")
       Zone(SQ_Net,Spawn,680.79, -20.56, 270.90, 297.71)
    end
end
