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
    Dialog.AddOption("I take it you know a lot about scouting, even though you're a Counselor?","Dialog1")	
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
    if HasQuest(Spawn,Quest2) and GetQuestStep(Spawn,Quest2)==2 then 
    Dialog.AddOption("I understand predators better after dealing with those spiders.","Dialog5")	
    end
    if HasQuest(Spawn,Quest2) and GetQuestStep(Spawn,Quest2)==4 then 
    Dialog.AddOption("I gave the guard the message. [Tell Vemerik what the guard said] ","Dialog6")	
    end
    if HasCompletedQuest(Spawn,Quest2) and not HasQuest(Spawn,Bard) and not HasQuest(Spawn,Rogue) and not HasQuest(Spawn,Predator) and GetClass(Spawn)==31 then
    Dialog.AddOption("I think I understand what you're saying.  Sooo... any more advice?","Decide")	
    end       
    if HasQuest(Spawn,Rogue) and GetQuestStep(Spawn,Rogue)==2 then 
    Dialog.AddOption("I found a copy of their orders!","RogueDone")	
    end 
    if not HasCompletedQuest(Spawn, Rogue) and not HasCompletedQuest(Spawn, Predator) and not HasCompletedQuest(Spawn, Bard) then
    Dialog.AddOption("I've got more important things to do than watch people. Good day.")
    else
    Dialog.AddOption("Never a dull moment with you, Counselor. Good to see you again.","RogueDone2")
    end
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
    Dialog.AddOption("You have quite the skill for going on and on, don't you?","Dialog4a")	
    Dialog.AddOption("Nope. That is exactlly what I was looking for. I feel more counseled already!")	
	Dialog.Start()
end

function Dialog4a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("I'll take that as a compliment, thank you very much.  Very well ... you've had a taste of the skills rogues and bards use, but you haven't touched on those of the predator. Just like the rogue, the life of the predator is often misunderstood.  This is why many a predator leaves society for the quiet of the wilderness.")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik013.mp3", 3948645003, 3755795247)
    PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
    Dialog.AddOption("Why would they want to remove themselves from society?","Dialog4b")	
	Dialog.Start()
end

function Dialog4b(NPC,Spawn)
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

