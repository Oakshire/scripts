--[[
    Script Name    : SpawnScripts/IsleRefuge1/NathiniaSparklebright.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 02:09:26
    Script Purpose : Nathinia Sparklebright on Isle of Refuge
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"
local Priest2 = 5732
local Priest3 = 5734
local Priest4 = 5738
local Priest5 = 5742
local Priest6 = 5750
local Blessing = true

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 12, "InRange", "LeaveRange")
    ProvidesQuest(NPC, Priest3)
    ProvidesQuest(NPC, Priest4)
    ProvidesQuest(NPC, Priest5)
    ProvidesQuest(NPC, Priest6)
    AddTimer(NPC,3000,"CastBlessing")
end


function CastBlessing(NPC,Spawn)
    if Blessing == true then
    choice = MakeRandomInt(1,7)
    if choice == 1 then
    CastSpell(NPC,110002)
    elseif choice == 2 then
    CastSpell(NPC,58)
    elseif choice == 3 then
    CastSpell(NPC,57)    
    elseif choice == 4 then
    CastSpell(NPC,52)    
    elseif choice == 5 then
    CastSpell(NPC,232)   
    elseif choice == 6 then
    CastSpell(NPC,110002)   
    elseif choice == 7 then
    CastSpell(NPC,572) 
    end
end
    AddTimer(NPC,math.random(45000,75000),"CastBlessing")
end

function ResetCasting(NPC,Spawn)
    Blessing = true
end

function InRange(NPC,Spawn)
    if HasQuest(Spawn,Priest2)then	
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02_fvo_priestcallout.mp3","If you are one that follows the ways of the priest, then I need your help.","hello",2406483258,3086152442, Spawn)
    elseif not HasQuest(Spawn, Priest4) and HasCompletedQuest(Spawn,Priest3) and not HasCompletedQuest(Spawn,Priest4) then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02_fvo_priestq2.mp3","I hope all is going well for you.","bye",3742259648,1726362202, Spawn)
    end
end

function hailed(NPC, Spawn)
    Blessing = false
    AddTimer(NPC,60000,"ResetCasting",1,Spawn)
if GetClass(Spawn)==0 then
    PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_3_1011.mp3","I can sense a deep spirituality inside you, but I can't teach you until you register with Garven.","no",0,0, Spawn)
elseif HasQuest(Spawn, Priest2) or not HasQuest(Spawn, Priest3) and not HasCompletedQuest(Spawn, Priest3) and HasCompletedQuest(Spawn,Priest2) then
    Dialog2(NPC,Spawn) 
elseif not HasQuest(Spawn, Priest4) and HasCompletedQuest(Spawn,Priest3) and not HasCompletedQuest(Spawn,Priest4) then
    Dialog3(NPC,Spawn) 
elseif not HasQuest(Spawn, Priest5) and HasCompletedQuest(Spawn,Priest4) and not HasCompletedQuest(Spawn,Priest5) then
    Dialog4(NPC,Spawn) 
elseif not HasQuest(Spawn, Priest6) and HasCompletedQuest(Spawn,Priest5) and not HasCompletedQuest(Spawn,Priest6) then
    Dialog5(NPC,Spawn) 
else
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Spiritual enlightenment is as important to being as air to breathe or food to eat.")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright001.mp3", 3193576979, 57142690)
    if GetQuestStep(Spawn, Priest3)==2 then
	Dialog.AddOption("The statues have been cleansed.","Priest3Turnin")
    end    
    if GetQuestStep(Spawn, Priest4)==2 then
	Dialog.AddOption("I have five giant spider venom sacs for you.","Priest4Turnin")
    end
    if GetQuestStep(Spawn, Priest5)==2 then
	Dialog.AddOption("I have returned with four totems for you.","Priest5Turnin")
    end
    if GetQuestStep(Spawn, Priest6)==3 then
	Dialog.AddOption("The orc has been removed from power.","Priest6Turnin")
    end
    if HasCompletedQuest(Spawn, Priest6) then
    Dialog.AddOption("Blessings to you, Nathinia.  Thank you again for your lessons.", "Thanks")
    end
    Dialog.AddOption("Thank you for that bit of wisdom.")
	Dialog.Start()

end
end

