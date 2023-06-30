--[[
    Script Name    : SpawnScripts/FreeportCitizenshipTrialChamber/aQeynosiandefector.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.25 02:06:46
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
	SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
if not IsInCombat(NPC) then
PlayFlavor(NPC, "","Please, leave me alone!", "cringe", 0,0, Spawn)
end
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
	Dialog.AddDialog("I promise I'll do as the Overlord says!")
    PlayFlavor(NPC,"","","cringe",0,0,Spawn)
	Dialog.AddVoiceover("voiceover/english/a_qeynosian_defector/fprt_sewer_epic08/feigninghelpless000.mp3", 364977579, 2901182928)
	Dialog.AddOption("You lie!", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I beg of you, no!  I have a family!")
	Dialog.AddVoiceover("voiceover/english/a_qeynosian_defector/fprt_sewer_epic08/feigninghelpless001.mp3", 3339052683, 3646445209)
    PlayFlavor(NPC,"","","beg",0,0,Spawn)
	Dialog.AddOption("And where is this family now?", "Dialog3")
	Dialog.AddOption("All traitors to the Overlord must die.", "AttackTimer")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("They're back in the villa ... err, district, yes, district!  We're simple farmers!")
	Dialog.AddVoiceover("voiceover/english/a_freeport_traitor/fprt_sewer_epic08/bribingtraitor002.mp3", 0, 0)
    PlayFlavor(NPC,"","","whome",0,0,Spawn)
	Dialog.AddOption("I understand. Get out of here, quietly!","Fail")
	Dialog.AddOption("Fine. Hide your family, but you're finished.", "Dialog4")
	Dialog.AddOption("Keep your secrets and die, traitor!", "AttackTimer")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("...I understand. If it's a fight ya want, it's a fight you'll get!")
	Dialog.AddVoiceover("voiceover/english/a_freeport_traitor/fprt_sewer_epic08/bribingtraitor002.mp3", 0, 0)
    PlayFlavor(NPC,"","","shakefist",0,0,Spawn)
	Dialog.AddOption("Prepare to die!", "AttackTimer")
	Dialog.Start()
end

function AttackTimer(NPC,Spawn)
    AddTimer(NPC,1200,"Attacking",1,Spawn)
end

function Attacking(NPC,Spawn)
    SpawnSet(NPC,"attackable",1)
    SpawnSet(NPC,"show_level",1)
    AddPrimaryEntityCommand(Spawn,NPC,"",0,"")
    AddPrimaryEntityCommand(Spawn,NPC,"attack",10000,"attack")
    SendUpdateDefaultCommand(NPC,10000,"attack")
    Attack(NPC,Spawn)
end

function Fail(NPC,Spawn)
    PlaySound(Spawn,"sounds/ui/ui_warning.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
    SendPopUpMessage(Spawn,"Allowing defection from Freeport will not be tolerated!",255,50,50)
    SendMessage(Spawn,"Allowing defection from Freeport will not be tolerated!","red")
    AddTimer(NPC,4500,"FailureExit",1,Spawn)
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