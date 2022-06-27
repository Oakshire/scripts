--[[
	Script Name	: SpawnScripts/Nettleville/BarmaidLollaCotgrove.lua
	Script Purpose	: Barmaid Lolla Cotgrove <Provisioner>
	Script Author	: Dorbin
	Script Date	: 2022.01.21
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"

local Delivery = 5446

function spawn(NPC)
SetPlayerProximityFunction(NPC, 12, "InRange", "LeaveRange")
ProvidesQuest(NPC, Delivery)
waypoints(NPC)
end

function InRange(NPC, Spawn) --Quest Callout
if GetFactionAmount(Spawn,11)<0 then
PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
FaceTarget(NPC, Spawn)
else   
if math.random(1, 100) <= 85 then
    if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) then 
    	FaceTarget(NPC, Spawn)
        choice = math.random(1,3)
        if choice ==1 then
 		PlayFlavor(NPC, "voiceover/english/barmaid_lolla_cotgrove/qey_village01/qey_village01_barmaid_lolla_cotgrove_callout_a2de4d52.mp3", "...and that will go over here and the kegs go there... Yeah. Yeah. Yeah. What do you need?", "point", 2609682603, 931995827, Spawn)
        elseif choice ==2 then
	    PlayFlavor(NPC, "voiceover/english/barmaid_lolla_cotgrove/qey_village01/qey_village01_barmaid_lolla_cotgrove_multhail1_ec6e0398.mp3", "Can't you see I'm busy? I've no time for small talk!", "no", 370156187, 590443744, Spawn)
        elseif choice ==3 then
	    PlayFlavor(NPC, "voiceover/english/barmaid_lolla_cotgrove/qey_village01/qey_village01_barmaid_lolla_cotgrove_multhail2_81a9cfd7.mp3", "I'm very busy organizing the tavern, but could use your help.", "", 986260554, 42964603, Spawn)
        end
else
         choice = math.random(1,2)
         if choice ==1 then
         PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
        else
        PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
         end
    end
    end
end
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 673.24, -24.7, 365.85, 2, 1)
	MovementLoopAddLocation(NPC, 673.24, -24.7, 365.85, 2, 18,"Action")
	MovementLoopAddLocation(NPC, 673.24, -24.7, 365.85, 2, 18,"Action")
	MovementLoopAddLocation(NPC, 672.02, -24.67, 366.48, 2, 0)
	MovementLoopAddLocation(NPC, 674.01, -24.73, 363.75, 2, 0)
	MovementLoopAddLocation(NPC, 676.9, -24.82, 363.13, 2, 1)
	MovementLoopAddLocation(NPC, 676.9, -24.82, 363.13, 2, 18,"Action")
	MovementLoopAddLocation(NPC, 676.9, -24.82, 363.13, 2, 18,"Action")
	MovementLoopAddLocation(NPC, 677.91, -24.83, 362.92, 2, 0)
	MovementLoopAddLocation(NPC, 674.72, -24.75, 363.89, 2, 0)
end




function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
 	FaceTarget(NPC, Spawn)
 	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    else
    if  HasCompletedQuest (Spawn, Delivery) then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/barmaid_lolla_cotgrove/qey_village01/qey_village01_barmaid_lolla_cotgrove_multhail3_8addc849.mp3", "Ah, you don't know how much this means to me.  Thank you for getting me those kegs.", "nod", 452140070, 1937005581, Spawn)
    else        
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	Dialog.AddDialog("Yeah yeah, I'll get to you in a minute")
	Dialog.AddVoiceover("voiceover/english/lolla_cotgrove/qey_village01/lollacotgrove000.mp3", 1360234697, 1758143417)
 	if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) then 
        Dialog.AddOption("You seem to have your hands full. Need any help?", "Helping")
    end
    if GetQuestStep (Spawn, Delivery)==2 then 
        Dialog.AddOption("Your keg order should be on schedule.","Delivered")
    end
    if HasQuest (Spawn, Delivery) then 
        Dialog.AddOption("I'm still checking on your keg order.")
    end
    Dialog.AddOption("Sorry, I'll get out of your way.")
	Dialog.Start()
end
end
end

function Helping(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I apologize for my rude behaviour, friend.  I'm wound up tighter than an ogre's bootstraps because the tavern isn't built yet!  Until construction is complete, I'm stuck outside.  S-say, could you help me?  I need to check on a order I placed for some special gnome kegs.")
	Dialog.AddVoiceover("voiceover/english/lolla_cotgrove/qey_village01/lollacotgrove001.mp3", 1554521756, 1693439173)
	Dialog.AddOption("I'm guessing a gnome has the order?", "Helping2")
	Dialog.AddOption("Sorry, I can't help right now.")
	Dialog.Start()
end

function Helping2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddDialog("Ah, that is correct!  Zipiff Clamorclang is working on the kegs.  Please find him and see how his tinkering is going.")
	Dialog.AddVoiceover("voiceover/english/lolla_cotgrove/qey_village01/lollacotgrove002.mp3", 3379420617, 1543278520)
	Dialog.AddOption("I would be happy to go check on your order.", "QuestBegin")
	Dialog.AddOption("Sorry, I can't help right now.")
	Dialog.Start()
end


function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Delivery)
end


function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    SetStepComplete(Spawn, Delivery, 2)
	PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
	Dialog.AddDialog("Oh!  That's excellent news, and a load off my mind- Oh, please take this coin for your troubles.")
	Dialog.AddVoiceover("voiceover/english/lolla_cotgrove/qey_village01/lollacotgrove003.mp3", 180239321, 1024907724)
	Dialog.AddOption("Glad I could help!")
	Dialog.AddOption("I'm looking forward to seeing your tavern.  Take care.")
	Dialog.Start()
end



function Action(NPC)
    local choice = MakeRandomInt(1, 3)
    if choice == 1 then
        PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "confused", 0, 0, Spawn)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "doh", 0, 0, Spawn)

    end
end   

