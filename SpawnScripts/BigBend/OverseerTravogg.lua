--[[
    Script Name    : SpawnScripts/BigBend/OverseerTravogg.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.03 03:10:59
    Script Purpose : 
                   : 
--]]

local Welcome = 5860

require "SpawnScripts/Generic/DialogModule"
local CalloutTimer = false

function spawn(NPC)
ProvidesQuest(NPC,Welcome)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn) --Quest Callout
if GetFactionAmount(Spawn,12)<0 then
PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
FaceTarget(NPC, Spawn)
if GetRace(Spawn)== 12 or GetRace(Spawn) == 14  then
    if CanReceiveQuest(Spawn, Welcome)then   
        PlayFlavor(NPC,"","Refugees will report to me at once!","wave",850117394,1406850605,Spawn)
    elseif CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,90000,"ResetCallout",1,Spawn)
    Talk(NPC,Spawn)
    end
elseif CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,90000,"ResetCallout",1,Spawn)
    Talk(NPC,Spawn)
    end
end
end


function ResetCallout(NPC,Spawn)
    CalloutTimer = false
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,12)<0 then
        PlayFlavor(NPC,"","","shame",0,0,Spawn)
    else        
if GetRace(Spawn)== 12 or GetRace(Spawn) == 14  then
    if not HasQuest(Spawn, Welcome) and not HasCompletedQuest(Spawn,Welcome)then
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Freeport welcomes you, traveler. Enter our city and you are no longer a refugee. Know this – you are now an asset of our mighty city. Consider yourself lucky. ")
	Dialog.AddVoiceover("voiceover/english/overseer_travogg/fprt_hood1/overseer_travogg001.mp3", 2748948544, 618605369)
    PlayFlavor(NPC,"","","nod",0,0,Spawn)
	Dialog.AddOption("I don't feel lucky.","Dialog1")
	Dialog.AddOption("...I'll be right back.")
	Dialog.Start()
    else
    Talk(NPC,Spawn)
    end
else    
    Talk(NPC,Spawn)
    end
end
end

function Talk(NPC,Spawn)
        FaceTarget(NPC, Spawn)
        local choice = MakeRandomInt(1,2)
        if choice == 1 then
        PlayFlavor(NPC,"","Refugees will report to me at once!","sniff",850117394,1406850605,Spawn)
        else
        PlayFlavor(NPC,"","Disturb me again and you will suffer the consequences.","glare",850117394,1406850605,Spawn)
        end
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Your feelings mean nothing to the Overlord.  He is your ruler and such an honor should delight you, peasant. If you are not delighted, I will smash open your skull. ")
    PlayFlavor(NPC,"","","heckno",0,0,Spawn)
	Dialog.AddVoiceover("voiceover/english/overseer_travogg/fprt_hood1/overseer_travogg002.mp3", 3261798868, 2615741361)
	Dialog.AddOption("I see... then I'm happy to be here.", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You choose wisely. For this you may live. The Overlord has granted you a house in Big Bend, home to ogres and trolls. You must work to afford this gift. Does this please you?")
	Dialog.AddVoiceover("voiceover/english/overseer_travogg/fprt_hood1/overseer_travogg003.mp3", 2428117614, 1340985853)
	Dialog.AddOption("Happy?", "QuestStart")
	Dialog.Start()
end

function QuestStart(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Welcome)
end
