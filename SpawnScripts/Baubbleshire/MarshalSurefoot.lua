--[[
	Script Name	: SpawnScripts/Baubbleshire/MarshalSurefoot.lua
	Script Purpose	: Marshal Surefoot 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
	Script Update Notes: Included callout, waypoints, Action animations. 2022.08.01 Dorbin
	Script Update Notes: New Dialog Format 2022.18.08 Dorbin
--]]
require "SpawnScripts/Generic/DialogModule"

-- Quest ID's
local FIGHT_THE_FORGOTTEN_GUARDIANS =  334 -- was 59

function spawn(NPC)
	ProvidesQuest(NPC, FIGHT_THE_FORGOTTEN_GUARDIANS)
	waypoints(NPC)
	SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
	Action(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function LeaveRange(NPC)
     
end

function Action(NPC)
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then
        PlayFlavor(NPC, "", "", "peer", 0, 0, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "stretch", 0, 0, Spawn)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "yawn", 0, 0, Spawn)
    elseif choice == 4 then
        PlayFlavor(NPC, "", "", "attention", 0, 0, Spawn)
    end
end   


function InRange(NPC, Spawn)
    if GetFactionAmount(Spawn,11)>0 then	  
	    if math.random(1, 100) <= 80 and not HasQuest(Spawn, FIGHT_THE_FORGOTTEN_GUARDIANS) and not HasCompletedQuest(Spawn, FIGHT_THE_FORGOTTEN_GUARDIANS) and GetLevel(Spawn) >= 5 then
 	        FaceTarget(NPC, Spawn)
            if not HasCompletedQuest(Spawn, FIGHT_THE_FORGOTTEN_GUARDIANS) then
            PlayFlavor(NPC, "voiceover/english/marshal_surefoot/qey_village06/100_marshal_shortfoot_callout_21d33319.mp3", "Forgotten guardians are no match for a Leatherfoot, Ha! Greetings adventurer. I can tell you're a fearless warrior!", "salute", 3286953341, 3627183103, Spawn)
	        else
		   	PlayFlavor(NPC, "", "", "salute", 0, 0, Spawn)
            end
        end
    end
end



function waypoints(NPC)
	MovementLoopAddLocation(NPC, 879.49, -17.11, -511.61, 2, 1,"Heading")
	MovementLoopAddLocation(NPC, 879.49, -17.11, -511.61, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 879.49, -17.11, -511.61, 2, 0)
	MovementLoopAddLocation(NPC, 878.04, -16.77, -515.6, 2, 0)
	MovementLoopAddLocation(NPC, 880.47, -16.46, -518.44, 2, 0)
	MovementLoopAddLocation(NPC, 885.54, -16.3, -516.52, 2, 0)
	MovementLoopAddLocation(NPC, 889.43, -16.6, -509.34, 2, 0)
	MovementLoopAddLocation(NPC, 892.83, -17.27, -500.62, 2, 0)
	MovementLoopAddLocation(NPC, 891.64, -17.67, -494.35, 2, 0)
	MovementLoopAddLocation(NPC, 888.19, -18.03, -488.68, 2, 0)
	MovementLoopAddLocation(NPC, 884.46, -18.41, -481.88, 2, 0)
	MovementLoopAddLocation(NPC, 882.67, -18.88, -477.27, 2, 0)
	MovementLoopAddLocation(NPC, 882.85, -19.17, -470.55, 2, 0)
	MovementLoopAddLocation(NPC, 885.66, -19.24, -467.3, 2, 0)
	MovementLoopAddLocation(NPC, 889.61, -19.18, -463.69, 2, 0)
	MovementLoopAddLocation(NPC, 892.35, -19.01, -459.51, 2, 0)
	MovementLoopAddLocation(NPC, 891.78, -18.75, -457.06, 2, 0)
	MovementLoopAddLocation(NPC, 888.81, -18.36, -454.83, 2, 1)
	MovementLoopAddLocation(NPC, 888.81, -18.36, -454.83, 2, math.random(10, 20),"Action")
	MovementLoopAddLocation(NPC, 886.47, -18.48, -453.4, 2, 0)
	MovementLoopAddLocation(NPC, 887.14, -18.74, -455.05, 2, 0)
	MovementLoopAddLocation(NPC, 891.28, -18.76, -457.08, 2, 0)
	MovementLoopAddLocation(NPC, 892.92, -19.01, -460.27, 2, 0)
	MovementLoopAddLocation(NPC, 889.95, -19.18, -463.44, 2, 0)
	MovementLoopAddLocation(NPC, 883.6, -19.25, -469.01, 2, 0)
	MovementLoopAddLocation(NPC, 882.26, -19, -475.72, 2, 0)
	MovementLoopAddLocation(NPC, 884.8, -18.4, -482.67, 2, 0)
	MovementLoopAddLocation(NPC, 890.52, -17.81, -492.32, 2, 0)
	MovementLoopAddLocation(NPC, 893.26, -17.43, -499.55, 2, 0)
	MovementLoopAddLocation(NPC, 890.16, -16.83, -506, 2, 0)
	MovementLoopAddLocation(NPC, 886.35, -16.56, -510.25, 2, 0)
	MovementLoopAddLocation(NPC, 884.02, -16.59, -512.14, 2, 0)
	MovementLoopAddLocation(NPC, 881.66, -16.94, -510.51, 2, 0)
	MovementLoopAddLocation(NPC, 879.27, -17.13, -511.52, 2, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn,11)<0 then	  
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    else    
	Begin(NPC, Spawn)
    end
