--[[
	Script Name	: SpawnScripts/Starcrest/Barrik.lua
	Script Purpose	: Barrik <Weaponsmith>
	Script Author	: Dorbin
	Script Date	: 07.03.2022
	Script Notes	: 
--]]


require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 9, "InRange", "LeaveRange")		
    ProvidesQuest(NPC,5603)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
else
    if  HasCompletedQuest(Spawn,5603)then
	local chance = math.random(0, 100)
	if chance <= 50 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/armsdealer_barrik/qey_village02/100_armsdealer_barrik_multhail1_53e2d8b4.mp3", "Hello there!  Will you be needin' a new sword today?  I forge the best blades this side of the Tranquil Sea... Bested only by the Ironforge smiths. I've no work for you today, perhaps come back another day.", "hello", 1545023828, 4159512414, Spawn)
    end
elseif not HasQuest(Spawn, 5603) and not HasCompletedQuest(Spawn,5603)then
	local chance = math.random(0, 100)
	if chance <= 80 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/armsdealer_barrik/qey_village02/100_armsdealer_barrik_callout_e540a2a3.mp3", "Ahh.  I'm done with this dagger.  And I must say, it looks superb!  I must let her know it's done!... Hello traveler!  Looking to make some coin?", "brandish", 3456524991, 2748253693, Spawn)
    end
    end
end
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
else
Dialog1(NPC, Spawn)
end
end


function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
	Dialog.AddDialog("Hello there!  You look like you could use some adventuring tools!  Step right up and take a look around.")
	Dialog.AddVoiceover("voiceover/english/armsdealer_barrik/qey_village02/armsdealerbarrik000.mp3", 530392014, 3123921025)
 	if not HasCompletedQuest (Spawn, 5603) and not HasQuest (Spawn, 5603) then 
	Dialog.AddOption("I'm looking for work.  Anything around your shop I can help with?","Dialog2")
    end
    if GetQuestStep (Spawn, 5603)==2 then 
	Dialog.AddOption("I delievered the message to Elliasenka.  She was quite rude about it!","Delivered")
    end
    if GetQuestStep (Spawn, 243)==1 then 
	Dialog.AddOption("Farnsbey is busy and sent me to pick up the new axe he ordered. Here is the coin for it.","Pickup")
    end
    Dialog.AddOption("I will.  Thank you.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddDialog("Aye, I do!  As a matter of fact, I just finished a special order for one of the erudite ladies in Starcrest!  If you can deliver her the message that her dagger is ready, I'll add some coin to your purse.")
	Dialog.AddVoiceover("voiceover/english/armsdealer_barrik/qey_village02/armsdealerbarrik001.mp3", 1910272247, 405632050)
	Dialog.AddOption("I could always use some extra coin.", "QuestBegin")
	Dialog.AddOption("Hmm.  Perhaps you can find someone else to deliver your message.")
	Dialog.Start()
end

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, 5603)
end

function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    SetStepComplete(Spawn, 5603, 2)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddDialog("Aye, she was rude when she ordered the blade!  Heh.  It will be a real treat if she graces my shop with her presence again.  Anyway, here's the coin I promised you.")
	Dialog.AddVoiceover("voiceover/english/armsdealer_barrik/qey_village02/armsdealerbarrik003.mp3", 3828124252, 308902726)
    if GetQuestStep (Spawn, 243)==1 then 
	Dialog.AddOption("Oh, Farnsbey asked me to pick the axe he ordered if it is ready.","Pickup")
    end
    Dialog.AddOption("Excellent.  Thank you.")
	Dialog.Start()
end

function Pickup(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    SetStepComplete(Spawn, 243, 1)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
	Dialog.AddDialog("Oh I remember Farnsbey.  Yes, yes, I've got his axe over here.  There ya be.  This sack of money feels about right for the cost!  Wish him well for me.")
	Dialog.AddVoiceover("voiceover/english/armsdealer_barrik/qey_village02/armsdealerbarrik004.mp3", 142083537, 3739068448)
    Dialog.AddOption("I will.  Thank you.")
	Dialog.Start()
end


