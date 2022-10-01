--[[
    Script Name    : SpawnScripts/IsleRefuge1/Vladiminn.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 02:09:03
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local Scout2 = 5730
local Scout3 = 5737
local Scout4 = 5741
local Scout5 = 5745
local Scout6 = 5753

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 12, "InRange", "LeaveRange")
    ProvidesQuest(NPC, Scout3)
    ProvidesQuest(NPC, Scout4)
    ProvidesQuest(NPC, Scout5)
    ProvidesQuest(NPC, Scout6)
    CastSpell(NPC,8231)
end

function InRange(NPC,Spawn)
    if HasQuest(Spawn,Scout2)then	
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"","You there, you look like a scout.  That slight shift of the eyes and careful evaluation of your surroundings...  Yes, definitely a scout.  Please, why don't you come and chat with me?","hello",0,0, Spawn)
    elseif not HasQuest(Spawn, Scout4) and HasCompletedQuest(Spawn,Scout3) and not HasCompletedQuest(Spawn,Scout4) then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/vladiminn/tutorial_island02_fvo_scoutq2.mp3","Ahh, it's you there!  Would you help me out again?","bye",4065853934,2005213688, Spawn)
    elseif not HasQuest(Spawn, Scout5) and HasCompletedQuest(Spawn,Scout4) and not HasCompletedQuest(Spawn,Scout5) then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"","Just in time! You're back in time to help me out with something!","hello",0,0, Spawn)
end
end

function hailed(NPC, Spawn)
if GetClass(Spawn)== 0 then
     PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_2_1032.mp3","Hey!  I'm quite certain we could make use of you here, but first you have to register with Garven right away.  That's it, stop staring and go back to the beach.","point",0,0, Spawn)
else   
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You weathered the seas well, but are you fit enough to help on the island?")
	Dialog.AddVoiceover("voiceover/english/vladiminn/tutorial_island02/vladiminn000.mp3", 1539680326, 2349388024)
    if not HasQuest(Spawn, Scout3) and not HasCompletedQuest(Spawn, Scout3) and HasCompletedQuest(Spawn,Scout2) or HasQuest(Spawn,Scout2) then
	Dialog.AddOption("Oh I am, I am indeed...","Quest3Start")
    end
    if GetQuestStep(Spawn,Scout3)==2 then
	Dialog.AddOption("I've brought back enough meat to feed quite a few refugees.","Quest3Turnin")
    end       
    if GetQuestStep(Spawn,Scout4)==2 then
	Dialog.AddOption("I've got the numbers for you, here are the notes I've made.","Quest4Turnin")
    end     
    if GetQuestStep(Spawn,Scout5)==2 then
	Dialog.AddOption("I've got what you needed from the wolves.","Quest5Turnin")
    end 
    if GetQuestStep(Spawn,Scout6)==3 then
	Dialog.AddOption("It is done.  The orc leader is no more.","Quest6Turnin")
    end
    if not HasQuest(Spawn, Scout4) and HasCompletedQuest(Spawn,Scout3) and not HasCompletedQuest(Spawn,Scout4) then
	Dialog.AddOption("I wouldn't mind helping out again.","Quest4Start")
	end
    if not HasQuest(Spawn, Scout5) and HasCompletedQuest(Spawn,Scout4) and not HasCompletedQuest(Spawn,Scout5) then
	Dialog.AddOption("I was fine for the first two bits, let's get on with this.","Quest5Start")
	end
    if not HasQuest(Spawn, Scout6) and HasCompletedQuest(Spawn,Scout5) and not HasCompletedQuest(Spawn,Scout6) then
    Dialog.AddOption("Are you certain you could not use my help?","Quest6Start")	
	end
    if HasCompletedQuest(Spawn, Scout6) then
    Dialog.AddOption("Fit as I can be thanks you.  I must prepare for my voyage off this island.  Farewell, Vladiminn.")
    end
	Dialog.AddOption("Fit, but currently unwilling.")
	Dialog.Start()
end
end


function respawn(NPC)
	spawn(NPC)
end


--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 3
--------------------------------------------------------------------------------------------------------------------------------