end

function Heading(NPC)
    SetHeading(NPC,166)
end

function Begin(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Stand stout! You'd make a fine deputy.")
	Dialog.AddVoiceover("voiceover/english/marshal_surefoot/qey_village06/marshalsurefoot000.mp3", 3898086374, 2053590783)
    PlayFlavor(NPC, "", "", "salute", 0, 0, Spawn)
	if GetLevel(Spawn) <= 4 then
	Dialog.AddOption("Perhaps I'll be better off getting more experience first.")
    end
	if not HasQuest(Spawn, FIGHT_THE_FORGOTTEN_GUARDIANS) and not HasCompletedQuest(Spawn, FIGHT_THE_FORGOTTEN_GUARDIANS) and GetLevel(Spawn) >= 5 then
	Dialog.AddOption("Do deputies get paid well?", "PaidWell")
    end
	if HasQuest(Spawn, FIGHT_THE_FORGOTTEN_GUARDIANS) and GetQuestStep(Spawn, FIGHT_THE_FORGOTTEN_GUARDIANS) == 2 then
	Dialog.AddOption("It was amazing! I defeated five forgotten guardians.", "KilledGuardians")
    end
	Dialog.AddOption("Sorry to hear that. I must be going.")
	Dialog.Start()
end

function PaidWell(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Aha!  A mercenary!  I can use your mettle for testing the strengths of the enemy.  Can you overcome the titans of the forest?  What do ya say, soldier?")
	Dialog.AddVoiceover("voiceover/english/marshal_surefoot/qey_village06/marshalsurefoot001.mp3", 1754420815, 722332586)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)	
	Dialog.AddOption("I can face the titans of the forest.", "CanFaceTitans")
	Dialog.AddOption("I am not facing any titans today.")
	Dialog.Start()
end

function CanFaceTitans(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Then stand firm and venture to the Forest Ruins.  The foes act as Forgotten Guardians.  They prey upon the people ... stand tall, soldier!  Crush a few and return with a tale of victory!")
	Dialog.AddVoiceover("voiceover/english/marshal_surefoot/qey_village06/marshalsurefoot002.mp3", 2844840663, 963541700)
	Dialog.AddOption("I will face the titans. ", "OfferQuest1")
	Dialog.Start()
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, FIGHT_THE_FORGOTTEN_GUARDIANS)
end

function KilledGuardians(NPC, Spawn)
	SetStepComplete(Spawn, FIGHT_THE_FORGOTTEN_GUARDIANS, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What bravery!  You laughed in the face of death! You are a true protector of the forest realms.  I shall seek you out when I recruit my force of Leatherfoot deputies.  You are relieved for now.")
	Dialog.AddVoiceover("voiceover/english/marshal_surefoot/qey_village06/marshalsurefoot003.mp3", 137631615, 420589820)
	PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)	
	Dialog.AddOption("Farewell Marshal Surefoot.")
	Dialog.Start()
end