--[[
	Script Name	: SpawnScripts/ElddarGrove/MasterArcherNightbow.lua
	Script Purpose	: Master Archer Nightbow <Bowyer>
	Script Author	: Dorbin
	Script Date	: 2022.05.08
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"

local arrows = 5521
local deposit = 5523
local Priest1 = 5772

function spawn(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
ProvidesQuest(NPC,deposit)
end

function InRange(NPC,Spawn)
 --   if not HasCompletedQuest (Spawn, deposit) and not HasQuest (Spawn, deposit) then 
 	if MakeRandomInt(1, 100) <= 60 and GetFactionAmount(Spawn,11)>0 then
    	FaceTarget(NPC, Spawn)
	    choice = math.random(1,2)
	    if choice == 1 then
	    PlayFlavor(NPC, "voiceover/english/master_archer_nightbow/qey_elddar/100_merchant_halfelf_nightbow_callout1_f29bf504.mp3", "Welcome to In-Range. How can I oblige you, traveler?", "", 514837561, 1511494370, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/master_archer_nightbow/qey_elddar/100_merchant_halfelf_nightbow_multhail2_8e9f4cb0.mp3", "What is it you need, traveler?", "", 4065639405, 4258763812, Spawn)
	    end
    end
end
--end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
    AddPrimaryEntityCommand(NPC,"hail")
    choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/service/banker/halfelf_banker_service_evil_1_notcitizen_gf_c0c992e7.mp3", "I'm afraid your business is not welcome here.  So, please go away!", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_good_1/ft/service/armorsmith/halfelf_armorsmith_service_good_1_notcitizen_gf_5f06e404.mp3", "Only those who swear alegence with Qeynos can purchase their goods here!", "heckno", 1584866727, 581589457, Spawn)
        end
    else
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Welcome to In-Range. If you need help with anything, just let me know.")
	Dialog.AddVoiceover("voiceover/english/master_archer_nightbow/qey_elddar/armsdealernightbow.mp3",  416492633, 699282975)
    PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
    if HasCompletedQuest(Spawn, arrows) and not HasQuest(Spawn,deposit) and not HasCompletedQuest(Spawn, deposit) then
	Dialog.AddOption("How is business?", "Delivery")
    end
    if HasQuest(Spawn,Priest1) and GetQuestStepProgress(Spawn,Priest1,1)==0 then
    Dialog.AddOption("I hear you have lately been injured.", "Priest")
    end       
    if GetQuestStep(Spawn,arrows)==1 then
    Dialog.AddOption("I'm here to pick up arrows for Patrolman Fanthis.", "Pickup")
    end	
    if GetQuestStep(Spawn,deposit)==2 then
    Dialog.AddOption("Here is the receipt for your deposit to the Qeynos Exchange.", "Delivered")
    end
    Dialog.AddOption("I appreciate it.  Thank you.")
	Dialog.Start()
    end
end

function Pickup(NPC, Spawn)
    SetStepComplete(Spawn,arrows, 1)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Perfect!  I've actually had these arrows ready for the better part of a week now.  I'm surprised he hasn't come by to pick them up earlier.  Please do tell Fanthis to be more punctual next time he orders from me.")
	Dialog.AddVoiceover("voiceover/english/master_archer_nightbow/qey_elddar/armsdealernightbow000.mp3", 2435179288, 2250697055)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("I'll let him know.")
	Dialog.Start()
end	

    
  function Delivery(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You were the one who brought those arrows back to Fanthis, correct?  I would never forget a face like yours.  If you'd be willing, I need my deposit taken over to the Qeynos Exchange in Qeynos Harbor.  If Fanthis trusted you with his errand I'm certain you'll do fine with this one.")
	Dialog.AddVoiceover("voiceover/english/master_archer_nightbow/qey_elddar/armsdealernightbow001.mp3", 3825875299, 2066482180)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Sure. I'll head to the Qeynos Exchange for you.", "Delivery2")
	Dialog.AddOption("That is too far out of my way. Sorry.")
	Dialog.Start()
end	  

function Delivery2(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,deposit)
    end
    
 function Delivered(NPC, Spawn)
    SetStepComplete(Spawn,deposit, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I hope Grisvane didn't give you any trouble.  Sometimes he's a bit gruff with those he doesn't know.  Please allow me to pay you for your trouble.  Perhaps we will do other business in the future.")
	Dialog.AddVoiceover("voiceover/english/master_archer_nightbow/qey_elddar/armsdealernightbow003.mp3", 1662759058, 2206697138)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
	Dialog.AddOption("It was no problem.")
	Dialog.Start()
end	

 function Priest(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Injured?  Nonsense!  I'm fit as a falchion!  Well ... except for this little splinter in my finger here.  Smarts like a devil, it does.")
	Dialog.AddVoiceover("voiceover/english/master_archer_nightbow/qey_elddar/armsdealernightbow004.mp3", 777229878, 3203644005)
    PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
	Dialog.AddOption("Let me see.  That doesn't look like a little splinter at all!","Priesta")
	Dialog.Start()
end	

 function Priesta(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, it's nothing ... although it wedged itself under the nail pretty good.  Happens all the time in my line of work.  I tried to get it out myself the other day, and only made things worse.  It's starting to look a bit funny.  See the green color?")
	Dialog.AddVoiceover("voiceover/english/master_archer_nightbow/qey_elddar/armsdealernightbow006.mp3", 3334031312, 952690457)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddOption("Madam, your finger is severely infected!  Please, let me help you.","Priestb")
	Dialog.Start()
end	

 function Priestb(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Infected?  Is it serious?  Well, you are an adept, so I guess you would know.  Can anything be done?")
	Dialog.AddVoiceover("voiceover/english/master_archer_nightbow/qey_elddar/armsdealernightbow007.mp3", 625347903, 1608099602)
    PlayFlavor(NPC, "", "", "confused", 0, 0, Spawn)
	Dialog.AddOption("In the name of the gods, I will heal you.","Priestc")
	Dialog.Start()
end	

 function Priestc(NPC, Spawn)
    SetStepComplete(Spawn,Priest1,1)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The splinter ... it, it's gone!  The nail is whole again!  How did you do that?  I must show my thanks!")
	Dialog.AddVoiceover("voiceover/english/master_archer_nightbow/qey_elddar/armsdealernightbow008.mp3", 215150336, 479717582)
    PlayFlavor(NPC, "", "", "boggle", 0, 0, Spawn)
	Dialog.AddOption("You may show your thanks by offering a prayer to the gods.  They are the ones who have truly healed you.  Good day.")
	Dialog.Start()
	ApplySpellVisual(NPC,58)
	CastSpell(Spawn,53)
end	