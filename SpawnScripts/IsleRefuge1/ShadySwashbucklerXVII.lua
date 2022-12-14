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


function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("My apologies, friend. I did not see you there ... What is it you need?")
	Dialog.AddVoiceover("voiceover/english/scribe_duvo/qey_elddar/100_scribe_halfling_duvo_callout1_c6eaefe5.mp3", 3948051330, 1166584264)
    PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
    if GetQuestStep(Spawn,5717)==2 or HasCompletedQuest(Spawn, 5717) then 
    Dialog.AddOption("Get me out of here! [EMU Test Buff]","QBuff")
    elseif GetQuestStep(Spawn,5758)==2 or HasCompletedQuest(Spawn, 5758) then
    Dialog.AddOption("Get me out of here! [EMU Test Buff]","FPBuff")
    else
    Dialog.AddOption("Get me out of here! [EMU Test Buff]","Fail")
    end       
    Dialog.AddOption("Good day to you!")	
	Dialog.Start()
end

function Fail(NPC,Spawn)
      local con = CreateConversation()
	    PlayFlavor(NPC, "voiceover/english/scribe_duvo/qey_elddar/100_scribe_halfling_duvo_multhail1_a72f47c8.mp3", "I'm sorry. I cannot help you.", "no", 1448300901, 17119076, Spawn)

        AddConversationOption(con, "Close","CloseConversation")
        StartDialogConversation(con, 1, NPC, Spawn, "Before you can EMU Test buff you must: \n\n 1. Pick an Archetype class from Garven Tralk at the beach. \n\n 2) Speak with an ambassador and select a city.\n\n 3) Secure a boat off the island with Duke Ferrin.")
end

function Close(NPC,Spawn)
    CloseConversation(NPC,Spawn)
end

function respawn(NPC)
	spawn(NPC)
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
	window = CreateOptionWindow();
	AddOptionWindowOption(window, " Nettleville Hovel", "Depart for Nettleville - Home to the reserved Kerra and diverse Humans of Qeynos. It’s a busy district area with plenty of opportunties for adventure seekers and back-alley trade.", 2, 26, "HumanQNettleville")
	AddOptionWindowOption(window, " Starcrest Commune", "Depart for Starcrest -  Starcrest is a grand political experiment implemented by the intellectual Erudites to serve as their home in Qeynos. Residents often frown on noise and distraction that might hinder their research, so be mindful of your activities. ", 2, 27, "HumanQStarcrest")
	AddOptionWindowOption(window, " Stay", "Stay on the Island.  Continue your adventures here and return to this bell when you are ready to leave.", 0, 2296, "Cancel")
	SendOptionWindow(window, Spawn, "Humans Must Select Their Next Desitnation", "Cancel")
	
	
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
        ZoneRef = GetZone("EastFreeport")
        Zone(ZoneRef,Spawn)

    end
end