function Dialog5(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("The danger that forest creatures present is nothing compared to hunting something with two legs.  Even more dangerous, is when you start to enjoy the hunt. When the exhilaration of the kill becomes more enjoyable than the hunt, that's when it's time to find a new profession.")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik016.mp3", 406273156, 333036872)
    PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
    Dialog.AddOption("Noted. The hunt should be more important than the kill.","Dialog5a")	
	Dialog.Start()
end

function Dialog5a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("I think I've told you everything you need to know.  Unless, of course, you're interested in putting some of these gems of wisdom to the test.  As an advisor to the Queen, it's my duty to offer her as much information as possible in order for her to make wise decisions.  Perhaps you're willing to help the Queen?")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik017.mp3", 3570678330, 2381735310)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("Help the Queen? It would be an honor! What must I do?","Dialog5b")	
    Dialog.AddOption("This sounds far too important for me to handle! I'll leave you to it.")	
	Dialog.Start()
end

function Dialog5b(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Oh, nothing more than delivering a message to one of her guards.  There's a guard who's stationed out by one of the bridges within the wilds of Antonica.  Unfortunately, I don't recall which bridge it is.")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik018.mp3", 4227213140, 3986290744)
    PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
    Dialog.AddOption("What is the message I need to deliver?","Dialog5c")	
	Dialog.Start()
end

function Dialog5c(NPC,Spawn)
    SetStepComplete(Spawn,Quest2,2)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("I heard that his sister came down with an illness. I want him to know that she's in good hands.  Would you be so kind as to tell him this?")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik019.mp3", 3378010283, 3556160913)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("Certainly!")	
	Dialog.Start()
end

function Dialog6(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("I dare say, that if people kept their mouth shut, my job would be much harder.  I owe you a bit of an explanation, but I will keep it brief.  Save for trekking across Antonica, you were never in any danger.  As for the message you sent, well, the guard would be quite distressed to hear that it was just a bluff.")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik020.mp3", 900786324, 3703445499)
    PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
    Dialog.AddOption("So it was a lie?","Dialog6a")	
	Dialog.Start()
end

function Dialog6a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("I trusted your ability to make it out alive. In the end, he revealed his hand, just as I expected him to. I'm a bit concerned that he has a rather negative opinion about me, though.  I would have thought he didn't have enough common sense to look at things twice.")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik021.mp3", 3903421606, 2087614120)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("So, was his sister actually involved?","Dialog6b")	
    Dialog.AddOption("Will the sentry face judgement for his actions?","Dialog6b")	
	Dialog.Start()
end

function Dialog6b(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("I can neither confirm nor deny that, adventurer.  I will, though, offer you the most important piece of advice you need to know.  Any amateur can look at something, but only a pro can see what they're looking at.  How and where you use your talents is all that counts in the end.  Remember that and you will go far.")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik022.mp3", 2592596707, 887568372)
    PlayFlavor(NPC, "", "", "shrug", 0, 0, Spawn)
    Dialog.AddOption("I think I understand what you're saying.  Sooo... any more advice?","Decide")	
	Dialog.Start()
end

function Decide(NPC,Spawn)
    if HasQuest(Spawn,Quest2) and GetQuestStep(Spawn,Quest2) ==4 then
        SetStepComplete(Spawn,Quest2,4)
    end
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("The time for advice is done, friend.  Now it's time for you to take what you learned and use it.  You've learned too much to idle around as a scout.  Where do you plan on taking your talents?")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik023.mp3", 698357632, 1164995124)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("I enjoyed the stealthy nature of the rogue.","Rogue1")	
    Dialog.AddOption("I think I'll continue my hand at being a bard.","Bard1")	
    Dialog.AddOption("I'm too focused to be anything other than a predator.","Predator1")	
	Dialog.Start()
end


--ROGUE CLASS
function Rogue1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("One does not choose to be a rogue, but rather life makes that choice for them. Rogues live lives free of the bonds that society places on others. Tricky little fellows, rogues are always around when you need them.  Look behind you and you just might find one... So, is this where you will focus your talents?")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik024.mp3", 285925874, 319020481)
    PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
    Dialog.AddOption("I'm pretty certain the life of a rogue will be quite... rewarding.  Yes, I'm a rogue.","Rogue2")	
    Dialog.AddOption("I'm not too sure anymore.  Do you advise I specialize somewhere else?","Decide")	
	Dialog.Start()
end

function Rogue2(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Ahh, the life of the rogue!  Stealth, cunning and  wealth -- if you're successful in your endeavors.  Why don't I arrange a test for you?  We'll see if you have what it takes to be a thief.")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik028.mp3", 4162046262, 4084281734)
    PlayFlavor(NPC, "", "", "smirk", 0, 0, Spawn)
    Dialog.AddOption("Bring it on! I will pass any test you can muster.","RogueOffer")	
    Dialog.AddOption("I'm not too sure anymore.  Do you advise I specialize somewhere else?","Decide")	
	Dialog.Start()
end

function RogueOffer(NPC,Spawn)
     FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Rogue)
end

function Rogue3(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Grab their mission orders. The lieutenant will have them guarded. Knowing him, he'll keep them behind a locked door guarded by his most brawny men. Return to me when you're done, and I'll verify the orders.")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik030.mp3", 1639577999, 2458872272)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("Alright. I'll bring you the documents as quick as I can!")	
	Dialog.Start()
end

function RogueDone(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Let me make certain that you didn't just forge these ... No you succeeded where others before you have failed. The lieutenant will have to double his efforts.  You certainly deserve the title of \"rogue.\"")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik031.mp3", 1723935766, 223407145)
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    Dialog.AddOption("Thank you Counselor. I will use my new skills wisely.","RogueDone2")	
	Dialog.Start()
end

function RogueDone2(NPC,Spawn)
     FaceTarget(NPC, Spawn)
     if HasQuest(Spawn,Rogue) then
    SetStepComplete(Spawn,Rogue,2)
    end
    PlayFlavor(NPC, "", "", "wink", 0, 0, Spawn)
end

--BARD CLASS 

function Bard1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Anyone can defeat a mighty adversary in battle, but being remembered for it is an entirely different matter.  A bard regales others with tales of the past through their melodies and stories.  The bard who writes the past is the same one who guides the future.  And don't forget all the attention you get, too!  That's my favorite part!")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik025.mp3", 3456483414, 216988233)
    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
    Dialog.AddOption("Easy! I'll be a world-renowned bard!","Bard2")	
    Dialog.AddOption("I'm not too sure anymore.  Do you advise I specialize somewhere else?","Decide")	
	Dialog.Start()
end

function Bard2(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Perhaps you will, but first we must see how well you perform under pressure. The life of a bard isn't all song and dance, you know.  A great amount of stress is placed upon performers and if you're not up to the task, there's no telling what can happen.")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik032.mp3", 1067830729, 103418166)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("What must I do to prove myself?","Bard3")	
	Dialog.Start()
end

function Bard3(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Are you prepared to see what happens when you perform poorly in front of the wrong audience? We're about to find out!  It so happens, there's a group of rather sour individuals with a performer who... ahhh ... had an off night, so to speak.")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik033.mp3", 1412723823, 1711994068)
    PlayFlavor(NPC, "", "", "scheme", 0, 0, Spawn)
    Dialog.AddOption("I suppose a bard should be prepared for anything. What must I do?","BardOffer")	
    Dialog.AddOption("I'm not too sure anymore.  Do you advise I specialize somewhere else?","Decide")	
	Dialog.Start()
end

function BardOffer(NPC,Spawn)
     FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Bard)
end

--PREDATOR CLASS

function Predator1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Predators are only happy when they are pursuing their quarry. Once they catch what they're tracking, well, the game's over, so they say.  Therefore, a smart predator always finds something else to hunt down.  If you've got a big imagination, then being a predator might be for you.")
--	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik026.mp3", 3456483414, 216988233) UNKNOWN
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    Dialog.AddOption("I like having something to do at all times.  I'm a predator.","Predator2")	
    Dialog.AddOption("I'm not too sure anymore.  Do you advise I specialize somewhere else?","Decide")	
	Dialog.Start()
end

function Predator2(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("So, a predator? Can you smell your prey far before you see it? If you close your eyes, can you hear the heartbeat of your game and know how many beats are left, yes? Yes ... a stalker's instinct runs in your blood.  You are the top of the food chain.")
--	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik026.mp3", 3456483414, 216988233) UNKNOWN
    PlayFlavor(NPC, "", "", "smirk", 0, 0, Spawn)
    Dialog.AddOption("I revel in the hunt. What must I do to prove my skill?","PredatorOffer")	
    Dialog.AddOption("Well, when you put it that way...  Do you advise I specialize somewhere else?","Decide")	
	Dialog.Start()
end

function PredatorOffer(NPC,Spawn)
     FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Predator)
end