function Thanks(NPC,Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02_fvo_priestq2.mp3","I hope all is going well for you.","curtsey",3742259648,1726362202, Spawn)
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
 	Dialog.AddDialog("Word has spread about you defending our outpost from the goblin assaults.  Your effort is greatly appreciated.  However, I have another task, if you are interested.")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright002.mp3", 514500382, 260398895)
    PlayFlavor(NPC, "", "", "curtsey", 0, 0, Spawn)
    Dialog.AddOption("I am interested.  What is it?","Interested")	
    Dialog.AddOption("Not right now.")	
	Dialog.Start()
    if HasQuest(Spawn, Priest2) then
        SetStepComplete(Spawn,Priest2,1)
    end
end

function Interested(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("The Gruttooth invaders you fought off at the barricades are but fodder compared to the goblins trying to push us from this outpost.  Among the more dangerous members of their makeshift army you'll find the Gruttooth mystics.")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright003.mp3", 3378158003,1090901335)
    Dialog.AddOption("How are these mystics different?","Mystics")	
	Dialog.Start()
end

function Mystics(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("While physically the same as the other goblins, the mystics rely on depraved priestly powers gained from the idols they worship to perform their foul magic.  I've come to learn that the source of this power may have to do with the goblin idol statues found on this island.")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright018.mp3", 2424446864,2926608065)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("And so you want me to destroy these statues.","YouWantMe")	
	Dialog.Start()
end

function YouWantMe(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Exactly.  It is only one of our professions that can perform such a task, for I've heard the idols are impossible to destroy without divine power.  Will you aid us in destroying the heart of these goblins' foul powers?")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright019.mp3", 110104558,1387202040)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("I will.","Iwill")	
    Dialog.AddOption("Perhaps another time.")	
	Dialog.Start()
end

function Iwill(NPC,Spawn)
    OfferQuest(NPC,Spawn,Priest3)
    FaceTarget(NPC, Spawn)
end

function Priest3Turnin(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Well done brave friend.  With the mystics weakened, the goblins will have a harder time with their siege plans.  I have taken the liberty of placing a reward in your bank.  Seek out Banker Vertbridge and he will help you receive it.  Wear them well, you will need the protection.  Are you able to assist us with another task?")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright005.mp3", 1831865050,2426267765)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("Thank you. I will seek out the banker.")	
	Dialog.Start()
    if not HasItem(Spawn,130119) then
    SummonItem (Spawn, 130119, 1, "bank", 1)
    end
    SetStepComplete(Spawn,Priest3,2)
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 4
--------------------------------------------------------------------------------------------------------------------------------

function Dialog3(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Thus far we've done well defending our outpost against the goblin forces, but now many goblins are tipping their spears with a form of poison.  Goblin shaman create the poison by using giant spider venom sacs.  We need you to collect a few of these sacs so I can produce an antidote.  Would you do us this favor, friend?")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright006.mp3", 1039316566,2813655652)
    Dialog.AddOption("I will collect the venom sacs for you.","IwillCollect")	
    Dialog.AddOption("That does sound like a problem, but I am busy at the momment.")	
	Dialog.Start()
end

function IwillCollect(NPC,Player)
    OfferQuest(NPC,Player,Priest4)
    FaceTarget(NPC, Spawn)
end

function Priest4Turnin(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Excellent job!  You proved your value, adventurer.  I will start on this antidote immediately.  For a job well done, here are some leggings.  I know it is asking a lot, but may I ask you another favor?")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright008.mp3", 1685520077,3945672786)
    PlayFlavor(NPC, "", "", "curtsey", 0, 0, Spawn)
    Dialog.AddOption("I'll do what I can.","Dialog4")	
    Dialog.AddOption("Perhaps. I need a momment.")	
	Dialog.Start()
    SetStepComplete(Spawn,Priest4,2)
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 5
--------------------------------------------------------------------------------------------------------------------------------

function Dialog4(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Our scouts have found the location of the goblins' main encampment.  Adventurers are organizing now to attack the village.  I don't know if this will defeat the goblins or just scatter them for a time, but either way, it is a necessary action.  The warriors fighting there will undoubtedly need of your healing talents and blessings.  Could you join the assault on the goblin village and, perhaps, collect something for me in the process?")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright009.mp3", 1871132929,3238860300)
    Dialog.AddOption("I'll assist with the assault.","Quest5Offer")	
    Dialog.AddOption("I need to consider this further.")	
	Dialog.Start()
end


function Quest5Offer(NPC,Player)
    OfferQuest(NPC,Player,Priest5)
    FaceTarget(NPC, Spawn)
end

function Priest5Turnin(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Excellent.  I shall study these totems and determine if they are part of what is stirring the goblins up.  You have been very helpful to the people of this outpost.  Please, take this tunic as a token of our appreciation.  You have most assuredly earned it.  I am reluctant to ask this but others need your service one final time.  Are you willing to help us with this last task?")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright011.mp3", 744531264,1982225584)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("I will help with this task.","Dialog5")	
    Dialog.AddOption("Perhaps, but I need a momment.")	
	Dialog.Start()
    SetStepComplete(Spawn,Priest5,2)
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 6
--------------------------------------------------------------------------------------------------------------------------------

function Dialog5(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("We know the force behind the goblin attacks.  Some time ago a renowned orc pirate capsized on the island and took control of the goblin tribes.  Now he rules over the goblins and uses them for his private army.  We must put an end to his treachery.  We need your help.  Are you ready for the task, adventurer?")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright012.mp3", 4086085032,2441283948)
    Dialog.AddOption("I will help remove this orc from power.","Quest6Offer")	
    Dialog.AddOption("I don't care about some crazy orc.")	
	Dialog.Start()
end

function Quest6Offer(NPC,Player)
    OfferQuest(NPC,Player,Priest6)
    FaceTarget(NPC, Spawn)
end

function Priest6Turnin(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Now that the orc is defeated the goblin attacks should cease.  We thank you for your hard work.  In appreciation, on behalf of our people, I offer you a sceptre.  May the gods look upon you favorably, friend.")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright014.mp3",1479847046,137812808)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
    Dialog.AddOption("Thank you for the gift.")	
	Dialog.Start()
    SetStepComplete(Spawn,Priest6,3)
end
