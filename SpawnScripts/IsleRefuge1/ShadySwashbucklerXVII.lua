--[[
    Script Name    : SpawnScripts/IsleRefuge1/ShadySwashbucklerXVII.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.14 04:12:12
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local BARBARIAN = 0
local DARK_ELF = 1
local DWARF = 2
local ERUDITE = 3
local FROGLOK = 4
local GNOME = 5
local HALF_ELF = 6
local HALFLING = 7
local HIGH_ELF = 8
local HUMAN = 9
local IKSAR = 10
local KERRA = 11
local OGRE = 12
local RATONGA = 13
local TROLL = 14
local WOOD_ELF = 15
local FAE = 16
local ARASAI = 17
local SARNAK = 18
local VAMPIRE = 19
local AERAKYN = 20

local AntonicaQuest = 5858

function spawn(NPC)
   SetInfoStructString(NPC, "action_state", "ponder")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("My apologies, friend. I did not see you there ... What is it you need?")
	Dialog.AddVoiceover("voiceover/english/scribe_duvo/qey_elddar/100_scribe_halfling_duvo_callout1_c6eaefe5.mp3", 3948051330, 1166584264)
    PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
    if GetQuestStep(Spawn,5717)==2 or HasCompletedQuest(Spawn, 5717) then 
    Dialog.AddOption("Get me out of here!\n[EMU Test Buff]","Item_Buff1")
    elseif GetQuestStep(Spawn,5758)==2 or HasCompletedQuest(Spawn, 5758) then
    Dialog.AddOption("I've seen enough here.\n[EMU Test Buff]","Item_Buff1")
    else
    Dialog.AddOption("I've seen enough here. [EMU Test Buff]","Fail")
    end       
    Dialog.AddOption("Can you sneak me off the island? \n[EMU Fast-Track]","FastTrack")	
    Dialog.AddOption("Good day to you!")	
	Dialog.Start()
end

function Fail(NPC,Spawn)
      local con = CreateConversation()
	    PlayFlavor(NPC, "voiceover/english/scribe_duvo/qey_elddar/100_scribe_halfling_duvo_multhail1_a72f47c8.mp3", "I'm sorry. I cannot help you.", "no", 1448300901, 17119076, Spawn)
        AddConversationOption(con, "Close window using X above","CloseConversation")
        StartDialogConversation(con, 1, NPC, Spawn, "Before you can EMU Test buff you must: \n\n 1) Pick an Archetype class from Garven Tralk at the beach. \n\n 2) Speak with an ambassador and select a city.\n\n 3) Secure a boat off the island with Duke Ferrin.")
end

function FastTrack(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
	Dialog.AddDialog("...")
    PlayFlavor(NPC,"","","agree",0,0,Spawn)
--	Dialog.AddVoiceover("voiceover/english/broker_algernon/qey_harbor/034_con_merchant_algernon_human_1_hail_55be2bc8.mp3", 99913618, 1474936299)
    Dialog.AddOption("Take me to Antonica.","ToAntonica")	
    Dialog.AddOption("Nevermind.")	
	Dialog.Start()
end

function ToAntonica(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
	Dialog.AddDialog("Find me once you arrive. Alright, see this barrel here? Climb in.")
    Dialog.AddOption("Umm...")	
	Dialog.Start()
	OfferQuest(NPC,Spawn,AntonicaQuest)
end

function CloseConvo(NPC,Spawn)
    CloseConversation(NPC,Spawn)
end

function respawn(NPC)
	spawn(NPC)
end


function Item_Buff1(NPC,Spawn)
    if GetClientVersion(Spawn) <= 546 then
       local con = CreateConversation()
	    AddConversationOption(con, "EMU Buff and Leave Island", "Item_Buff2")
        AddConversationOption(con, "Stay","Cancel")
        StartDialogConversation(con, 1, NPC, Spawn, "Are you sure you wish to leave the Isle of Refuge?\n\nBuff Includes:\n\n- Adventure Level to 6\n- Solo Quested Gean\n- 6 silver\n- Port to Racial Hood\n\n[ Complete Citizenship once in the city ]")
    else
	window = CreateOptionWindow(); 
	AddOptionWindowOption(window, " EMU Buff and Leave Island", "Buff Includes:\n\nLevel to 6 // Solo Quested Gear  //  6 silver // Port to Racial Hood\n\n[ Complete Citizenship once in the city ]", 0, 2297, "Item_Buff2")
	AddOptionWindowOption(window, "Refuse Buff", "Stay on the island and continue playing here.", 0, 2296, "Cancel")
	SendOptionWindow(window, Spawn, "Are you sure you wish to leave the Isle of Refuge?", "Cancel")
end
end


function Item_Buff2(NPC,Spawn)
    AddTimer(NPC,1500,"Trip",1,Spawn)
local Class = GetClass(Spawn)

if GetLevel(Spawn) <=5 then
    SetPlayerLevel(Spawn,6)
end

AddCoin(Spawn,600)

if not HasItem(Spawn,20728)then --Goblin Satchle
    SummonItem(Spawn,20728,1)
end
if not HasItem(Spawn,1130007)then --Scrimshaw Necklace
    SummonItem(Spawn,1130007,1)
end
if not HasItem(Spawn,140253)then --Constructed Wrist Spanner
    SummonItem(Spawn,140253,1)
end
if not HasItem(Spawn,137914)then --Castaway Sash
    SummonItem(Spawn,137914,1)
end
if not HasItem(Spawn,136170)then --Bone Bracelet
    SummonItem(Spawn,136170,1)
end

if Class == 1 then -- FIGHTER
    
if not HasItem(Spawn,152754)then --Boots
    SummonItem(Spawn,152754,1)
end
if not HasItem(Spawn,152756)then --Legs
    SummonItem(Spawn,152756,1)
end
if not HasItem(Spawn,152757)then --Chest
    SummonItem(Spawn,152757,1)
end
if not HasItem(Spawn,152755)then --Gloves
    SummonItem(Spawn,152755,1)
end


elseif Class == 11 then -- PRIEST
if not HasItem(Spawn,130119)then --Boots
    SummonItem(Spawn,130119,1)
end
if not HasItem(Spawn,130121)then --Legs
    SummonItem(Spawn,130121,1)
end
if not HasItem(Spawn,130122)then --Chest
    SummonItem(Spawn,130122,1)
end
if not HasItem(Spawn,130120)then --Gloves
    SummonItem(Spawn,130120,1)
end


elseif Class == 21 then --MAGE
if not HasItem(Spawn,132364)then --Boots
    SummonItem(Spawn,132364,1)
end
if not HasItem(Spawn,132366)then --Legs
    SummonItem(Spawn,132366,1)
end
if not HasItem(Spawn,132367)then --Chest
    SummonItem(Spawn,132367,1)
end
if not HasItem(Spawn,132365)then --Gloves
    SummonItem(Spawn,132365,1)
end


elseif Class == 31 then --SCOUT
if not HasItem(Spawn,40984)then --Bow
    SummonItem(Spawn,40984,1)
end
if not HasItem(Spawn,20528)then --Arrows
    SummonItem(Spawn,20528,1)
    SummonItem(Spawn,20528,0)
    SummonItem(Spawn,20528,0)
    SummonItem(Spawn,20528,0)
    SummonItem(Spawn,20528,0)
    SummonItem(Spawn,20528,0)
    SummonItem(Spawn,20528,0)
    SummonItem(Spawn,20528,0)
    SummonItem(Spawn,20528,0)
    SummonItem(Spawn,20528,0)
    SummonItem(Spawn,20528,0)
    SummonItem(Spawn,20528,0)
    SummonItem(Spawn,20528,0)
    SummonItem(Spawn,20528,0)
    SummonItem(Spawn,20528,0)
    SummonItem(Spawn,20528,0)
    SummonItem(Spawn,20528,0)
    SummonItem(Spawn,20528,0)
    SummonItem(Spawn,20528,0)
    SummonItem(Spawn,20528,0)
end

if not HasItem(Spawn,158693)then --Boots
    SummonItem(Spawn,158693,1)
end
if not HasItem(Spawn,158695)then --Legs
    SummonItem(Spawn,158695,1)
end
if not HasItem(Spawn,158696)then --Chest
    SummonItem(Spawn,158696,1)
end
if not HasItem(Spawn,158694)then --Gloves
    SummonItem(Spawn,158694,1)
end


end
end

function Trip(NPC,Spawn)
    if GetQuestStep(Spawn,5717)==2 or HasCompletedQuest(Spawn, 5717) then 
    LeaveIslandQ(NPC, Spawn)
    elseif GetQuestStep(Spawn,5758)==2 or HasCompletedQuest(Spawn, 5758) then
    LeaveIslandFP(NPC, Spawn)
end
end


function LeaveIslandQ(NPC, Spawn)
    PlaySound(Spawn,"sounds/objectsandparticlesounds/amb_marinersbell_005.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
    local Race = GetRace(Spawn)
    
    
    --  Kerra
    if Race == 11 then
  --      AddSpellBookEntry(Spawn, 8057, 1)	
        ZoneRef = GetZone("Nettleville")
        Zone(ZoneRef,Spawn)

    -- Erudite
    elseif Race == 3 or Race == 20 then
  --      AddSpellBookEntry(Spawn, 8057, 1)
        ZoneRef = GetZone("Starcrest")
        Zone(ZoneRef,Spawn)

    elseif Race == 9 then --Human
    if GetClientVersion(Spawn) <= 546 then
       local con = CreateConversation()
	    AddConversationOption(con, "Nettleville Hovel", "HumanQNettleville")
	    AddConversationOption(con, "Starcrest Commune", "HumanQStarcrest")
	    AddConversationOption(con, "Tell me about these places", "Human2")
        AddConversationOption(con, "Stay","CloseConversation")
        StartDialogConversation(con, 1, NPC, Spawn, "Humans must select their next desitnation in Qeynos.")
    else
        window = CreateOptionWindow();
	AddOptionWindowOption(window, " Nettleville Hovel", "Depart for Nettleville - Home to the reserved Kerra and diverse Humans of Qeynos. It’s a busy district area with plenty of opportunties for adventure seekers and back-alley trade.", 2, 26, "HumanQNettleville")
	AddOptionWindowOption(window, " Starcrest Commune", "Depart for Starcrest -  Starcrest is a grand political experiment implemented by the intellectual Erudites to serve as their home in Qeynos. Residents often frown on noise and distraction that might hinder their research, so be mindful of your activities. ", 2, 27, "HumanQStarcrest")
	AddOptionWindowOption(window, " Stay", "Stay on the Island.  Continue your adventures here and return to this bell when you are ready to leave.", 0, 2296, "Cancel")
	SendOptionWindow(window, Spawn, "Humans Must Select Their Next Desitnation", "Cancel")
    end	
	
    -- Barbarian / Dwarf
    elseif Race == 0 or Race == 2 then
  --      AddSpellBookEntry(Spawn, 8057, 1)
        ZoneRef = GetZone("Graystone")
        Zone(ZoneRef,Spawn)

    -- Froglok / High Elf 
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
    else
	    SendMessage(Spawn,"There doesn't seem to be a boat available for you to Qeynos right now.  [Report this!]")   
    end
end

function Human2(NPC,Spawn)
        local con = CreateConversation()
	    AddConversationOption(con, "Nettleville Hovel", "HumanQNettleville")
	    AddConversationOption(con, "Starcrest Commune", "HumanQStarcrest")
        AddConversationOption(con, "Stay","CloseConversation")
        StartDialogConversation(con, 1, NPC, Spawn, "Nettlevilel Hovel:\n\nHome to the reserved Kerra and diverse Humans of Qeynos. It’s a busy district area with plenty of opportunties for adventure seekers and back-alley trade.\n\nStarcrest Commune:\n\nStarcrest is a grand political experiment implemented by the intellectual Erudites to serve as their home in Qeynos. Residents often frown on noise and distraction that might hinder their research, so be mindful of your activities.")
end

function LeaveIslandFP(NPC, Spawn)
        PlaySound(Spawn,"sounds/objectsandparticlesounds/amb_marinersbell_005.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
       Race = GetRace(Spawn)

    -- Erudite / Kerra
    if Race == 3 or Race == 11 then
 --       AddSpellBookEntry(Spawn, 8057, 1)	
        ZoneRef = GetZone("Stonestair")
        Zone(ZoneRef,Spawn)

      -- Ratonga / Gnome
    elseif Race == 5 or Race == 13 then
 --       AddSpellBookEntry(Spawn, 8057, 1)	
        ZoneRef = GetZone("TempleSt")
        Zone(ZoneRef,Spawn)


      -- Human / Half Elf
    elseif Race == 9 or Race == 6 then
--        AddSpellBookEntry(Spawn, 8057, 1)	
        ZoneRef = GetZone("BeggarsCourt")
        Zone(ZoneRef,Spawn)


   -- Orge / Troll
    elseif Race == 12 or Race == 14 then
 --       AddSpellBookEntry(Spawn, 8057, 1)	
        ZoneRef = GetZone("BigBend")
        Zone(ZoneRef,Spawn)
    
   -- Dark Elf 
    elseif Race == 1  then
--        AddSpellBookEntry(Spawn, 8057, 1)	
        ZoneRef = GetZone("Longshadow")
        Zone(ZoneRef,Spawn)

    -- Barbarian / Iksar
    elseif Race == 0 or Race == 10 then
--        AddSpellBookEntry(Spawn, 8057, 1)
        ZoneRef = GetZone("ScaleYard")
        Zone(ZoneRef,Spawn)

    else 
--        AddSpellBookEntry(Spawn, 8057, 1)
        ZoneRef = GetZone("BeggarsCourt")
        Zone(ZoneRef,Spawn)

    end
end
