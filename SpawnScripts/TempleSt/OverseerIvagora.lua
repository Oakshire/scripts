--[[
    Script Name    : SpawnScripts/TempleSt/OverseerIvagora.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.02 06:10:28
    Script Purpose : 
                   : 
--]]

local Welcome = 5864

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
elseif GetRace(Spawn)== 5 or GetRace(Spawn) ==13 then
    if CanReceiveQuest(Spawn, Welcome)then   
        PlayFlavor(NPC,"voiceover/english/overseer_ivagora/fprt_hood03/qst_overseer_ivagora_callout2_29d95cf.mp3","Here! Here! Here! Refugees come here!!!","beckon",50468124,3582989183,Spawn)
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



function ResetCallout(NPC,Spawn)
    CalloutTimer = false
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,12)<0 then
        PlayFlavor(NPC,"","","heckno",0,0,Spawn)
    else        
if GetRace(Spawn)== 5 or GetRace(Spawn) ==13 then
    if not HasQuest(Spawn, Welcome) and not HasCompletedQuest(Spawn,Welcome)then
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You are to talk to me, because I am the overseer of the refugees!  You will listen to me, understand?  I am telling you what you need to do now that you are owned by Freeport!  You will listen, you got it?!")
	Dialog.AddVoiceover("voiceover/english/overseer_ivagora/fprt_hood03/overseer_ivagora001.mp3", 2177122562, 2434125400)
    PlayFlavor(NPC,"","","smirk",0,0,Spawn)
	Dialog.AddOption("What do I need to do?","Dialog1")
	Dialog.AddOption("I... must be going!")
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
        PlayFlavor(NPC,"voiceover/english/overseer_ivagora/fprt_hood03/qst_overseer_ivagora_callout1_7a7c78d2.mp3","I am very important!  You speak to me only when I speak to you!","stare",629512654,4246602300,Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC,"voiceover/english/overseer_ivagora/fprt_hood03/qst_overseer_ivagora_callout2_29d95cf.mp3","Here! Here! Here! Refugees come here!!!","beckon",50468124,3582989183,Spawn)
        end
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What you do is you say \"Thank you, Overlord\" and \"You are so strong, Overlord\" and \"Thank you for giving me a house in Freeport because you are the best Overlord, Overlord\".  If you are bad and you do not say these things, then you will be given a new dagger.")
    PlayFlavor(NPC,"","","orate",0,0,Spawn)
	Dialog.AddVoiceover("voiceover/english/overseer_ivagora/fprt_hood03/overseer_ivagora002.mp3", 1025867876, 338880904)
	Dialog.AddOption("I could always use a new dagger!", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("No, no.  You are not understanding!  We will give you a dagger in your back.  You don't want that kind of dagger.  If you are good and you say these things about the Overlord, then you will get a house.  The Overlord likes giving houses to refugees.  It's free!  No strings attached!  Trust me!")
	Dialog.AddVoiceover("voiceover/english/overseer_ivagora/fprt_hood03/overseer_ivagora003.mp3", 1768168077, 1553750759)
    PlayFlavor(NPC,"","","no",0,0,Spawn)
	Dialog.AddOption("I see. I'll take a house instead!", "QuestStart")
	Dialog.Start()
end

function QuestStart(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Welcome)
end