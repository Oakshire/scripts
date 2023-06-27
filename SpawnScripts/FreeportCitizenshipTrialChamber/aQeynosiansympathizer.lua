--[[
    Script Name    : SpawnScripts/FreeportCitizenshipTrialChamber/aQeynosiansympathizer.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.25 04:06:11
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local BQCitizen = 5866 --Big Bend
local CVQCitizen = 5867 --Beggar's Court
local GQCitizen = 5868 --Longshadow Alley
local NQCitizen = 5869 -- Scale Yard
local SCQCitizen = 5870 --Stonestair Byway
local WWQCitizen = 5871 --Temple St

function spawn(NPC)
end


function hailed(NPC, Spawn)
Dialog1(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I didn't do it!  They pulled me from my home!  All I did was make this invention that they stole!")
    PlayFlavor(NPC,"","","whome",0,0,Spawn)
	Dialog.AddVoiceover("voiceover/english/a_qeynosian_sympathizer/fprt_sewer_epic08/falselyaccused000.mp3", 1319923328, 1248891325)
	Dialog.AddOption("What invention? Does it explode?", "Dialog2")
	Dialog.AddOption("Freeport's only mistake was accepting you as a refugee.", "AttackTimer")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("For the last time, gnomes didn't make Luclin explode! We would have gone with disintegration.")
	Dialog.AddVoiceover("voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_3b50e81d.mp3", 269246846, 1507536385)
    PlayFlavor(NPC,"","","grumble",0,0,Spawn)
	Dialog.AddOption("Are... you sure you're a traitor?", "Dialog3")
	Dialog.AddOption("Another reason you should die!", "AttackTimer")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I will prove to them that I'm not mad! If I have to kill everyone of them to prove it, I will!")
	Dialog.AddVoiceover("voiceover/english/gnome_eco_evil_1/ft/gnome/gnome_eco_evil_1_hail_gm_87cefc8f.mp3", 3561903619, 1901803882)
    PlayFlavor(NPC,"","","heckno",0,0,Spawn)
	Dialog.AddOption("You don't seem Qeynosian... You should get out of here.","Fail")
	Dialog.AddOption("The Overlord has deemed you unworthy!", "AttackTimer")
	Dialog.AddOption("Enough. Tell me where your invention is!", "AttackTimer")
	Dialog.Start()
end

function AttackTimer(NPC,Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You'll never steal my experiment!")
	Dialog.AddVoiceover("voiceover/english/gnome_base_1/ft/gnome/gnome_base_1_1_aggro_gm_7d3374f8.mp3", 671789066, 1889150438)
    PlayFlavor(NPC,"","","shakefist",0,0,Spawn)
	Dialog.AddOption("...", "AttackTimer")
	Dialog.Start()
	AddTimer(NPC,2200,"Attacking",1,Spawn)
end

function Attacking(NPC,Spawn)
    CloseConversation(NPC,Spawn)
    SpawnSet(NPC,"attackable",1)
    SpawnSet(NPC,"show_level",1)
    AddPrimaryEntityCommand(Spawn,NPC,"",0,"")
    AddPrimaryEntityCommand(Spawn,NPC,"attack",10000,"attack")
    SendUpdateDefaultCommand(NPC,10000,"attack")
    Attack(NPC,Spawn)
end

function Fail(NPC,Spawn)
    PlaySound(Spawn,"sounds/ui/ui_warning.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
    SendPopUpMessage(Spawn,"The Overlord's will must not be questioned!",255,50,50)
    SendMessage(Spawn,"The Overlord's will must not be questioned!","red")
    AddTimer(NPC,4500,"FailureExit",1,Spawn)
end


function aggro(NPC,Spawn)
     SpawnSet(NPC,"attackable",1)
    SpawnSet(NPC,"show_level",1)
    SpawnSet(NPC,"command_primary",11)
    SpawnSet(NPC,"action_state",0)
end

function death(NPC,Spawn)
    if GetSpawn(NPC,1640001) == nil or not IsAlive(NPC,1640001) == false and
    GetSpawn(NPC,1640002) == nil or not IsAlive(NPC,1640002) == false and
    GetSpawn(NPC,1640018) == nil or not IsAlive(NPC,1640018) == false and
    GetSpawn(NPC,1640021) == nil or not IsAlive(NPC,1640021) == false 
    then
        if HasQuest(Spawn,BQCitizen) then
	SetStepComplete(Spawn,BQCitizen,4)
	elseif HasQuest(Spawn,CVQCitizen) then
 	SetStepComplete(Spawn,CVQCitizen,4)
	elseif HasQuest(Spawn,GQCitizen) then
 	SetStepComplete(Spawn,GQCitizen,4)
	elseif HasQuest(Spawn,NQCitizen) then
 	SetStepComplete(Spawn,NQCitizen,4)
	elseif HasQuest(Spawn,SCQCitizen) then
 	SetStepComplete(Spawn,SCQCitizen,4)
	elseif HasQuest(Spawn,WWQCitizen) then
 	SetStepComplete(Spawn,WWQCitizen,4)
 	end    
end
end

function victory(NPC,Spawn)
    AddTimer(NPC,2500,"FailureExit",1,Spawn)
end   

function FailureExit(NPC,Spawn)
    CloseConversation(NPC,Spawn)
      Race = GetRace(Spawn)

    -- Erudite / Kerra
    if Race == 3 or Race == 11 then
        ZoneRef = GetZone("Stonestair")
        Zone(ZoneRef,Spawn,3.24, -4.37, -98.46, 185.35)

      -- Ratonga / Gnome
    elseif Race == 5 or Race == 13 then
        ZoneRef = GetZone("TempleSt")
        Zone(ZoneRef,Spawn,21.81, 2.92, 21.37, 190.87)


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
        Zone(ZoneRef,Spawn,-6.78, -5.63, -12.96, 194.63)

    else 
        ZoneRef = GetZone("BeggarsCourt")
        Zone(ZoneRef,Spawn,58.67, -7.08, 112.61, 352.60)

    end
end