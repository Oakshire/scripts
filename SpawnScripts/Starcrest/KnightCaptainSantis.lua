--[[
	Script Name	: SpawnScripts/StarcrestCommune/KnightCaptainSantis.lua
	Script Purpose	: Knight-Captain Santis
	Script Author	: Ememjr
	Script Date		: 2017.10.28
	Script Notes	: Restructured entire script to simplify dialog flow, used updated format, and applied lost voiceovers. - Dorbin 06.24.2022
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 9, "InRange", "LeaveRange")
    ProvidesQuest(NPC, 240)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn,11)<0 then        --Faction Check
	PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
    else    
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good day to you.  I've been hearing reports that the Peat Bog isn't safe right now.  I hope you didn't have any trouble if you came in that way.")
	Dialog.AddVoiceover("voiceover/english/knight-captain_santis/qey_village02/captainsantis000.mp3", 284995589, 2677019457)
    if not HasQuest(Spawn,240) and not HasCompletedQuest(Spawn,240)then
    Dialog.AddOption("What kind of trouble is out in the bog?", "Option4")
    end
    if GetQuestStep(Spawn, 5596)==1 then
	Dialog.AddOption("I bring you an urgent message from the Nettleville Garrison.", "Delivered")
    end
    if GetQuestStep(Spawn, 240)==2 then
	Dialog.AddOption("I am happy to report that I have eliminated several Bog Sludges at your request.","Killed")
    end
	Dialog.AddOption("Sorry, I can't help right now.")
	Dialog.Start()
end
end


function InRange(NPC,Spawn)
if GetFactionAmount(Spawn,11)<0 then  --Faction Check
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
else    
     if math.random(1,100)<=70 then
    if not HasQuest(Spawn,240) and not HasCompletedQuest(Spawn,240)then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/knight-captain_santis/qey_village02/100_captain_santis_callout1_19a89b99.mp3", "Have you a moment?  We guards could use your assistance!", "beckon", 1556357717, 1654370636, Spawn)
    end
    end
end
end

function Killed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You are truly valuable to Qeynos.  I'm already receiving optimistic reports that the Bog Sludge are finally under control.  Please accept this reward for a job well done.")
	Dialog.AddVoiceover("voiceover/english/knight-captain_santis/qey_village02/captainsantis003.mp3", 3636963969, 2486393631)
	Dialog.AddOption("It feels good to make the area a little bit safer.","GetReward")
	Dialog.Start()
end


function GetReward(NPC, Spawn)
	SetStepComplete(Spawn, 240, 2)
	PlayFlavor(NPC, "", "", "salute", 0, 0, Spawn)
	FaceTarget(NPC, Spawn)
end


function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The Bog Sludges have swelled in number, spreading like pestilence.  This vermin has become a serious menace to the refugees in that region.  The Sludges must be exterminated for the safety of the people.  I hope you're not too squeamish for such a job.")
	Dialog.AddVoiceover("voiceover/english/knight-captain_santis/qey_village02/captainsantis003.mp3", 3636963969, 2486393631)
	Dialog.AddOption("A few sludges shouldn't be a problem for me.", "Offer")
	Dialog.AddOption("I have NO desire to step foot in that bog.  Sorry.")
	Dialog.Start()
end

function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	Dialog.AddDialog("Let me read that... Ha!  Captain Hastings and his team wish to challenge the Starcrest Garrison to a Phalanx match?  We shall squash them.  Tell him I accept.")
	Dialog.AddVoiceover("voiceover/english/knight-captain_santis/qey_village02/captainsantis004.mp3", 2733227835, 642461041)
	Dialog.AddOption("Phalanx match! I will tell him you accept.","Delivered2")
	Dialog.Start()
end

function Delivered2(NPC, Spawn)
	SetStepComplete(Spawn, 5596, 1)
end

function Offer(NPC,Spawn)
	OfferQuest(NPC, Spawn, 240)
end