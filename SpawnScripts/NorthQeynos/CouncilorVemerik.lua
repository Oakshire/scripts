--[[
    Script Name    : SpawnScripts/NorthQeynos/CouncilorVemerik.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.27 05:10:30
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local Quest1 = 5782
local Quest2 = 5783
local Bard = 5784
local Predator = 5785
local Rogue = 5786

function spawn(NPC)
    ProvidesQuest(NPC, Quest1)
    ProvidesQuest(NPC, Quest2)
    ProvidesQuest(NPC, Bard)
    ProvidesQuest(NPC, Predator)
    ProvidesQuest(NPC, Rogue)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("And a good day to you, my friend!  Nothing's more enjoyable than people watching.  For instance, there's an amusing lad, that fellow there seems to be in a rush, and take a gander at that lady ... er ... the point is, nimble eyes are just as important as nimble fingers. You never know what you might see!")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik000.mp3", 1163089685, 181252460)
    PlayFlavor(NPC,"","","hello",0,0,Spawn)
    if GetClass(Spawn)== 31 and GetLevel(Spawn)>=7 and not HasQuest(Spawn,Quest1) and not HasCompletedQuest(Spawn,Quest1) then
    Dialog.AddOption("You're very observant! Have any advice for an aspiring scout?","Dialog1")	
    end
     if GetClass(Spawn)== 31 and GetLevel(Spawn)>=8 and not HasQuest(Spawn,Quest2) and not HasCompletedQuest(Spawn,Quest2) and HasCompletedQuest(Spawn,Quest1) then
    Dialog.AddOption("So... any more sage advice today, Counselor?","Dialog4")	
    elseif GetClass(Spawn)== 31 and GetLevel(Spawn)<8 and not HasQuest(Spawn,Quest2) and not HasCompletedQuest(Spawn,Quest2) and HasCompletedQuest(Spawn,Quest1) then
    Dialog.AddOption("Thank you. I'll return soon for more advice.")	
    end  
    if HasQuest(Spawn,Quest1) and GetQuestStep(Spawn,Quest1)==2 then 
    Dialog.AddOption("I have slain the rock adders.","Dialog2")	
    end
    if HasQuest(Spawn,Quest1) and GetQuestStep(Spawn,Quest1)==4 then 
    Dialog.AddOption("I've spoken with Dawson.","Dialog3")	
    end

    
    Dialog.AddOption("I've got more important things to do than watch people. Good day.")
	Dialog.AddOption("I'll keep that in mind...")
	Dialog.Start()
end

function Dialog1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Who better to take advice from than someone who spends his time watching instead of talking?  And from what I observe of you, I'd say you're someone to keep an eye on... perhaps in more ways than one, yes? Count your lucky stars, friend, for today I offer you the counsel that will have every scout seething with envy.")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik001.mp3", 2884977511, 461092227)
    PlayFlavor(NPC, "", "", "wink", 0, 0, Spawn)
    Dialog.AddOption("I doubt you've seen me that much of me!","Dialog1a")	
	Dialog.Start()
end

function Dialog1a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("You think you're a sneaky little scamp, but there's always someone out there who's better than you.  The only way to rise out of mediocrity is to find what you do best ... and do it better.  That includes hiding in plain sight, tracking your quarry, or captivating an audience with tales of your prowess ... on the battlefield, that is.")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik002.mp3", 867957619, 293298057)
    PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
    Dialog.AddOption("Well, I that does sound like what I'm looking for! What must I do?","Dialog1b")	
    Dialog.AddOption("Better than me?! Bah! Off with you! I don't need any of your silly advice!","smirk")	
	Dialog.Start()
end

function smirk(NPC,Spawn)
    PlayFlavor(NPC, "", "", "smirk", 0, 0, Spawn)
end

function Dialog1b(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Let's look at rogues for a moment. Due to their stealth and guile nature, people associate rogues with thieves and cutpurses.  But we both know that rogues are just misunderstood, right?  Perhaps you want to try your hand--and fingers--at being a rogue?")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik003.mp3", 902455109, 2724236696)
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    Dialog.AddOption("I could always test out my dexterity. What do you have in mind?","Quest1Offer")	
	Dialog.Start()
end

function Quest1Offer(NPC,Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Quest1)
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog2(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Congratulations, my stealthy friend.  That was an impressive show, indeed.  I really enjoyed the way you slipped up behind the one adder and struck it before it ever sensed your presence.  Bravo, bravo!")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik005.mp3", 37517606, 3026987360)
    PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
    Dialog.AddOption("Their fangs were more of a challenge than they appeared.","Dialog2a")	
	Dialog.Start()
end

function Dialog2a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Precisely!  Remember how I told you there's always someone out there better than you?  A word to the wise, friend: What looks like a safe, dark cave to hide in may be the mouth of a dragon.  I'll let you ponder that one as we move on to my next piece of advice.  I think an appreciation for bards would do you good.")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik006.mp3", 729445515, 3345579135)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("A bard? What harm could someone who sings songs actually do?","Dialog2b")	
	Dialog.Start()
end

function Dialog2b(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("That reminds me of a riddle. Where's the safest place to hide a secret letter about an illicit tryst?  In plain sight, right?  If you answered \"yes,\" then you're wrong!  The safest place to hide a letter is in an envelope.")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik007.mp3", 3700473453, 592698849)
    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
    Dialog.AddOption("Err... what are you trying to say?","Dialog2c")	
    Dialog.AddOption("Oh, I see.","Dialog2c")	
	Dialog.Start()
end

function Dialog2c(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("I'm saying that no one expects you to be daft enough to keep a letter of that type in the very envelope it was sent.  In turn, no one expects some silly fop singing about love and happiness to secretly be a deadly adversary.  Bards can be as deceptive as any master rogue by making people think they're not a threat.  Then again, they can also be nothing more than silly fops.")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik008.mp3", 2036298536, 1267180254)
    PlayFlavor(NPC, "", "", "tapfoot", 0, 0, Spawn)
    Dialog.AddOption("Fight me then. I'm no weak fop!","Dialog2d")	
	Dialog.Start()
end

function Dialog2d(NPC,Spawn)
    SetStepComplete(Spawn,Quest1,2)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Perhaps, in your case, but that's beside the point.  What I'm telling you is that words can be a weapon sharper than any sword.  I think it's better if you saw this for yourself.  A man by the name of Dawson here in the city is known for his witty banter. Why don't you try to best him at his own game?")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik009.mp3", 3611834104, 1157473996)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("A challenge of wits then! I'll return after I speak with Dawson.")	
	Dialog.Start()
end

function Dialog3(NPC,Spawn)
    SetStepComplete(Spawn,Quest1,4)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("I'd ask how it went, but since your cheeks aren't beet red, I assume Dawson met his match!  Now, I showed you how bards use their skills with words to best their opponents, but bards have many other talents as well.  These I will let you discover yourself.  I said I'd offer you advice, not create unnecessary competition.")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik010.mp3", 570326948, 4214364633)
    PlayFlavor(NPC, "", "", "boggle", 0, 0, Spawn)
    if GetLevel(Spawn)>=8 then
    Dialog.AddOption("I think I understand what you're saying.  Sooo... any more advice?","DoneToday")
    else
    Dialog.AddOption("I think I understand what you're saying.  Sooo... any more advice?","DoneToday")
    end    
	Dialog.Start()
end

function DoneToday(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("You're a good listener, I'd like to give you more advice, but alas, I must wet my whistle. For now, take what you learned and use it wisely. Come back after I've had time to imbibe in a fine wine.  Never underestimate the power of a finely aged wine or the bouquet of a young one.")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik011.mp3", 2937149827, 1212015107)
    PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
    if GetClass(Spawn)== 31 and GetLevel(Spawn)>=8 and not HasQuest(Spawn,Quest2) and not HasCompletedQuest(Spawn,Quest2) and HasCompletedQuest(Spawn,Quest1) then
    Dialog.AddOption("Please, I am ready for more advice... if you have some!","Dialog4")	
    end  
    Dialog.AddOption("Thank you. I'll return soon for more advice.")	
    Dialog.Start()
end

--QUEST 2 

function Dialog4(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Of course!  Early to bed and early to rise makes you a dull boy.  Never put your hand in a gift horse's mouth.  A copper saved is a copper not spent on a nip of sherry.  A bird in the hand is never as good as a bird in the ... ah, yes.  But I assume you're not here for this type of advice.  You're interested in more scoutly tips, right?")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik012.mp3", 3068538410, 2019549688)
    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
    Dialog.AddOption("You have quite the skill for going on and on, don't you?","Dialog5")	
    Dialog.AddOption("Nope. That is exactlly what I was looking for. I feel more counseled already!")	
	Dialog.Start()
end

function Dialog5(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("I'll take that as a compliment, thank you very much.  Very well ... you've had a taste of the skills rogues and bards use, but you haven't touched on those of the predator. Just like the rogue, the life of the predator is often misunderstood.  This is why many a predator leaves society for the quiet of the wilderness.")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik013.mp3", 3948645003, 3755795247)
    PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
    Dialog.AddOption("Why would they want to remove themselves from society?","Dialog6")	
	Dialog.Start()
end

function Dialog6(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Predators distill every ounce of patience and diligence from within their very being and direct that concentrate towards the quarry they tirelessly pursue. Just as if it was a precious jewel, nothing stops predators from acquiring their target.")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik014.mp3", 252169765, 1039248114)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("Like a hunter stalking its prey? ","Quest2Offer")	
    Dialog.AddOption("Like a spider and its web?","Quest2Offer")	
    Dialog.AddOption("Like a loan collector?","Quest2Offer")	
    Dialog.AddOption("Most interesting, but I'm in way over my head with all of this.")	
	Dialog.Start()
end

function Quest2Offer(NPC,Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Quest2)
end


--So... any more sage advice today, Counselor?
--I think I understand what you're saying.  Sooo... any more advice?