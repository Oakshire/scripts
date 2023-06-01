--[[
    Script Name    : SpawnScripts/IsleRefuge1/GarvenTralk.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.05 05:09:08
    Script Purpose : Garven Tralk's dialog for commoner's and first quest on Isle of Refuge
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local IsleIntro = 5725

local FighterGI = 5726
local PriestGI = 5727
local MageGI = 5728
local ScoutGI = 5729

local Fighter2 = 5731
local Priest2 = 5732
local Mage2 = 5733
local Scout2 = 5730


function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
ProvidesQuest(NPC,FighterGI)
ProvidesQuest(NPC,PriestGI)
ProvidesQuest(NPC,MageGI)
ProvidesQuest(NPC,ScoutGI)

ProvidesQuest(NPC,Fighter2)
ProvidesQuest(NPC,Priest2)
ProvidesQuest(NPC,Mage2)
ProvidesQuest(NPC,Scout2)
end



function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if HasQuest(Spawn,IsleIntro) and not HasCompletedQuest(Spawn,IsleIntro) then
    Dialog1(NPC,Spawn)--CLASS SELECTION
elseif HasCompletedQuest(Spawn,IsleIntro) and
    not HasQuest(Spawn, FighterGI) and not HasCompletedQuest(Spawn, FighterGI) 
    and not HasQuest(Spawn, PriestGI) and not HasCompletedQuest(Spawn, PriestGI) 
    and not HasQuest(Spawn, MageGI) and not HasCompletedQuest(Spawn, MageGI) 
    and not HasQuest(Spawn, ScoutGI) and not HasCompletedQuest(Spawn, ScoutGI) then
    Dialog2(NPC,Spawn)--START OF GRUTTOOTH INVASION (DIALOG1 LEADS TO THIS ALSO)

elseif GetQuestStep(Spawn, FighterGI)~=3 and  HasCompletedQuest(Spawn,IsleIntro) and not HasCompletedQuest(Spawn, FighterGI)   --IN BETWEEN STEPS
    and GetQuestStep(Spawn, PriestGI)~=3 and HasCompletedQuest(Spawn,IsleIntro) and not HasCompletedQuest(Spawn, PriestGI)  
    and GetQuestStep(Spawn, MageGI)~=3  and HasCompletedQuest(Spawn,IsleIntro) and not HasCompletedQuest(Spawn, MageGI) 
    and GetQuestStep(Spawn, ScoutGI)~=3 and  HasCompletedQuest(Spawn,IsleIntro)and not HasCompletedQuest(Spawn, ScoutGI)  then
	PlayFlavor(NPC,"voiceover/english/garven_tralk/tutorial_island02/garventralk009.mp3", "I know you may think this is none of your affair, but trust me, if you want to get off this island alive and well you have no choice. Come back to me after you've defeated at least one Gruttooth invader and maybe I can help you out.", "nod", 3552772782, 395294110, Spawn, 0) --FINAL HAIL

elseif GetQuestStep(Spawn, FighterGI)==3 then --FINAL GRUTTOOTH INVASION STEP & IF PLAYER DOES NOT HAVE NEXT QUEST
    Dialog3F(NPC,Spawn)
elseif not HasQuest(Spawn, Fighter2) and HasCompletedQuest(Spawn, FighterGI) and not HasCompletedQuest(Spawn, Fighter2) then
     Dialog3F(NPC,Spawn)
   
elseif GetQuestStep(Spawn, PriestGI)==3 then
    Dialog3P(NPC,Spawn)
elseif not HasQuest(Spawn, Priest2) and HasCompletedQuest(Spawn, PriestGI) and not HasCompletedQuest(Spawn, Priest2) then
     Dialog3P(NPC,Spawn)
     
elseif GetQuestStep(Spawn, MageGI)==3 then
    Dialog3M(NPC,Spawn)
elseif not HasQuest(Spawn, Mage2) and HasCompletedQuest(Spawn, MageGI)  and not HasCompletedQuest(Spawn, Mage2) then
     Dialog3M(NPC,Spawn)
     
elseif GetQuestStep(Spawn, ScoutGI)==3 then
    Dialog3S(NPC,Spawn)
elseif not HasQuest(Spawn, Scout2) and HasCompletedQuest(Spawn, ScoutGI) and not HasCompletedQuest(Spawn, Scout2) then
     Dialog3S(NPC,Spawn)
     
else    
 --FINAL HAIL
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("If we don't get refugees with some degree of skill soon we'll have to pull out of here.")
	Dialog.AddVoiceover("voiceover/english/garven_tralk/tutorial_island02/garventralk001.mp3",1755275352, 190331174)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Good luck with that.")
	Dialog.Start()

end
end

function InRange(NPC,Spawn)
    if HasQuest(Spawn,IsleIntro) and not HasCompletedQuest (Spawn,IsleIntro) then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/garven_tralk/tutorial_island02_fvo_onaoienter.mp3", "You there! Stop standing around like a drunken sailor and get over here!", "beckon", 4010256509, 3318344012, Spawn, 0)
end    
end

function respawn(NPC)
	spawn(NPC)
end







function Dialog1(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'll make this quick because we have no time for pleasantries.  Welcome to the Isle of Refuge.  Name and profession please?")
	Dialog.AddVoiceover("voiceover/english/garven_tralk/tutorial_island02/garventralk002.mp3", 1422110417, 3383506524)
	Dialog.AddOption("My name is "..GetName(Spawn)..".  I am a Fighter.", "Fighter")
	Dialog.AddOption("My name is "..GetName(Spawn)..".  I am a Priest.", "Priest")
	Dialog.AddOption("My name is "..GetName(Spawn)..".  I am a Mage.", "Mage")
	Dialog.AddOption("My name is "..GetName(Spawn)..".  I am a Scout.", "Scout")
	Dialog.Start()
end

function Scout(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A scout, eh?  Good. We can use someone with a cool head and a keen eye with all the goblins causing trouble around here.  As a scout, you'll use your stealth and speed to sneak up on opponents and take them out quickly.  Watch yourself though, because if you're not quick enough, a good strong blow will certainly take its toll on you.  You think you can handle that?")
	Dialog.AddVoiceover("voiceover/english/garven_tralk/tutorial_island02/garventralk006.mp3",3084961366, 1162504968)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Yes.", "YesS")
	Dialog.AddOption("No, I don't think I'm a scout after all. ", "No")
	Dialog.Start()
end

function YesS(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SetStepComplete(Spawn,IsleIntro,1)
	SetAdventureClass(Spawn,31)
    SendMessage(Spawn, "Congratulations!  You have chosen the path of the Scout.","yellow")

    HarvestSkills(NPC,Spawn) 
    ScoutSkills(NPC,Spawn)
    
    OfferQuest(NPC,Spawn,ScoutGI)
	if GetLevel(Spawn)<3 then
	SetPlayerLevel(Spawn,3)
	end
end

--PRIEST
function Priest(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A priest, eh?  Well, I'm not a religious man myself, but it can't hurt to have a little divine wrath on our side with all these goblins about.  As a priest, your first duty should be healing and blessing your comrades using divine power.")
	Dialog.AddVoiceover("voiceover/english/garven_tralk/tutorial_island02/garventralk005.mp3",3178428692, 3357533426)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddOption("Yes.", "PContinue")
	Dialog.AddOption("No, I don't think I'm a priest after all. ", "No")
	Dialog.Start()
end


function PContinue(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Though, most priests I've seen are no strangers to combat, and you should be able to take a pretty good beating and walk away.  You think you can handle that?")
	Dialog.AddVoiceover("voiceover/english/garven_tralk/tutorial_island02/garventralk016.mp3",1887135280, 3302385767)
	Dialog.AddOption("Yes.", "YesP")
	Dialog.AddOption("No, I don't think I'm a priest after all. ", "No")
	Dialog.Start()
end

function YesP(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SetAdventureClass(Spawn,11)
 	SetStepComplete(Spawn,IsleIntro,1)
    HarvestSkills(NPC,Spawn)
    PriestSkills(NPC,Spawn)
    
    SendMessage(Player, "Congratulations!  You have chosen the path of the Priest.","yellow")
	OfferQuest(NPC,Spawn,PriestGI)
	if GetLevel(Spawn)<3 then
	SetPlayerLevel(Spawn,3)
	end
end


function PContinue2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	SetStepComplete(Spawn,IsleIntro,1)
	SetAdventureClass(Spawn,11)
	Dialog.AddDialog("I know you may think this is none of your affair, but trust me, if you want to get off this island alive and well you have no choice. Come back to me after you've defeated at least one Gruttooth invader and maybe I can help you out.")
	Dialog.AddVoiceover("voiceover/english/garven_tralk/tutorial_island02/garventralk009.mp3",3552772782, 395294110)
	PlayFlavor(NPC, "", "", "shrug", 0, 0, Spawn)
	Dialog.AddOption("Very well.")
	Dialog.Start()
end


--MAGE
function Mage(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A mage, eh?  Well, I suppose we can use another finger wiggler to blast those goblins.  As a mage, you'll want to keep out of harm's way, casting spells at your opponents from afar while using your skills to bolster the strengths of your comrades.  You think you can handle that?")
	Dialog.AddVoiceover("voiceover/english/garven_tralk/tutorial_island02/garventralk004.mp3",4064296698, 2344383493)
	PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	Dialog.AddOption("Yes.", "YesM")
	Dialog.AddOption("No, I don't think I'm a mage after all. ", "No")
	Dialog.Start()
end

function YesM(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SetStepComplete(Spawn,IsleIntro,1)
    SendMessage(Spawn, "Congratulations!  You have chosen the path of the Mage.","yellow")
	SetAdventureClass(Spawn,21)
    HarvestSkills(NPC,Spawn)
    MageSkills(NPC,Spawn)

    OfferQuest(NPC,Spawn,MageGI)
	if GetLevel(Spawn)<3 then
	SetPlayerLevel(Spawn,3)
	end
end

--FIGHTER
function Fighter(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A fighter, eh?  Good. We could always use another blade to stick it to them goblins.  As a fighter, you'll be in the thick of battle most of the time protecting your comrades from harm and relying on your equipment and combat skills to see you through it.  Are you sure you can handle that?")
	Dialog.AddVoiceover("voiceover/english/garven_tralk/tutorial_island02/garventralk003.mp3",2483812804, 239361223)
	PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
	Dialog.AddOption("Yes.", "YesF")
	Dialog.AddOption("No, I don't think I'm a fighter after all. ", "No")
	Dialog.Start()
end

function YesF(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SetStepComplete(Spawn,IsleIntro,1)
	SetAdventureClass(Spawn,1)
    SendMessage(Spawn, "Congratulations!  You have chosen the path of the Fighter.","yellow")
    
    HarvestSkills(NPC,Spawn)
    FighterSkills(NPC,Spawn)
    
    OfferQuest(NPC,Spawn,FighterGI)
	if GetLevel(Spawn)<3 then
	SetPlayerLevel(Spawn,3)
	end
end


function No(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddDialog("Yes, I didn't think you looked the type.  So what is your profession?")
	Dialog.AddOption("My name is "..GetName(Spawn)..".  I am a Fighter.", "Fighter")
	Dialog.AddOption("My name is "..GetName(Spawn)..".  I am a Priest.", "Priest")
	Dialog.AddOption("My name is "..GetName(Spawn)..".  I am a Mage.", "Mage")
	Dialog.AddOption("My name is "..GetName(Spawn)..".  I am a Scout.", "Scout")
	Dialog.Start()

end

function Dialog2(NPC,Spawn)
			if GetClass(Spawn) == 1 then
				OfferQuest(NPC, Spawn,FighterGI)
			elseif GetClass(Spawn) == 31 then
				OfferQuest(NPC, Spawn,ScoutGI)
			elseif GetClass(Spawn) == 21 then
				OfferQuest(NPC, Spawn,MageGI)
			elseif GetClass(Spawn) == 11 then
				OfferQuest(NPC, Spawn,PriestGI)
			end
end


function Dialog3F(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well done, you might make it off this island after all.  I'll tell you what.  Take this pair of gloves for your help, you're sure to need all the protection you can get for the duration of your stay here.  Now if you actually want to get off this island and see one of the big cities one day, I suggest you talk to Braksan Steelforge.  He's in charge of all the new fighters and can be found at the forge in town.  Good luck to you.")
	Dialog.AddVoiceover("voiceover/english/garven_tralk/tutorial_island02/garventralk011.mp3",2701236419, 2048899466)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Thanks.", "thanksF")
	Dialog.Start()
end

function Dialog3P(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	if GetQuestStep(Spawn, PriestGI)==3 then
	SetStepComplete(Spawn,PriestGI,3)
	end
	Dialog.AddDialog("Well done, you might make it off this island after all.  I'll tell you what.  Take this pair of gloves for your help, you're sure to need all the protection you can get for the duration of your stay here.  Now if you actually want to get off this island and see one of the big cities one day, I suggest you talk to Nathinia Sparklebright.  She's in charge of all the new priests and can usually be found meditating by the fountain in town.  Good luck to you.")
	Dialog.AddVoiceover("voiceover/english/garven_tralk/tutorial_island02/garventralk013.mp3",2629138790, 804939192)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Thanks.", "thanksP")
	Dialog.Start()
end

function Dialog3M(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	if GetQuestStep(Spawn, MageGI)==3 then
	SetStepComplete(Spawn,MageGI,3)
	end
	Dialog.AddDialog("Well done, you might make it off this island after all.  I'll tell you what.  Take this pair of gloves for your help, you're sure to need all the protection you can get for the duration of your stay here.  Now if you actually want to get off this island and see one of the big cities one day, I suggest you talk to Mizan Vaeoulin.  He's in charge of all the new mages and can be found inside the wizard tower in town.  Good luck to you.")
	Dialog.AddVoiceover("voiceover/english/garven_tralk/tutorial_island02/garventralk012.mp3", 1248305011, 3683529392)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Thanks.", "thanksM")
	Dialog.Start()
end

function Dialog3S(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	if GetQuestStep(Spawn, ScoutGI)==3 then
	SetStepComplete(Spawn,ScoutGI,3)
	end
	Dialog.AddDialog("Well done, you might make it off this island after all.  I'll tell you what.  Take this pair of gloves for your help, you're sure to need all the protection you can get for the duration of your stay here.  Now if you actually want to get off this island and see one of the big cities one day, I suggest you talk to Vladiminn.  That wily ratonga is in charge of all the new scouts and can usually be found at the archery range in town.  Good luck to you.")
	Dialog.AddVoiceover("voiceover/english/garven_tralk/tutorial_island02/garventralk014.mp3", 3569991620, 129801619)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Thanks.", "thanksS")
	Dialog.Start()
end

function thanksF(NPC,Spawn)
	if GetQuestStep(Spawn, FighterGI)==3 then
	SetStepComplete(Spawn,FighterGI,3)
	end
    if not HasQuest(Spawn,Fighter2) and not HasCompletedQuest(Spawn,Fighter2)then
	    OfferQuest(NPC, Spawn,Fighter2)
	end
end

function thanksP(NPC,Spawn)
	if GetQuestStep(Spawn, PriestGI)==3 then
	SetStepComplete(Spawn,PriestGI,3)
	end
    if not HasQuest(Spawn,Priest2) and not HasCompletedQuest(Spawn,Priest2)then
	    OfferQuest(NPC, Spawn,Priest2)
	end
end

function thanksM(NPC,Spawn)
	if GetQuestStep(Spawn, MageGI)==3 then
	SetStepComplete(Spawn,MageGI,3)
	end
    if not HasQuest(Spawn,Mage2) and not HasCompletedQuest(Spawn,Mage2)then
	    OfferQuest(NPC, Spawn,Mage2)
	end
end

function thanksS(NPC,Spawn)
	if GetQuestStep(Spawn, ScoutGI)==3 then
	SetStepComplete(Spawn,ScoutGI,3)
	end
    if not HasQuest(Spawn,Scout2) and not HasCompletedQuest(Spawn,Scout2)then
	    OfferQuest(NPC, Spawn,Scout2)
	end
end

-----------------------------------------------------------
function FighterSkills(NPC,Spawn)
   local level = GetLevel(Spawn)*5

if not HasSkill(Spawn, 1408356869) then -- Martial
    AddSkill(Spawn, 1408356869,1,level)
end
 if not HasSkill(Spawn, 2897193374) then -- Light Armor
    AddSkill(Spawn, 2897193374,1,level)
end
if not HasSkill(Spawn, 3421494576) then -- Crushing
    AddSkill(Spawn, 3421494576,1,level)
end
if not HasSkill(Spawn, 418532101) then -- Slashing
    AddSkill(Spawn, 418532101,1,level)
end
if  HasSkill(Spawn, 540022425) then -- Parry
    RemoveSkill(Spawn, 540022425)
end
if not HasSkill(Spawn, 1852383242) then -- Dual Wield
    AddSkill(Spawn, 1852383242,1,level)
end
if not HasSkill(Spawn, 2638198038) then -- Focus
    AddSkill(Spawn, 2638198038,1,level)
end
if HasSkill(Spawn, 540022425) then -- Parry
    RemoveSkill(Spawn, 540022425)
end
--WEAPON SKILLS
if not HasSkill(Spawn, 4037812502) then -- Buckler
    AddSkill(Spawn, 4037812502,1,level)
end
if not HasSkill(Spawn, 3173504370) then -- Roundshield
    AddSkill(Spawn, 3173504370,1,level)
end
if not HasSkill(Spawn, 2476073427) then -- Axe
    AddSkill(Spawn, 2476073427,1,level)
end
if not HasSkill(Spawn, 2954459351) then -- Great Axe
    AddSkill(Spawn, 2954459351,1,level)
end
if not HasSkill(Spawn, 1696217328) then -- Sword
    AddSkill(Spawn, 1696217328,1,level)
end
if not HasSkill(Spawn, 2292577688) then -- Great Sword
    AddSkill(Spawn, 2292577688,1,level)
end
if not HasSkill(Spawn, 770311065) then -- Mace
    AddSkill(Spawn, 770311065,1,level)
end
if not HasSkill(Spawn, 554333641) then -- Hammer
    AddSkill(Spawn, 554333641,1,level)
end
if not HasSkill(Spawn, 1653482350) then -- Great Hammer
    AddSkill(Spawn, 1653482350,1,level)
end
if not HasSkill(Spawn, 3180399725) then -- Staff(2h)
    AddSkill(Spawn, 3180399725,1,level)
end
end


------------------------------------------------------------
function PriestSkills(NPC,Spawn)
   local level = GetLevel(Spawn)*5

if not HasSkill(Spawn, 2463145248) then -- Inspirations
    AddSkill(Spawn, 2463145248,1,level)
end
 if not HasSkill(Spawn, 2897193374) then -- Light Armor
    AddSkill(Spawn, 2897193374,1,level)
end
if not HasSkill(Spawn, 3421494576) then -- Crushing
    AddSkill(Spawn, 3421494576,1,level)
end
if  HasSkill(Spawn, 540022425) then -- Parry
    RemoveSkill(Spawn, 540022425)
end

--CASTING SKILLS
if not HasSkill(Spawn, 613995491) then -- Disruption
    AddSkill(Spawn, 613995491,1,level)
end
if not HasSkill(Spawn, 366253016) then -- Ministration
    AddSkill(Spawn, 366253016,1,level)
end
if not HasSkill(Spawn, 3587918036) then -- Ordination
    AddSkill(Spawn, 3587918036,1,level)
end
if not HasSkill(Spawn, 882983852) then -- Subjugation
    AddSkill(Spawn, 882983852,1,level)
end
if not HasSkill(Spawn, 2638198038) then -- Focus
    AddSkill(Spawn, 2638198038,1,level)
end

--WEAPON SKILLS
if not HasSkill(Spawn, 4037812502) then -- Buckler
    AddSkill(Spawn, 4037812502,1,level)
end
if not HasSkill(Spawn, 545043066) then -- Symbol
    AddSkill(Spawn, 545043066,1,level)
end
if not HasSkill(Spawn, 770311065) then -- Mace
    AddSkill(Spawn, 770311065,1,level)
end
if not HasSkill(Spawn, 554333641) then -- Hammer
    AddSkill(Spawn, 554333641,1,level)
end
if not HasSkill(Spawn, 1653482350) then -- Great Hammer
    AddSkill(Spawn, 1653482350,1,level)
end
if not HasSkill(Spawn, 3180399725) then -- Staff(2h)
    AddSkill(Spawn, 3180399725,1,level)
end
end



--------------------------------------------------------------
function MageSkills(NPC,Spawn)
   local level = GetLevel(Spawn)*5

if not HasSkill(Spawn, 3820670534) then -- Evocations
    AddSkill(Spawn, 3820670534,1,level)
end
if not HasSkill(Spawn, 3048574950) then -- Piercing
    AddSkill(Spawn, 3048574950,31,level)
end
if not HasSkill(Spawn, 3421494576) then -- Crushing
    AddSkill(Spawn, 3421494576,31,level)
end
if HasSkill(Spawn, 540022425) then -- Parry
    RemoveSkill(Spawn, 540022425)
end
--CASTING SKILLS
if not HasSkill(Spawn, 613995491) then -- Disruption
    AddSkill(Spawn, 613995491,1,level)
end
if not HasSkill(Spawn, 366253016,1,level) then -- Ministration
    AddSkill(Spawn, 366253016,1,level)
end
if not HasSkill(Spawn, 3587918036) then -- Ordination
    AddSkill(Spawn, 3587918036,1,level)
end
if not HasSkill(Spawn, 882983852) then -- Subjugation
    AddSkill(Spawn, 882983852,1,level)
end
if not HasSkill(Spawn, 2638198038) then -- Focus
    AddSkill(Spawn, 2638198038,1,level)
end

--WEAPON SKILLS
if not HasSkill(Spawn, 545043066) then -- Symbol
    AddSkill(Spawn, 545043066,1,level)
end
if not HasSkill(Spawn, 887279616) then -- Dagger
    AddSkill(Spawn, 887279616,1,level)
end
if not HasSkill(Spawn, 3180399725) then -- Staff(2h)
    AddSkill(Spawn, 3180399725,1,level)
end
end

---------------------------------------------------------------
function ScoutSkills(NPC,Spawn)
   local level = GetLevel(Spawn)*5

if not HasSkill(Spawn, 1921433074) then -- Reconnaissance
    AddSkill(Spawn, 1921433074,1,level)
end
if not HasSkill(Spawn, 1468243427) then -- Tracking
    AddSkill(Spawn, 1468243427,1,level)
end
if not HasSkill(Spawn, 2200201799) then -- Disarm Trap
    AddSkill(Spawn, 2200201799,1,level)
end
 if not HasSkill(Spawn, 2897193374) then -- Light Armor
    AddSkill(Spawn, 2897193374,1,level)
end
 if not HasSkill(Spawn, 1756482397) then -- Ranged
    AddSkill(Spawn, 1756482397,1,level)
end
if not HasSkill(Spawn, 3048574950) then -- Piercing
    AddSkill(Spawn, 3048574950,1,level)
end
if not HasSkill(Spawn, 418532101,1,level) then -- Slashing
    AddSkill(Spawn, 418532101,1,level)
end
if not HasSkill(Spawn, 1852383242) then -- Dual Wield
    AddSkill(Spawn, 1852383242,1,level)
end
if not HasSkill(Spawn, 2650425026) then -- Thrown Weapon
    AddSkill(Spawn, 2650425026,1,level)
end
if not HasSkill(Spawn, 2638198038) then -- Focus
    AddSkill(Spawn, 2638198038,1,level)
end
if  HasSkill(Spawn, 540022425) then -- Parry
    RemoveSkill(Spawn, 540022425)
end

--WEAPON SKILLS
if not HasSkill(Spawn, 4037812502) then -- Buckler
    AddSkill(Spawn, 4037812502,1,level)
end
if not HasSkill(Spawn, 3173504370) then -- Roundshield
    AddSkill(Spawn, 3173504370,1,level)
end
if not HasSkill(Spawn, 1616998748) then -- Spear
    AddSkill(Spawn, 1616998748,1,level)
end
if not HasSkill(Spawn, 887279616) then -- Dagger
    AddSkill(Spawn, 887279616,1,level)
end
if not HasSkill(Spawn, 1743366740) then -- Bow
    AddSkill(Spawn, 1743366740,1,level)
end
if not HasSkill(Spawn, 2476073427) then -- Axe
    AddSkill(Spawn, 2476073427,1,level)
end
if not HasSkill(Spawn, 770311065) then -- Mace
    AddSkill(Spawn, 770311065,1,level)
end
if not HasSkill(Spawn, 641561514) then -- Rapier
    AddSkill(Spawn, 641561514,1,level)
end
if not HasSkill(Spawn, 1696217328) then -- Sword
    AddSkill(Spawn, 1696217328,1,level)
end
end

--HARVESTING SKILLS
function HarvestSkills(NPC,Spawn)
  local  level = GetLevel(Spawn)*5
if  HasSkill(Spawn, 1970131346) then -- Transmuting
    RemoveSkill(Spawn, 1970131346)
end
if not HasSkill(Spawn, 3659699625) then -- Mining
    AddSkill(Spawn, 3659699625,1,level)
end
if not HasSkill(Spawn, 688591146) then -- Foresting
    AddSkill(Spawn, 688591146,1,level)
end
if not HasSkill(Spawn, 1048513601) then -- Gathering
    AddSkill(Spawn, 1048513601,1,level)
end
if not HasSkill(Spawn, 4158365743) then -- Trapping
    AddSkill(Spawn, 4158365743,1,level)
end
if not HasSkill(Spawn, 2319450178) then -- Fishing
    AddSkill(Spawn, 2319450178,1,level)
end 
end
