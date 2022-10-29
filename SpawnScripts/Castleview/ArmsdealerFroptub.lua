--[[
	Script Name	: SpawnScripts/Castleview/ArmsdealerFroptub.lua
	Script Purpose	: Armsdealer Froptub <Weaponsmith>
	Script Author	: Dorbin
	Script Date	: 2022.01.26
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"
dofile("SpawnScripts/Generic/GenericWeaponsmithVoiceOvers.lua")

local SwordPickup = 5455
local EtchingTool = 5457

function spawn(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
ProvidesQuest(NPC, EtchingTool)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
        if not HasCompletedQuest (Spawn, EtchingTool) and not HasQuest (Spawn, EtchingTool) then 
            if MakeRandomInt(1, 100) <= 70 and GetFactionAmount(Spawn,11) >0 then
            local choice = math.random(1,2)
                if choice == 1 then
                FaceTarget(NPC,Spawn)
	            PlayFlavor(NPC, "voiceover/english/armsdealer_froptub/qey_village04/100_armsdealer_froptub_multhail1_14614e12.mp3", "Graciously accept my pardon for I am a quite the bit busy.  Mayhaps I couldst speak with thee anon?", "beckon", 1509622466, 1792291092, Spawn)
                elseif choice == 2 then
                FaceTarget(NPC,Spawn)
                PlayFlavor(NPC, "voiceover/english/armsdealer_froptub/qey_village04/100_armsdealer_froptub_callout_4ecd2c86.mp3","Wherefore art that apprentice of mine?", "frustrated", 4063074411, 1155187226, Spawn)    
                end
            end
        else 
        if MakeRandomInt(1, 100) <= 70 then
            	GenericWeaponsmithHail(NPC, Spawn, "good")
        end
    end
end


function hailed(NPC, Spawn)
        if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else  
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Welcome to my shop adventurer! My orders seem to be backing up, but I can help you out if you are looking to make a quick purchase!")
	Dialog.AddVoiceover("voiceover/english/armsdealer_froptub/qey_village04/armsdealerfroptub.mp3", 293364037, 660411644)
	PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
 
    if  GetQuestStep(Spawn, SwordPickup) == 1 then
    Dialog.AddOption("I'm here to see about the sword for Aadalian.", "OrderUp")
    end
    if not HasCompletedQuest (Spawn, EtchingTool) and not HasQuest (Spawn, EtchingTool) then 
    Dialog.AddOption("Why are your orders backing up?", "Frustrated")
    end
    if GetQuestStep (Spawn, EtchingTool)==2 then 
    Dialog.AddOption("I have your etching tool.  Your apprentice seemed to have dozed off.'.", "Delivery3")
    end
        Dialog.AddOption("I'm just browsing. Thank you.")	
        Dialog.Start()
end
end


function OrderUp(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Froooaak!  Yes, I etched the mark he wished into the blade.  I'm not much for ornamental marks.  I prefer leaving the weapons I make in their pure form -- one that calls to mind  that the weapon is only an extension of the wielder's ability.")
	Dialog.AddVoiceover("voiceover/english/armsdealer_froptub/qey_village04/armsdealerfroptub004.mp3",1054889156, 2742619000)
 	PlayFlavor(NPC, "", "", "thanks", 0,0 , Spawn)
    Dialog.AddOption("Understandable. May I take the sword to him?", "Delivery")
    Dialog.Start()
end

function Delivery(NPC, Spawn)
    SetStepComplete(Spawn, SwordPickup, 1)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I don't see why not.  Here it is ... I hope he is pleased with the work. Though I understand the elven smiths are surpassed by none in this craft; he did come to me.  I can only assume that he specifically wanted my craftsmanship. ")
	Dialog.AddVoiceover("voiceover/english/armsdealer_froptub/qey_village04/armsdealerfroptub005.mp3",2831616586, 2870409180)
 	PlayFlavor(NPC, "", "", "shrug", 0,0 , Spawn)
    Dialog.AddOption("I am certain it will be fine.")
    Dialog.Start()
end

function Frustrated(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Alack!  The high elves within this village all wisheth special symbols etched into their blades.  The problem is I broketh mine etching tool from overuse and mine lazy apprentice, Boggi, hath not returned with mine new tool.  If thou hath time, couldst thou findeth him and tell him to get back here right away?")
	Dialog.AddVoiceover("voiceover/english/armsdealer_froptub/qey_village04/armsdealerfroptub000.mp3",3893983417, 1741346046)
 	PlayFlavor(NPC, "", "", "pout", 0,0 , Spawn)
    Dialog.AddOption("I`m not too busy at the moment.  I`ll see if I can find him for you.", "Boggi")
    Dialog.AddOption("Best of luck with all that.")
    Dialog.Start()
end

function Delivery3(NPC, Spawn)
    SetStepComplete(Spawn,EtchingTool , 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Great!  Now I canst complete these orders.  Prithee, accept these meager coins in payment for thine effort.")
	Dialog.AddVoiceover("voiceover/english/armsdealer_froptub/qey_village04/armsdealerfroptub002.mp3",3509055396, 574937181)
 	PlayFlavor(NPC, "", "", "thanks", 0,0 , Spawn)
    Dialog.AddOption("Thank you for the payment.  If I ever need a new weapon I know where to come.")
    Dialog.Start()
end


function Boggi(NPC, Spawn, Quest)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, EtchingTool)
end

function Delivery2(NPC, Spawn)
    SetStepComplete(Spawn, SwordPickup, 1)
end

function Completed(NPC, Spawn)
    SetStepComplete(Spawn,EtchingTool , 2)
    PlayFlavor(NPC, "voiceover/english/armsdealer_froptub/qey_village04/armsdealerfroptub003.mp3", "Tis good having people such as thou in Qeynos. Thou help'th make this city great.", "thank", 3747286321, 1439596688, Spawn)
end
