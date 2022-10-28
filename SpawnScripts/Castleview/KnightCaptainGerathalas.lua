--[[
	Script Name	: SpawnScripts/Castleview/Knight-CaptainGerathalas.lua
	Script Purpose	: Knight-Captain Gerathalas <Qeynos Guard>
	Script Author	: Dorbin
	Script Date	: 2022.01.27
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"
dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

local Rats = 5460

function spawn(NPC)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
ProvidesQuest(NPC, Rats)
end

function respawn(NPC)
end

function InRange(NPC, Spawn) --Quest Callout
if MakeRandomInt(1, 100) <= 70 then
    if GetFactionAmount(Spawn,11)>0 then
    if GetLevel(Spawn) <5 then
            FaceTarget(NPC, Spawn)
            PlayFlavor(NPC, "voiceover/english/knight-captain_gerathalas/qey_village04/100_guard_captain_gerathalas_multhail1_a85f56d8.mp3", "Good day adventurer! I hope you are staying safe on your arduous journey. Please move on. I must'nt bother you with the unpleasant mission at hand.", "attention", 4040681686, 1885342319, Spawn)
    elseif not HasCompletedQuest (Spawn, Rats) and not HasQuest (Spawn, Rats) and GetLevel(Spawn) >=5 then 
        FaceTarget(NPC, Spawn)
        PlayFlavor(NPC, "voiceover/english/knight-captain_gerathalas/qey_village04/100_guard_captain_gerathalas_callout_dc14d674.mp3", "Keep an eye out soldiers! The rats are getting into the food stores again! You adventurer. Would you help rid the city of these putrid vermin?","attention", 379444664, 154385468, Spawn)
        
     else
         choice = math.random(1,3)
         if choice ==1 then
         FaceTarget(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/knight-captain_gerathalas/qey_village04/captaingerathalas.mp3", "Good day to you, adventurer.  I hope you have been keeping yourself safe.", "salute", 3830137539, 3865597694, Spawn)
         elseif choice ==2 then
        FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "", "salute", 0, 0, Spawn)
		else
		PlayFlavor(NPC, "", "", "attention", 0, 0, Spawn)
        end
    end
    end
end
end

--[[function dawn(NPC,Spawn)  -- Playing with leaving during the night and returning in the day. Faaaaailure.
    if not IsNight(GetZone(NPC))  then
    SpawnMob(NPC, 2360031)
        PlayFlavor(NPC,"","","stretch",0,0)
     MoveToLocation(NPC, 729.04, -21.05, -142.38, 2)
     MoveToLocation(NPC, 728.217, -20.5, -129.013, 2)
     end
  

function dusk(NPC,Spawn)
    --local Awake = GetSpawn(NPC, 2360031)
    if IsNight(GetZone(NPC))  then
        Say(NPC, "It is night")
    PlayFlavor(NPC,"","","yawn",0,0)
    PlayAnimation(NPC, 891)
    AddTimer(NPC,11000, "GoToSleep")
    end
end

function GoToSleep(NPC)
 MoveToLocation(NPC, 726.90, -21.1, -139.30, 2)
 MoveToLocation(NPC, 729.04, -21.05, -142.38, 2)
     AddTimer(NPC,8000, "Sleep")
end

function Sleep(NPC)
    Despawn(NPC)
    end]]--



function hailed(NPC, Spawn)
    if GetLevel(Spawn) <5 then
            FaceTarget(NPC, Spawn)
            PlayFlavor(NPC, "voiceover/english/knight-captain_gerathalas/qey_village04/100_guard_captain_gerathalas_multhail1_a85f56d8.mp3", "Good day adventurer! I hope you are staying safe on your arduous journey. Please move on. I must'nt bother you with the unpleasant mission at hand.", "attention", 4040681686, 1885342319, Spawn)
    else
     	FaceTarget(NPC, Spawn)
    	Dialog.New(NPC, Spawn)
    	Dialog.AddDialog("Good day to you, adventurer.  I hope you have been keeping yourself safe.")
    	Dialog.AddVoiceover("voiceover/english/knight-captain_gerathalas/qey_village04/captaingerathalas.mp3", 3830137539, 3865597694)
 	    PlayFlavor(NPC, "", "", "attention", 0,0 , Spawn)
	    if GetQuestStep(Spawn, Rats)==2 then
	    Dialog.AddOption("I have your tails right here.  I told you I could handle it.", "DoneRats")
	    end 
        if not HasQuest(Spawn, Rats) and not HasCompletedQuest(Spawn, Rats) then	    
        Dialog.AddOption("Yes, I can take care of myself quite well.", "ICan")
        end
        Dialog.AddOption("Good day to you too!")	
        Dialog.Start()
        end   
end

function ICan(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, you can, can you? Some vermin are eating the food supply. Can you handle... an extermination mission?")
	Dialog.AddVoiceover("voiceover/english/knight-captain_gerathalas/qey_village04/captaingerathalas000.mp3",261740052,1158019812)
 	PlayFlavor(NPC, "", "", "sniff", 0,0 , Spawn)
   Dialog.AddOption("I'm not scared of a few little mice.  I'll take care of the problem for you.", "QuestStart")
   Dialog.AddOption("I'd rather not get my hands THAT dirty. Sorry.")
   Dialog.Start()
end

function QuestStart (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Rats)
end

function DoneRats(NPC, Spawn)
    SetStepComplete(Spawn, Rats, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Aye, you did!  These look like they came off some big vermin.  No easy prey for you I see.  Here is the piece of armor I promised you.  May it help protect you against more dangerous foes.")
	Dialog.AddVoiceover("voiceover/english/knight-captain_gerathalas/qey_village04/captaingerathalas002.mp3",2969029986,2406700241)
 	PlayFlavor(NPC, "", "", "agree", 0,0 , Spawn)
   Dialog.AddOption("Thank you.  It should come in very handy.")
   Dialog.Start()
end
