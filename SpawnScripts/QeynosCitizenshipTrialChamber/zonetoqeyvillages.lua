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

function casted_on(NPC, Player,SpellName)
 if SpellName == 'Return Home' then  
    local con = CreateConversation()
    AddConversationOption(con, "Yes", "Leave")
    AddConversationOption(con, "No","CloseItemConversation")
    StartDialogConversation(con, 1, NPC, Player, "Do you wish to leave the trial chamber?")
end
end

function Leave(NPC,Player)
    CloseConversation(NPC,Player)
    if GetRace(Player)== 7 or GetRace(Player)== 5 then
    BBShire = GetZone("Baubbleshire")
       Zone(BBShire,Player,819.46, -20.60, -525.61, 200.47)
       
    elseif GetRace(Player)== 0 or GetRace(Player)== 2 then
        Gray = GetZone("graystone")
        Zone(Gray,Player,865.03, -25.45, -97.91, 357.68)
        
    elseif GetRace(Player)== 4 or GetRace(Player)== 8 then
        CV = GetZone("castleview")
        Zone(CV,Player,729.01, -21.10, -124.36, 290.81)
        
    elseif GetRace(Player)== 9 or GetRace(Player)== 11 then
        Net = GetZone("nettleville")
        Zone(Net,Player,670.07, -20.39, 273.85, 114.78)
        
    elseif GetRace(Player)== 3 or GetRace(Player)== 8 then
        SC = GetZone("starcrest")
        Zone(SC,Player,704.07, -20.38, 264.40, 269.84)
        
    elseif GetRace(Player)== 15 or GetRace(Player)== 16 or GetRace(Player)== 6 then
        WW = GetZone("willowwood")
        Zone(WW,Player,809.96, -21.30, -566.02, 323.13)
        
    else
        Net = GetZone("nettleville")
        Zone(Net,Player,670.07, -20.39, 273.85, 114.78)
    end
end