function Quest3Start(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Goblins destroyed our supply lines with repeated attacks, and some strange malady has stricken the deer on the island.  Fortunately, the priests found a cure for the strange disease.  Now we need help re-stocking our depleted stores.")
	Dialog.AddVoiceover("voiceover/english/vladiminn/tutorial_island02/vladiminn001.mp3", 320173863, 4078504276)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("I'll help, perhaps it will help to repay for the voyage.","Quest3Offer")	
    Dialog.AddOption("That is unfortunate, but I must be going.")	
	Dialog.Start()

end


function Quest3Offer(NPC,Spawn)
    OfferQuest(NPC,Spawn,Scout3)
    FaceTarget(NPC, Spawn)

end

function Quest3Turnin(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("I'm pleased to hear of your success.  I had no doubts... well, well what I mean is that uh we, 'we' were getting concerned about how we would feed our people.  I asked Banker Vertbridge to put a pair of boots in your bank. These boots shall keep your feet warm and your footsteps silent while stalking prey.")
	Dialog.AddVoiceover("voiceover/english/vladiminn/tutorial_island02/vladiminn003.mp3", 426623345,2089912142)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("Thank you, Vladiminn, I'm sure they'll be wonderful.")	
	Dialog.Start()
     if not HasItem(Spawn,158693) then
    SummonItem (Spawn, 158693, 1, "bank", 1)
    end
    SetStepComplete(Spawn,Scout3,2)
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 4
--------------------------------------------------------------------------------------------------------------------------------

function Quest4Start(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Excellent!  Let's put those scout skills to test.  I've been asked to gather some preliminary scouting information on the goblin camp but my duties here with the refugees prevent me from leaving my post.")
	Dialog.AddVoiceover("voiceover/english/vladiminn/tutorial_island02/vladiminn004.mp3", 1528224948,1863420311)
    PlayFlavor(NPC, "", "", "scheme", 0, 0, Spawn)
    Dialog.AddOption("And that's of course where I come in.","Quest4SOffer")	
    Dialog.AddOption("Going to the goblin camp? No way!")	
	Dialog.Start()
end

function Quest4SOffer(NPC,Player)
    OfferQuest(NPC,Player,Scout4)
    FaceTarget(NPC, Spawn)
end

function Quest4Turnin(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Your notes show a frightening number of goblins. I never imagined facing such a battalion of ghouls.  Destroying the vicious beasts will be a daunting task indeed.  You've done well adventurer.  As reward, take these new leggings to replace your tattered and worn pair.")
	Dialog.AddVoiceover("voiceover/english/vladiminn/tutorial_island02/vladiminn006.mp3", 394325845,2096678701)
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    Dialog.AddOption("Thank you... if they're as comfortable as the boots, I'll be in great shape.")	
	Dialog.Start()
    SetStepComplete(Spawn,Scout4,2)
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 5
--------------------------------------------------------------------------------------------------------------------------------

function Quest5Start(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Anxious, are we?  Before you get too excited I should tell you this next task is dangerous, far more dangerous than previous tasks.  Are you willing to risk your life for your fellow refugees?  I'll reward you handsomely at the end of your duty but an award is of no use to a dead man.  I ask you now, are you up for the task?")
	Dialog.AddVoiceover("voiceover/english/vladiminn/tutorial_island02/vladiminn007.mp3", 2208035850,4224224811)
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    Dialog.AddOption("I'm up for anything.","Quest5Offer")	
    Dialog.AddOption("Going to the goblin camp? No way!")	
	Dialog.Start()
end

function Quest5Offer(NPC,Player)
    OfferQuest(NPC,Player,Scout5)
    FaceTarget(NPC, Spawn)
end

function Quest5Turnin(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Let me take a look at these for a moment.  Hmm... interesting... I've not seen collars like this since... by Thule, it's worse than I'd expected!  Well, it looks like your part in this is at an end. I did promise you a reward though.  Take this tunic, it will go well with your leggings and boots.")
	Dialog.AddVoiceover("voiceover/english/vladiminn/tutorial_island02/vladiminn009.mp3", 125664112,3235575096)
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    Dialog.AddOption("Are you certain you could not use my help?","Quest6Start")	
    Dialog.AddOption("Best of luck piecing this puzzle together.")	
	Dialog.Start()
    SetStepComplete(Spawn,Scout5,2)
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 6
--------------------------------------------------------------------------------------------------------------------------------
function Quest6Start(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Your reports have clarified the situation.  The pieces fit, and it makes perfect sense...")
	Dialog.AddVoiceover("voiceover/english/vladiminn/tutorial_island02/vladiminn010.mp3", 1457997083,1132195032)
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    Dialog.AddOption("What makes perfect sense?","Quest6StartB")	
	Dialog.Start()
end

function Quest6StartB(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("I don't want panic our people, but I believe an orc is responsible for the chaos on the island.  No mere goblin chief is capable of creating such fury and frenzy in an entire camp, but an orc is certainly capable of creating such turmoil.")
	Dialog.AddVoiceover("voiceover/english/vladiminn/tutorial_island02/vladiminn011.mp3", 472635060,3815131652)
    PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
    Dialog.AddOption("[continue]","Quest6Offer")	
    Dialog.AddOption("I've heard enough.  I want off this island!")	
	Dialog.Start()
end

function Quest6Offer(NPC,Player)
    OfferQuest(NPC,Player,Scout6)
    FaceTarget(NPC, Spawn)
end

function Quest6Turnin(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("I commend you on your progress.  Your talents are too valuable to waste on this island.  Please accept this final gift to help on your world journey.  Whatever city you choose to reside shall be lucky to have you as its citizen.  Farewell adventurer!")
	Dialog.AddVoiceover("voiceover/english/vladiminn/tutorial_island02/vladiminn013.mp3", 1409277433,3036762776)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("Thank you.  I'll put my skills to good use.")	
	Dialog.Start()
    SetStepComplete(Spawn,Scout6,3)
end