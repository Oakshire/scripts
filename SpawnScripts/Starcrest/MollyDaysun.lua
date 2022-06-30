--[[
    Script Name    : SpawnScripts/Starcrest/MollyDaysun.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.29 04:06:11
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
	waypoints(NPC)
    SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
    ProvidesQuest(NPC, 245)
end

function InRange(NPC,Spawn)
if GetFactionAmount(Spawn,11)<0 then
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "squeal", 0, 0, Spawn)
else
    if not HasQuest(Spawn, 245) and not HasCompletedQuest(Spawn,245)then
	local chance = math.random(0, 100)
	if chance <= 90 then
	local choice = MakeRandomInt(1,2)
	if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/molly_daysun/qey_village02/100_molly_cat_chasing_callout_6fb3caf0.mp3", "Kitty come back!  Please help me get my kitty.", "wave", 690447374, 3480843859, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/molly_daysun/qey_village02/100_molly_cat_chasing_multhail2_e54bdfb2.mp3", "Won't you help me get my kitty?", "", 666416041, 907394876, Spawn, 0)
end
end
end
end
end

function hailed(NPC, Spawn)
    SetTarget(NPC,Spawn)
	FaceTarget(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	PlayFlavor(NPC, "", "", "sulk", 0, 0, Spawn)
else
Dialog1(NPC, Spawn)
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "wave", 0, 0, Spawn)
	Dialog.AddDialog("Stop, Kitty!  Come back here!")
	Dialog.AddVoiceover("voiceover/english/molly_daysun/qey_village02/mollydaysun.mp3", 2796508243, 3325394808)
 	if not HasCompletedQuest (Spawn, 245) and not HasQuest (Spawn, 245) then 
	Dialog.AddOption("Have you had any luck catching Kitty?","Caught")
    end
    if GetQuestStep (Spawn, 245)==2 then 
	Dialog.AddOption("I've delivered the King's Field piece.  You'll be happy to know you're not in trouble.","Done")
    end
    if HasCompletedQuest (Spawn, 245) then   
    Dialog.AddOption("Good luck.  Kitty seems to be a quick one!")
    end
    Dialog.AddOption("Bah! Keep that cat away from me!")
	Dialog.Start()
end


function Caught(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddDialog("Well, I did manage to grab her a few minutes ago.  I took this out of her mouth.  It looks like a playing piece the erudites play by the gate.  Could you return the piece while I catch kitty?")
	Dialog.AddVoiceover("voiceover/english/molly_daysun/qey_village02/mollydaysun000.mp3", 2059278603, 4147718964)
	Dialog.AddOption("Certainly.  I will see if they are missing this piece from their game.", "QuestBegin")
	Dialog.AddOption("Afraid I'm busy. Sorry.")
	Dialog.Start()
end

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, 245)
end

function Done(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    SetStepComplete(Spawn, 245, 2)
	PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
	Dialog.AddDialog("Great!  I don't want the players yelling at me for my cat for taking their game piece.  Kitty tends to annoy a lot of the erudites in the city.")
	Dialog.AddVoiceover("voiceover/english/molly_daysun/qey_village02/mollydaysun001.mp3", 220292318, 3478148880)
	Dialog.AddOption("Glad I could help.  Good luck with Kitty.")
	Dialog.Start()
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 776.39, -20.52, 287.4, 4, math.random(0,1),"Kitty2")
	MovementLoopAddLocation(NPC, 778.21, -20.33, 294.25, 4, 2,"Kitty3")
	MovementLoopAddLocation(NPC, 784.48, -20.51, 290.9, 4, math.random(0,1),"Kitty4")
	MovementLoopAddLocation(NPC, 785.14, -20.57, 283.67, 4, math.random(0,1),"Kitty5")
	MovementLoopAddLocation(NPC, 774.82, -20.57, 275.59, 4, math.random(0,1),"Kitty6")
	MovementLoopAddLocation(NPC, 769.64, -20.51, 274.32, 4, math.random(0,1),"Kitty7")
	MovementLoopAddLocation(NPC, 757.83, -20.52, 278.97, 4, math.random(0,3),"Kitty8")
	MovementLoopAddLocation(NPC, 754.89, -20.48, 281.49, 4, 0,"Kitty9")
	MovementLoopAddLocation(NPC, 760.22, -20.49, 280.95, 4, 0,"Kitty10")
	MovementLoopAddLocation(NPC, 765.29, -20.47, 274.4, 4, math.random(0,1),"Kitty11")
	MovementLoopAddLocation(NPC, 777.6, -20.58, 276.25, 4, math.random(0,1),"Kitty12")
	MovementLoopAddLocation(NPC, 781.22, -20.6, 282.04, 4, 0,"Kitty1")
