--[[
    Script Name    : ItemScripts/ForgeryQeynosCitizenshipPapers.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.10 11:06:34
    Script Purpose : 
                   : 
--]]
local BB = 5718  --Welcome to Qeynos (Babbuelshrie)
local BB_Q = 5760 --Baubbleshire Citizenship Task
local CV = 5719     --Castleview
local CV_Q = 5765
local NV = 5721     --Nettleville
local NV_Q = 5763
local GS = 5720     --Graystone
local GS_Q = 5764
local SC = 5722     --Starcrest
local SC_Q = 5762
local WW = 5723     --Willow Wood
local WW_Q = 5761



function examined(Item, Player)
local Race = GetRace(Player)
conversation = CreateConversation()
if not HasQuest(Player,BB)
 and not HasQuest(Player,BB_Q)
     
 and not HasQuest(Player,CV) 
 and not HasQuest(Player,CV_Q) 
     
 and not HasQuest(Player,GS) 
 and not HasQuest(Player,GS_Q) 
 
  and not HasQuest(Player,NV) 
 and not HasQuest(Player,NV_Q) 
     
 and not HasQuest(Player,SC) 
 and not HasQuest(Player,SC_Q) 
  
  and not HasQuest(Player,WW) 
 and not HasQuest(Player,WW_Q) then
     
    if CanReceiveQuest(Player,BB) or     
    CanReceiveQuest(Player,CV) or 
    CanReceiveQuest(Player,GS) or 
    CanReceiveQuest(Player,NV) or 
    CanReceiveQuest(Player,SC) or 
    CanReceiveQuest(Player,WW) then
    AddConversationOption(conversation, "[Glance over the forms]","Intro")
    end
    AddConversationOption(conversation, "[Put the papers away]","CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "This stack of papers looks like Qeynos Citzenship forms. They could be useful for someone looking to quickly become a citizen...")
elseif
 GetQuestStep(Player,BB_Q) <12 or   
 GetQuestStep(Player,CV_Q) <12 or   
 GetQuestStep(Player,GS_Q) <12 or   
 GetQuestStep(Player,NV_Q) <12 or   
 GetQuestStep(Player,SC_Q) <12 or   
 GetQuestStep(Player,WW_Q) <12 then   
 Welcome2(Item,Player)
 elseif
 GetQuestStep(Player,BB_Q) ==12 and CanReceiveQuest(Player,BB) or   
 GetQuestStep(Player,CV_Q) ==12 and CanReceiveQuest(Player,CV) or   
 GetQuestStep(Player,GS_Q) ==12 and CanReceiveQuest(Player,GS) or   
 GetQuestStep(Player,NV_Q) ==12 and CanReceiveQuest(Player,NV) or   
 GetQuestStep(Player,SC_Q) ==12 and CanReceiveQuest(Player,SC) or   
 GetQuestStep(Player,WW_Q) ==12 and CanReceiveQuest(Player,WW) then
 Task1(Item,Player)    
 elseif
 GetQuestStep(Player,BB_Q) ==12 and GetQuestStep(Player,BB)==1 or   
 GetQuestStep(Player,CV_Q) ==12 and GetQuestStep(Player,CV)==1 or   
 GetQuestStep(Player,GS_Q) ==12 and GetQuestStep(Player,GS)==1 or   
 GetQuestStep(Player,NV_Q) ==12 and GetQuestStep(Player,NV)==1 or   
 GetQuestStep(Player,SC_Q) ==12 and GetQuestStep(Player,SC)==1 or   
 GetQuestStep(Player,WW_Q) ==12 and GetQuestStep(Player,WW)==1 then 
 Task1(Item,Player)
 else
    Intro(Item,Player)
end
end

function Intro(Item,Player)
    local Race = GetRace(Player)
    conversation = CreateConversation()
    if Race == 11 then --Kerra
    if not HasQuest(Player,NV_Q) and not HasCompletedQuest(Player,NV_Q) then
    AddConversationOption(conversation, "[Make up a Steward name]","Welcome1")
     OfferQuest(nil,Player,NV_Q)
    end 
    
    -- Erudite
    elseif Race == 3 or Race == 20 then
    if not HasQuest(Player,SC_Q)  and not HasCompletedQuest(Player,SC_Q) then
     AddConversationOption(conversation, "[Make up a Steward name]","Welcome1")
   OfferQuest(nil,Player,SC_Q)
    end
    
    elseif Race == 9 then --Human
       local con = CreateConversation()
    if not HasQuest(Player,NV_Q) and not HasCompletedQuest(Player,NV_Q)  then
    AddConversationOption(conversation, "[Make up a Steward name]","Welcome1")
    OfferQuest(nil,Player,NV_Q)
    end
    
    -- Barbarian / Dwarf
    elseif Race == 0 or Race == 2 then
    if not HasQuest(Player,GS_Q) and not HasCompletedQuest(Player,GS_Q)  then
    AddConversationOption(conversation, "[Make up a Steward name]","Welcome1")
    OfferQuest(nil,Player,GS_Q)
    end
    
    -- Froglok / High Elf 
    elseif Race == 4 or Race == 8 then
    if not HasQuest(Player,CV_Q)  and not HasCompletedQuest(Player,CV_Q) then
    AddConversationOption(conversation, "[Make up a Steward name]","Welcome1")
    OfferQuest(nil,Player,CV_Q)
    end
    
    -- Half Elf / Wood Elf
    elseif Race == 6 or Race == 15 or Race == 16 then
    if not HasQuest(Player,WW_Q)  and not HasCompletedQuest(Player,WW_Q) then
     AddConversationOption(conversation, "[Make up a Steward name]","Welcome1")
    OfferQuest(nil,Player,WW_Q)
    end
    
    -- Gnome / Halfling
    elseif Race == 5 or Race == 7 then
    if not HasQuest(Player,BB_Q)  and not HasCompletedQuest(Player,BB_Q) then
    AddConversationOption(conversation, "[Make up a Steward name]","Welcome1")
    OfferQuest(nil,Player,BB_Q)
    end
    
    else
    if not HasQuest(Player,NV_Q)  and not HasCompletedQuest(Player,NV_Q) then
    AddConversationOption(conversation, "[Make up a Steward name]","Welcome1")
    OfferQuest(nil,Player,NV_Q)
    end
    end
    AddConversationOption(conversation, "[Put the pages away]","CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "It states a Steward is suppose to sign the document...\n\n[ ACCEPT THE QUEST ]")
end

function Welcome1(Item,Player)  --ALIGNMENT/FACTION CHANGE + CHECK FOR QUEST1
local Race = GetRace(Player)
if not HasQuest(Player,BB)
 and not HasQuest(Player,BB_Q)
     
 and not HasQuest(Player,CV) 
 and not HasQuest(Player,CV_Q) 
     
 and not HasQuest(Player,GS) 
 and not HasQuest(Player,GS_Q) 
 
  and not HasQuest(Player,NV) 
 and not HasQuest(Player,NV_Q) 
     
 and not HasQuest(Player,SC) 
 and not HasQuest(Player,SC_Q) 
  
  and not HasQuest(Player,WW) 
 and not HasQuest(Player,WW_Q) then    
Intro(Item,Player)
else
    conversation = CreateConversation()
    AddConversationOption(conversation, "[Forge an address and check the list]","Welcome2")
    AddConversationOption(conversation, "[Put the pages away]","CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "The form states you need signitures from a landlord and to complete their checklist...")
    Faction(Item,Player)
end
end

function Faction(Item,Player)
    Qeynos = GetFactionAmount(Player, 11)
    Qeynos_Add = (10000-Qeynos)
    Freeport = GetFactionAmount(Player, 12)
    Freeport_Add = (-20000-Freeport)
    Neriak = GetFactionAmount(Player, 13)
    Kelethin = GetFactionAmount(Player, 14)
    Halas = GetFactionAmount(Player, 16)
    Gorowyn = GetFactionAmount(Player, 17)
    alignment = GetAlignment(Player)
 if Qeynos <10000 and Qeynos >=0 then ChangeFaction(Player, 11, Qeynos_Add)
    elseif Qeynos <0 then ChangeFaction(Player, 11, (Qeynos*-1))
    Faction(Item,Player)    
end
if Freeport <-20000 then ChangeFaction(Player, 12, Freeport_Add)
    elseif Freeport >-20000 then ChangeFaction(Player, 12, (Freeport*-1))
end
if Neriak >0 then ChangeFaction(Player, 13, -Neriak)
    elseif Neriak <0 then ChangeFaction(Player, 13, (Neriak*-1))
end
if Kelethin >0 then ChangeFaction(Player, 14, -Kelethin)
    elseif Kelethin <0 then  ChangeFaction(Player, 14, (Kelethin*-1))
end
if Halas >0 then ChangeFaction(Player, 16, -Halas)
    elseif Halas <0 then ChangeFaction(Player, 16, (Halas*-1))
end
if Gorowyn >0 then ChangeFaction(Player, 17, -Gorowyn)
    elseif Gorowyn <0 then ChangeFaction(Player, 17, (Gorowyn*-1))
end
if GetRace(Player) == 0 or GetRace(Player) == 3 or GetRace(Player) == 5 or GetRace(Player) == 6 or GetRace(Player) == 9 or GetRace(Player) == 11 or GetRace(Player) == 20 then
SetAlignment(Player, 2)
end   
end


function Welcome2(Item,Player)
 local Race = GetRace(Player)
   conversation = CreateConversation()
    AddConversationOption(conversation, "[Read the second form]","Task1")
    if Race == 11 then --Kerra
    if HasQuest(Player,NV_Q) then
    SetStepComplete(Player,NV_Q,1)        
    SetStepComplete(Player,NV_Q,2)        
    SetStepComplete(Player,NV_Q,3)        
    SetStepComplete(Player,NV_Q,4)        
    SetStepComplete(Player,NV_Q,5)        
    SetStepComplete(Player,NV_Q,6)        
    SetStepComplete(Player,NV_Q,7)        
    SetStepComplete(Player,NV_Q,8)        
    SetStepComplete(Player,NV_Q,9)        
    SetStepComplete(Player,NV_Q,10)        
    SetStepComplete(Player,NV_Q,11)        
    SetStepComplete(Player,NV_Q,12)
    end
    -- Erudite
    elseif Race == 3 or Race == 20 then
    if HasQuest(Player,SC_Q) then
    SetStepComplete(Player,SC_Q,1)        
    SetStepComplete(Player,SC_Q,2)        
    SetStepComplete(Player,SC_Q,3)        
    SetStepComplete(Player,SC_Q,4)        
    SetStepComplete(Player,SC_Q,5)        
    SetStepComplete(Player,SC_Q,6)        
    SetStepComplete(Player,SC_Q,7)        
    SetStepComplete(Player,SC_Q,8)        
    SetStepComplete(Player,SC_Q,9)        
    SetStepComplete(Player,SC_Q,10)        
    SetStepComplete(Player,SC_Q,11)        
    SetStepComplete(Player,SC_Q,12)
    end    
    elseif Race == 9 then --Human
       local con = CreateConversation()
    if HasQuest(Player,NV_Q) then
    SetStepComplete(Player,NV_Q,1)        
    SetStepComplete(Player,NV_Q,2)        
    SetStepComplete(Player,NV_Q,3)        
    SetStepComplete(Player,NV_Q,4)        
    SetStepComplete(Player,NV_Q,5)        
    SetStepComplete(Player,NV_Q,6)        
    SetStepComplete(Player,NV_Q,7)        
    SetStepComplete(Player,NV_Q,8)        
    SetStepComplete(Player,NV_Q,9)        
    SetStepComplete(Player,NV_Q,10)        
    SetStepComplete(Player,NV_Q,11)        
    SetStepComplete(Player,NV_Q,12)
    elseif HasQuest(Player,SC_Q) then
    SetStepComplete(Player,SC_Q,1)        
    SetStepComplete(Player,SC_Q,2)        
    SetStepComplete(Player,SC_Q,3)        
    SetStepComplete(Player,SC_Q,4)        
    SetStepComplete(Player,SC_Q,5)        
    SetStepComplete(Player,SC_Q,6)        
    SetStepComplete(Player,SC_Q,7)        
    SetStepComplete(Player,SC_Q,8)        
    SetStepComplete(Player,SC_Q,9)        
    SetStepComplete(Player,SC_Q,10)        
    SetStepComplete(Player,SC_Q,11)        
    SetStepComplete(Player,SC_Q,12)
    end    
    -- Barbarian / Dwarf
    elseif Race == 0 or Race == 2 then
    if HasQuest(Player,GS_Q) then
    SetStepComplete(Player,GS_Q,1)        
    SetStepComplete(Player,GS_Q,2)        
    SetStepComplete(Player,GS_Q,3)        
    SetStepComplete(Player,GS_Q,4)        
    SetStepComplete(Player,GS_Q,5)        
    SetStepComplete(Player,GS_Q,6)        
    SetStepComplete(Player,GS_Q,7)        
    SetStepComplete(Player,GS_Q,8)        
    SetStepComplete(Player,GS_Q,9)        
    SetStepComplete(Player,GS_Q,10)        
    SetStepComplete(Player,GS_Q,11)        
    SetStepComplete(Player,GS_Q,12)
    end        
    -- Froglok / High Elf 
    elseif Race == 4 or Race == 8 then
    if HasQuest(Player,CV_Q) then
    SetStepComplete(Player,CV_Q,1)        
    SetStepComplete(Player,CV_Q,2)        
    SetStepComplete(Player,CV_Q,3)        
    SetStepComplete(Player,CV_Q,4)        
    SetStepComplete(Player,CV_Q,5)        
    SetStepComplete(Player,CV_Q,6)        
    SetStepComplete(Player,CV_Q,7)        
    SetStepComplete(Player,CV_Q,8)        
    SetStepComplete(Player,CV_Q,9)        
    SetStepComplete(Player,CV_Q,10)        
    SetStepComplete(Player,CV_Q,11)        
    SetStepComplete(Player,CV_Q,12)
    end               
    -- Half Elf / Wood Elf
    elseif Race == 6 or Race == 15 then
    if HasQuest(Player,WW_Q) then
    SetStepComplete(Player,WW_Q,1)        
    SetStepComplete(Player,WW_Q,2)        
    SetStepComplete(Player,WW_Q,3)        
    SetStepComplete(Player,WW_Q,4)        
    SetStepComplete(Player,WW_Q,5)        
    SetStepComplete(Player,WW_Q,6)        
    SetStepComplete(Player,WW_Q,7)        
    SetStepComplete(Player,WW_Q,8)        
    SetStepComplete(Player,WW_Q,9)        
    SetStepComplete(Player,WW_Q,10)        
    SetStepComplete(Player,WW_Q,11)        
    SetStepComplete(Player,WW_Q,12)
    end                      
    -- Gnome / Halfling
    elseif Race == 5 or Race == 7 then
    if HasQuest(Player,BB_Q) then
    SetStepComplete(Player,BB_Q,1)        
    SetStepComplete(Player,BB_Q,2)        
    SetStepComplete(Player,BB_Q,3)        
    SetStepComplete(Player,BB_Q,4)        
    SetStepComplete(Player,BB_Q,5)        
    SetStepComplete(Player,BB_Q,6)        
    SetStepComplete(Player,BB_Q,7)        
    SetStepComplete(Player,BB_Q,8)        
    SetStepComplete(Player,BB_Q,9)        
    SetStepComplete(Player,BB_Q,10)        
    SetStepComplete(Player,BB_Q,11)        
    SetStepComplete(Player,BB_Q,12)
    end   
    else
    if HasQuest(Player,NV_Q) then
    SetStepComplete(Player,NV_Q,1)        
    SetStepComplete(Player,NV_Q,2)        
    SetStepComplete(Player,NV_Q,3)        
    SetStepComplete(Player,NV_Q,4)        
    SetStepComplete(Player,NV_Q,5)        
    SetStepComplete(Player,NV_Q,6)        
    SetStepComplete(Player,NV_Q,7)        
    SetStepComplete(Player,NV_Q,8)        
    SetStepComplete(Player,NV_Q,9)        
    SetStepComplete(Player,NV_Q,10)        
    SetStepComplete(Player,NV_Q,11)        
    SetStepComplete(Player,NV_Q,12)
    end
    end
    AddConversationOption(conversation, "[Put the pages away]","CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "There is another form meant to accompany the first. This second mentions a citizenship task. It states something about tokens and needing to prove yourself....\n\nWho has time for that?")
end

function Task1(Item,Player)
 local Race = GetRace(Player)
   conversation = CreateConversation()
    AddConversationOption(conversation, "[Check all the boxes and sign]","Task2")
    if Race == 11 then --Kerra
    if CanReceiveQuest(Player,NV) then
    OfferQuest(nil,Player,NV)
    end 
    -- Erudite
    elseif Race == 3 or Race == 20 then
    if CanReceiveQuest(Player,SC) then
    OfferQuest(nil,Player,SC)
    end
    elseif Race == 9 then --Human
       local con = CreateConversation()
    if CanReceiveQuest(Player,NV) then
    OfferQuest(nil,Player,NV)
    end     
    -- Barbarian / Dwarf
    elseif Race == 0 or Race == 2 then
    if CanReceiveQuest(Player,GS) then
    OfferQuest(nil,Player,GS)
    end
    -- Froglok / High Elf 
    elseif Race == 4 or Race == 8 then
    if CanReceiveQuest(Player,CV) then
    OfferQuest(nil,Player,CV)
    end       
    -- Half Elf / Wood Elf
    elseif Race == 6 or Race == 15 then
    if CanReceiveQuest(Player,WW) then
     OfferQuest(nil,Player,WW)
    end      
    -- Gnome / Halfling
    elseif Race == 5 or Race == 7 then
    if CanReceiveQuest(Player,BB) then
    OfferQuest(nil,Player,BB)
    end
    else
    if CanReceiveQuest(Player,NV) then
    OfferQuest(nil,Player,NV)
    end 
    end
    AddConversationOption(conversation, "[Put the pages away]","CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "The second form lists...yadda yadda yadda.\n\nA few marks here and there should finish up everything.\n\n[ ACCEPT THE QUEST ]")
end

function Task2(Item,Player)
local Race = GetRace(Player)
    if Race == 11 then --Kerra
    if HasQuest(Player,NV_Q) then
    SetStepComplete(Player,NV_Q,13)        
    end
    if HasQuest(Player,NV) then
    SetStepComplete(Player,NV,1)        
    SetStepComplete(Player,NV,2)        
    SetStepComplete(Player,NV,3)        
    SetStepComplete(Player,NV,4)        
    SetStepComplete(Player,NV,5)        
    SetStepComplete(Player,NV,6)        
    SetStepComplete(Player,NV,7)        
    end
    -- Erudite
    elseif Race == 3 or Race == 20 then
    if HasQuest(Player,SC_Q) then
    SetStepComplete(Player,SC_Q,13)        
    end
    if HasQuest(Player,SC) then
    SetStepComplete(Player,SC,1)        
    SetStepComplete(Player,SC,2)        
    SetStepComplete(Player,SC,3)        
    SetStepComplete(Player,SC,4)        
    SetStepComplete(Player,SC,5)        
    SetStepComplete(Player,SC,6)        
    SetStepComplete(Player,SC,7)        
    end
    elseif Race == 9 then --Human
       local con = CreateConversation()
    if HasQuest(Player,NV_Q) then
    SetStepComplete(Player,NV_Q,13)        
    end
    if HasQuest(Player,NV) then
    SetStepComplete(Player,NV,1)        
    SetStepComplete(Player,NV,2)        
    SetStepComplete(Player,NV,3)        
    SetStepComplete(Player,NV,4)        
    SetStepComplete(Player,NV,5)        
    SetStepComplete(Player,NV,6)        
    SetStepComplete(Player,NV,7)        
    end
    if HasQuest(Player,SC_Q) then
    SetStepComplete(Player,SC_Q,13)        
    end
    if HasQuest(Player,SC) then
    SetStepComplete(Player,SC,1)        
    SetStepComplete(Player,SC,2)        
    SetStepComplete(Player,SC,3)        
    SetStepComplete(Player,SC,4)        
    SetStepComplete(Player,SC,5)        
    SetStepComplete(Player,SC,6)        
    SetStepComplete(Player,SC,7)        
    end
    -- Barbarian / Dwarf
    elseif Race == 0 or Race == 2 then
    if HasQuest(Player,GS_Q) then
    SetStepComplete(Player,GS_Q,13)        
    end
    if HasQuest(Player,GS) then
    SetStepComplete(Player,GS,1)        
    SetStepComplete(Player,GS,2)        
    SetStepComplete(Player,GS,3)        
    SetStepComplete(Player,GS,4)        
    SetStepComplete(Player,GS,5)        
    SetStepComplete(Player,GS,6)        
    SetStepComplete(Player,GS,7)        
    end     
    -- Froglok / High Elf 
    elseif Race == 4 or Race == 8 then
    if HasQuest(Player,CV_Q) then
    SetStepComplete(Player,CV_Q,13)        
    end
    if HasQuest(Player,CV) then
    SetStepComplete(Player,CV,1)        
    SetStepComplete(Player,CV,2)        
    SetStepComplete(Player,CV,3)        
    SetStepComplete(Player,CV,4)        
    SetStepComplete(Player,CV,5)        
    SetStepComplete(Player,CV,6)        
    SetStepComplete(Player,CV,7)        
    end             
    -- Half Elf / Wood Elf
    elseif Race == 6 or Race == 15 then
    if HasQuest(Player,WW_Q) then
    SetStepComplete(Player,WW_Q,13)        
    end
    if HasQuest(Player,WW) then
    SetStepComplete(Player,WW,1)        
    SetStepComplete(Player,WW,2)        
    SetStepComplete(Player,WW,3)        
    SetStepComplete(Player,WW,4)        
    SetStepComplete(Player,WW,5)        
    SetStepComplete(Player,WW,6)        
    SetStepComplete(Player,WW,7)        
    end                  
    -- Gnome / Halfling
    elseif Race == 5 or Race == 7 then
    if HasQuest(Player,BB_Q) then
    SetStepComplete(Player,BB_Q,13)        
    end
    if HasQuest(Player,BB) then
    SetStepComplete(Player,BB,1)        
    SetStepComplete(Player,BB,2)        
    SetStepComplete(Player,BB,3)        
    SetStepComplete(Player,BB,4)        
    SetStepComplete(Player,BB,5)        
    SetStepComplete(Player,BB,6)        
    SetStepComplete(Player,BB,7)        
    end    
    else
    if HasQuest(Player,NV_Q) then
    SetStepComplete(Player,NV_Q,13)        
    end
    if HasQuest(Player,NV) then
    SetStepComplete(Player,NV,1)        
    SetStepComplete(Player,NV,2)        
    SetStepComplete(Player,NV,3)        
    SetStepComplete(Player,NV,4)        
    SetStepComplete(Player,NV,5)        
    SetStepComplete(Player,NV,6)        
    SetStepComplete(Player,NV,7)        
    end
end
   conversation = CreateConversation()
   
        if GetClass(Player)==1 then
	    AddConversationOption(conversation, ""..GetName(Player).." the Fighter", "Task3")
        elseif GetClass(Player)==11 then
	    AddConversationOption(conversation, ""..GetName(Player).." the Priest", "Task3")
        elseif GetClass(Player)==21 then
	    AddConversationOption(conversation, ""..GetName(Player).." the Mage", "Task3")
        elseif GetClass(Player)==31 then
	    AddConversationOption(conversation, ""..GetName(Player).." the Scout", "Task3")
        else
	    AddConversationOption(conversation, ""..GetName(Player).."", "Task3")
        end   
   
    AddConversationOption(conversation, "[Put the pages away]","CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "All that is left to do is sign your name...\n\nAre you ready to be a citizen of Qeynos?")
end

function Task3(Item,Player)
local Race = GetRace(Player)
    if Race == 11 then --Kerra
    if HasQuest(Player,NV_Q) then
    SetStepComplete(Player,NV_Q,14)
    end
    if HasQuest(Player,NV) then
    SetStepComplete(Player,NV,8)        
    end
    -- Erudite
    elseif Race == 3 or Race == 20 then
    if HasQuest(Player,SC_Q) then
    SetStepComplete(Player,SC_Q,14)
    end
    if HasQuest(Player,SC) then
    SetStepComplete(Player,SC,8)        
    end
    elseif Race == 9 then --Human
       local con = CreateConversation()
    if HasQuest(Player,NV_Q) then
    SetStepComplete(Player,NV_Q,14)
    end
    if HasQuest(Player,NV) then
    SetStepComplete(Player,NV,8)        
    end
    if HasQuest(Player,SC_Q) then
    SetStepComplete(Player,SC_Q,14)
    end
    if HasQuest(Player,SC) then
    SetStepComplete(Player,SC,8)        
    end
    -- Barbarian / Dwarf
    elseif Race == 0 or Race == 2 then
    if HasQuest(Player,GS_Q) then
    SetStepComplete(Player,GS_Q,14)
    end
    if HasQuest(Player,GS) then
    SetStepComplete(Player,GS,8)        
    end     
    -- Froglok / High Elf 
    elseif Race == 4 or Race == 8 then
    if HasQuest(Player,CV_Q) then
    SetStepComplete(Player,CV_Q,14)
    end
    if HasQuest(Player,CV) then
    SetStepComplete(Player,CV,8)        
    end             
    -- Half Elf / Wood Elf
    elseif Race == 6 or Race == 15 then
    if HasQuest(Player,WW_Q) then
    SetStepComplete(Player,WW_Q,14)
    end
    if HasQuest(Player,WW) then
    SetStepComplete(Player,WW,8)        
    end                  
    -- Gnome / Halfling
    elseif Race == 5 or Race == 7 then
    if HasQuest(Player,BB_Q) then
    SetStepComplete(Player,BB_Q,14)
    end
    if HasQuest(Player,BB) then
    SetStepComplete(Player,BB,8)        
    end    
    else
    if HasQuest(Player,NV_Q) then
    SetStepComplete(Player,NV_Q,14)
    end
    if HasQuest(Player,NV) then
    SetStepComplete(Player,NV,8)        
    end
end
    AddSpellBookEntry(Player, 8057, 1) --CALL TO QEYNOS
    SendMessage(Player, "You are now a Citizen of Qeynos!","yellow")
    SendPopUpMessage(Player, "You are now a Citizen of Qeynos!",250,250,250)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Spawn), GetY(Spawn), GetZ(Spawn), Spawn)
    ApplySpellVisual(Player, 324)
    AddTimer(Player,1000,"TaskDone",1)
    conversation = CreateConversation()
    AddConversationOption(conversation, "[Stuff the completed forms away]","TaskDone")
    StartDialogConversation(conversation, 2, Item, Player, "Well done, you've faked becoming a citizen of Qeynos!")
end

function TaskDone(Item,Player)
CloseItemConversation(Item,Player)
if HasItem(Player,1001095) then
    RemoveItem(Player,1001095,1)
    end
end

