--[[
    Script Name    : SpawnScripts/IsleRefuge1/MizanVaeolin.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 02:09:36
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"
local Mage2 = 5733
local Mage3 = 5736
local Mage4 = 5740
local Mage5 = 5744
local Mage6 = 5752
local Research = true

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")
    ProvidesQuest(NPC, Mage3)
    ProvidesQuest(NPC, Mage4)
    ProvidesQuest(NPC, Mage5)
    ProvidesQuest(NPC, Mage6)
    AddTimer(NPC,3000,"CastResearch")
end

function CastResearch(NPC,Spawn)
    if Research == true then
    choice = MakeRandomInt(1,8)
    if choice == 1 then
    CastSpell(NPC,16)
    elseif choice == 2 then
    CastSpell(NPC,19)
    elseif choice == 3 then
    CastSpell(NPC,132)    
    elseif choice == 4 then
    CastSpell(NPC,183)    
    elseif choice == 5 then
    CastSpell(NPC,17)   
    elseif choice == 6 then
    CastSpell(NPC,210011)   
    elseif choice == 7 then
    CastSpell(NPC,62) 
    end
    AddTimer(NPC,4000,"Consideration")
end
    AddTimer(NPC,math.random(24000,32000),"CastResearch")
end

function Consideration(NPC,Spawn)
    choice2 = MakeRandomInt(1,8)
    if choice2 == 1 then
    PlayFlavor(NPC, "", "", "ponder", 0, 0)
    elseif choice2 ==2 then
    PlayFlavor(NPC, "", "", "confused", 0, 0)
    elseif choice2 ==3 then
    PlayFlavor(NPC, "", "", "agree", 0, 0)
    elseif choice2 ==4 then
    PlayFlavor(NPC, "", "", "boggle", 0, 0)
    elseif choice2 ==5 then
    PlayFlavor(NPC, "", "", "sniff", 0, 0)
    elseif choice2 ==6 then
    PlayFlavor(NPC, "", "", "nod", 0, 0)
    elseif choice2 ==7 then
    PlayFlavor(NPC, "", "", "no", 0, 0)
    end
end



function ResetResearch(NPC,Spawn)
    Research = true
--SetTempVariable(NPC,"Research","Yes")
end

function InRange(NPC,Spawn)
if GetClass(Spawn)== 0 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/mizan_vaeoulin/tutorial_island02_fvo_nomage.mp3","You there!  Unregistered refugees are not permitted in this area.  Return to Garven Tralk and register at once.  You'll find him on the beach where you arrived.","no",777511365,1811810491, Spawn)
else
    if HasQuest(Spawn,Mage2)then	
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/mizan_vaeoulin/tutorial_island02_fvo_mageintro.mp3","You there!  You are a wielder of the magic arts, yes?  I have need of your assistance.","",471449740,174970929, Spawn)
    elseif not HasQuest(Spawn, Mage4) and not HasCompletedQuest(Spawn, Mage4) and HasCompletedQuest(Spawn,Mage3) then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/mizan_vaeoulin/tutorial_island02_fvo_mageq2.mp3","Ah, you have returned.  I am in need of your assistance.","nod",2357058615,3609625942, Spawn)
    elseif not HasQuest(Spawn, Mage6) and not HasCompletedQuest(Spawn, Mage5) and HasCompletedQuest(Spawn,Mage6) then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/mizan_vaeoulin/tutorial_island02_fvo_mageq4.mp3","The vile leader of the goblins has been discovered!","nod",1615575534,1155005165, Spawn)
    end

end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    Research = false
    AddTimer(NPC,60000,"ResetResearch",1,Spawn)
if GetClass(Spawn)== 0 then
    PlayFlavor(NPC,"voiceover/english/mizan_vaeoulin/tutorial_island02_fvo_nomage.mp3","You there!  Unregistered refugees are not permitted in this area.  Return to Garven Tralk and register at once.  You'll find him on the beach where you arrived.","scold",777511365,1811810491, Spawn)
elseif HasQuest(Spawn, Mage2) or not HasQuest(Spawn, Mage3) and not HasCompletedQuest(Spawn, Mage3) and HasCompletedQuest(Spawn,Mage2) then
    Dialog2(NPC,Spawn) 
elseif  not HasQuest(Spawn, Mage4) and not HasCompletedQuest(Spawn, Mage4) and HasCompletedQuest(Spawn,Mage3) then
    Dialog2(NPC,Spawn) 
elseif  not HasQuest(Spawn, Mage5) and not HasCompletedQuest(Spawn, Mage5) and HasCompletedQuest(Spawn,Mage4) then
    Quest5Start(NPC,Spawn) 
elseif  not HasQuest(Spawn, Mage6) and not HasCompletedQuest(Spawn, Mage6) and HasCompletedQuest(Spawn,Mage5) then
    Quest6Start(NPC,Spawn) 
else
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Can't you see I am in the middle of my research.  What do you need?")
	Dialog.AddVoiceover("voiceover/english/mizan_vaeoulin/tutorial_island02/mizanvaeoulin001.mp3", 1286845802, 4234951506)
    if GetQuestStep(Spawn,Mage3)==2 then
	Dialog.AddOption("I destroyed five of the supply crates.","Quest3Turnin")
	end
    if GetQuestStep(Spawn,Mage4)==2 then
	Dialog.AddOption("I have returned with the remains of five mire bogs.","Quest4Turnin")
	end    
    if GetQuestStep(Spawn,Mage5)==2 then
	Dialog.AddOption("I have the goblin blood samples you asked for.","Quest5Turnin")
	end    
    if GetQuestStep(Spawn,Mage6)==3 then
	Dialog.AddOption("The orc responsible for the goblin uprising is no more.","Quest6Turnin")
	end  
    if HasCompletedQuest(Spawn,Mage6) then
	Dialog.AddOption("I suppose it is time I do my own research off the island.  Good day Mizan.","Thanks")
	end 	
	Dialog.AddOption("I will leave you to your research.")
	Dialog.Start()

end
end

function Thanks(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"","","bow",0,0, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end



--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 3
--------------------------------------------------------------------------------------------------------------------------------


function Dialog2(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("I heard how you destroyed the goblins at the barricade.  Impressive, you are promising at your chosen profession.  If you are interested I could use your expertise.")
	Dialog.AddVoiceover("voiceover/english/mizan_vaeoulin/tutorial_island02/mizanvaeoulin002.mp3", 1506501392, 1121947234)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    if not HasCompletedQuest(Spawn,Mage3) and not HasQuest(Spawn,Mage3)then 
    Dialog.AddOption("I am interested.  What is it?","Quest3Start")	
    end
    if HasCompletedQuest(Spawn,Mage3) and not HasCompletedQuest(Spawn,Mage4) and not HasQuest(Spawn,Mage4) or GetQuestStep(Spawn,Mage3)==3 and not HasQuest(Spawn,Mage4) then 
    Dialog.AddOption("I am interested.  What is it?","Quest4Start")	
    end
    if HasCompletedQuest(Spawn,Mage4) and not HasCompletedQuest(Spawn,Mage5) and not HasQuest(Spawn,Mage5) then 
    Dialog.AddOption("Yes, how can I be of further assistance?","Dialog4")	
    end  
    Dialog.AddOption("I am too busy right now.")	
    Dialog.Start()

end

function Quest3Start(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("The goblins are staging an attack from a forward supply camp west of here.  The outpost leaders asked me to gather mages who will attack this camp and destroy the goblin supplies.  Will you help?")
	Dialog.AddVoiceover("voiceover/english/mizan_vaeoulin/tutorial_island02/mizanvaeoulin003.mp3", 2472743072, 4160462863)
    Dialog.AddOption("I'll help destroy the supplies.","Quest3Offer")	
    Dialog.AddOption("I'll get back to you on that.")	
	Dialog.Start()
end



function Quest3Offer(NPC,Spawn)
    OfferQuest(NPC,Spawn,Mage3)
    FaceTarget(NPC, Spawn)
    if HasQuest(Spawn, Mage2) then
        SetStepComplete(Spawn,Mage2,1)
    end
end

function Quest3Turnin(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Word travels fast. Already I've heard of your success in demolishing the goblin supply crates. Excellent work. As a small token, I conjured up a pair of boots in your bank vault. Find Banker Vertbridge and he will give you the reward. Trust me, you will need the boots to protect you from the dangers lurking in the island forest.")
	Dialog.AddVoiceover("voiceover/english/mizan_vaeoulin/tutorial_island02/mizanvaeoulin005.mp3", 487769549, 120903513)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("Thank you.  I will return.")	
	Dialog.Start()
     if not HasItem(Spawn,132364) then
    SummonItem (Spawn, 132364, 1, "bank", 1)
    end
    SetStepComplete(Spawn,Mage3,2)
end



--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 4
--------------------------------------------------------------------------------------------------------------------------------

function Quest4Start(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("It seems the goblins are more clever than we gave them credit.  After seeing the destructive power of your spells, they're obsessed with fire and learning how to use it against our barricades.  Fortunately, I know how to solve the problem.  Provided you will collect the materials I need.")
	Dialog.AddVoiceover("voiceover/english/mizan_vaeoulin/tutorial_island02/mizanvaeoulin006.mp3", 4248536758, 519393255)
    Dialog.AddOption("I'll help collect what you need.","Quest4Offer")	
    Dialog.AddOption("That does sound like a problem, but I am busy at the momment.")	
	Dialog.Start()
end

function Quest4Offer(NPC,Player)
    OfferQuest(NPC,Player,Mage4)
    FaceTarget(NPC, Spawn)
end

function Quest4Turnin(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Splendid.  I will start my first batch of sealant with these mire bog remains.  As payment for your hard work, take these leggings. You've earned them.  You've aided our outpost well, adventurer, but more work must be done.  Can we count on you to help?")
	Dialog.AddVoiceover("voiceover/english/mizan_vaeoulin/tutorial_island02/mizanvaeoulin008.mp3", 4291717677, 2222410962)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
    Dialog.AddOption("Yes, how can I be of further assistance?","Quest5Start")	
    Dialog.AddOption("I have other matters to attend to.  Perhaps later.")	
	Dialog.Start()
    SetStepComplete(Spawn,Mage4,2)
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 5
--------------------------------------------------------------------------------------------------------------------------------

function Quest5Start(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("While you were away, it seems that a few of Vladiminn's new recruits scouted out the main goblin encampment on the northwestern part of the island.  Other adventurers are gathering to make an attack against it.  My teacher, Malvonicus, has determined that we could make use of goblin blood in creating wards against the creatures.  If you are willing, could you go along with this attack and while you are there, collect a few samples of goblin blood?")
	Dialog.AddVoiceover("voiceover/english/mizan_vaeoulin/tutorial_island02/mizanvaeoulin009.mp3", 963345532, 1033695526)
    Dialog.AddOption("I'll go along and collect the samples.","Quest5Offer")	
    Dialog.AddOption("That sounds dreadful!  I'd rather not deal with goblin blood.")	
	Dialog.Start()
end

function Quest5Offer(NPC,Player)
    OfferQuest(NPC,Player,Mage5)
    FaceTarget(NPC, Spawn)
end

function Quest5Turnin(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("This is exactly what Malvonicus needs to begin research on the goblin warding spells.  He instructed me to give you this apprentice robe in appreciation for the work you rendered here.  I am remiss to ask this, but others need your services for one final task.  Are you willing to help us?")
	Dialog.AddVoiceover("voiceover/english/mizan_vaeoulin/tutorial_island02/mizanvaeoulin011.mp3", 4291717677, 2222410962) --UNKNOWN KEY.  MISSING.
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
    Dialog.AddOption("I will help with this task.","Quest6Start")	
    Dialog.AddOption("I must leave this island.  Best of luck with your tasks.")	
	Dialog.Start()
    SetStepComplete(Spawn,Mage5,2)
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 6
--------------------------------------------------------------------------------------------------------------------------------

function Quest6Start(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("We know the force behind the goblin attacks.  Some time ago, a renowned orc pirate settled on the island and took control of the goblin tribes.  He rules over the tribes and holds a deep hatred for the Far Seas Trading Company.  Adventurers are forming an alliance to find the orc and destroy him.  They shall put an end to his menacing our outpost.  They need your help.  Are you ready for the task, adventurer?")
	Dialog.AddVoiceover("voiceover/english/mizan_vaeoulin/tutorial_island02/mizanvaeoulin012.mp3", 2000860005, 2814938079)
    Dialog.AddOption("I'll go and aid them with my magic.","Quest6Offer")	
    Dialog.AddOption("You must be joking.  I will NOT be dealing with any orc!")	
	Dialog.Start()
end

function Quest6Offer(NPC,Player)
    OfferQuest(NPC,Player,Mage6)
    FaceTarget(NPC, Spawn)
end

function Quest6Turnin(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("You have served this outpost well.  In sincere appreciation, we award you this mage staff.  Use it well on your path to knowledge and mastery of the arcane arts. ")
	Dialog.AddVoiceover("voiceover/english/mizan_vaeoulin/tutorial_island02/mizanvaeoulin014.mp3", 35364237, 702859208) 
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
    Dialog.AddOption("Thank you.  I wish you luck in your future research.")	
	Dialog.Start()
    SetStepComplete(Spawn,Mage6,3)
end