end


function Kitty12(NPC)
        Pigchase = true
        local kitty = GetSpawn(NPC,2340002)
    if kitty ~=nil then
      MoveToLocation(kitty, 776.39, -20.52, 287.4, 6)
        SetTarget(NPC,kitty)
end
end

function Kitty11(NPC)
        Pigchase = true
        local kitty = GetSpawn(NPC,2340002)
    if kitty ~=nil then
      MoveToLocation(kitty, 781.22, -20.6, 282.04, 6)
        SetTarget(NPC,kitty)
end
end

function Kitty10(NPC)
        Pigchase = true
        local kitty = GetSpawn(NPC,2340002)
    if kitty ~=nil then
      MoveToLocation(kitty, 777.6, -20.58, 276.25, 6)
        SetTarget(NPC,kitty)
end
end

function Kitty9(NPC)
        Pigchase = true
        local kitty = GetSpawn(NPC,2340002)
    if kitty ~=nil then
      MoveToLocation(kitty, 765.29, -20.47, 274.4, 6)
        SetTarget(NPC,kitty)
end
end

function Kitty8(NPC)
        Pigchase = true
        local kitty = GetSpawn(NPC,2340002)
    if kitty ~=nil then
      MoveToLocation(kitty, 760.22, -20.49, 280.95, 6)
        SetTarget(NPC,kitty)
end
end

function Kitty7(NPC)
        Pigchase = true
        local kitty = GetSpawn(NPC,2340002)
    if kitty ~=nil then
      MoveToLocation(kitty, 754.89, -20.48, 281.49, 6)
        SetTarget(NPC,kitty)
end
end

function Kitty6(NPC)
        Pigchase = true
        local kitty = GetSpawn(NPC,2340002)
    if kitty ~=nil then
      MoveToLocation(kitty, 757.83, -20.52, 278.97, 6)
        SetTarget(NPC,kitty)
end
end

function Kitty5(NPC)
        Pigchase = true
        local kitty = GetSpawn(NPC,2340002)
    if kitty ~=nil then
      MoveToLocation(kitty, 769.64, -20.51, 274.32, 6)
        SetTarget(NPC,kitty)
end
end

function Kitty4(NPC)
        Pigchase = true
        local kitty = GetSpawn(NPC,2340002)
    if kitty ~=nil then
      MoveToLocation(kitty, 774.82, -20.57, 275.59, 6)
        SetTarget(NPC,kitty)
end
end

function Kitty3(NPC)
        Pigchase = true
        local kitty = GetSpawn(NPC,2340002)
    if kitty ~=nil then
      MoveToLocation(kitty, 785.14, -20.57, 283.67, 6)
        SetTarget(NPC,kitty)
end
end

function Kitty2(NPC)
        Pigchase = true
        local kitty = GetSpawn(NPC,2340002)
    if kitty ~=nil then
      MoveToLocation(kitty, 784.48, -20.51, 290.9, 6)
        SetTarget(NPC,kitty)
end
end

function Kitty1(NPC)
        Pigchase = true
        local kitty = GetSpawn(NPC,2340002)
    if kitty ~=nil then
      MoveToLocation(kitty, 778.21, -20.33, 294.25, 6)
        SetTarget(NPC,kitty)
end
end
