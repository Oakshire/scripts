--[[
    Script Name    : SpawnScripts/Commonlands/TiffSqueelunkle.lua
    Script Author  : Premierio015
    Script Date    : 2021.01.06 02:01:07
    Script Purpose : 
                   : 
--]]

local SmugglersSecrets = 452
local CratesOnTheNerves = 453 


function spawn(NPC)
ProvidesQuest(NPC, SmugglersSecrets)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange", Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if not HasQuest(Spawn, SmugglersSecrets) and not HasCompletedQuest(Spawn, SmugglersSecrets) then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1019.mp3", "", "clap", 0, 0, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "What are you going on about?", "dlg1")
    AddConversationOption(conversation, "Perfect fit for what, little bit?", "dlg1")
    AddConversationOption(conversation, "I don't think so.")
    StartConversation(conversation, NPC, Spawn, "You are a perfect fit!  No doubt of that cog being wrong sized, nuh uh.")
    elseif HasQuest(Spawn, SmugglersSecrets) and GetQuestStep(Spawn,  SmugglersSecrets) == 1  then
    dlg5(NPC, Spawn)
    elseif HasQuest(Spawn, SmugglersSecrets) and GetQuestStep(Spawn, SmugglersSecrets) == 2 or GetQuestStep(Spawn, SmugglersSecrets) == 4 or GetQuestStep(Spawn, CratesOnTheNerves) == 3 or GetQuestStep(Spawn, CratesOnTheNerves) == 12 then
    PlayFlavor(NPC, "", "Quick!  Do as I asked before they catch on to us!", "", 1689589577, 4560189, Spawn)
    elseif GetQuestStep(Spawn, SmugglersSecrets) == 3 then
    dlg7(NPC, Spawn)
    elseif GetQuestStep(Spawn, SmugglersSecrets) == 5 then
    dlg16(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, SmugglersSecrets) and not HasQuest(Spawn, CratesOnTheNerves) and not HasCompletedQuest(Spawn, CratesOnTheNerves) then
     conversation = CreateConversation()
	AddConversationOption(conversation, "Oh, good.  More work.", "dlg2_1")
    AddConversationOption(conversation, "And there's something I can do, right?", "dlg_2_1")
	StartConversation(conversation, NPC, Spawn, "Now we can track the scroll to 'elp us learn who is involved, but there's more gears turnin' in this clockwork then meets the eye.")
	elseif GetQuestStep(Spawn, CratesOnTheNerves) == 1 then
	conversation = CreateConversation()
	AddConversationOption(conversation, "Sounds easy enough.")
	StartConversation(conversation, NPC, Spawn, "Get me five wisp embers to make the potion, and we'll be all set.")
	elseif GetQuestStep(Spawn, CratesOnTheNerves) == 4 then
	conversation = CreateConversation()    
	AddConversationOption(conversation, "I just got better at infiltration (134/180).", "OPTION1")
	AddConversationOption(conversation, "I didn't mean to.", "OPTION1")
	AddConversationOption(conversation, "I think you were just distracted.", "OPTION1")
	StartConversation(conversation, NPC, Spawn, "Ack!  You startled me!  Don't you know better than to sneak up on someone?!")    
	elseif GetQuestStep(Spawn, CratesOnTheNerves) == 2 then
	  dlg2_3(NPC, Spawn)
	elseif GetQuestStep(Spawn, CratesOnTheNerves) == 5 or  GetQuestStep(Spawn, CratesOnTheNerves) == 6 or  GetQuestStep(Spawn, CratesOnTheNerves) == 7 or  GetQuestStep(Spawn, CratesOnTheNerves) == 8 or  GetQuestStep(Spawn, CratesOnTheNerves) == 9 or GetQuestStep(Spawn, CratesOnTheNerves) == 10 then 
	 conversation = CreateConversation()    
	 AddConversationOption(conversation, "Oh, I will!")
	StartConversation(conversation, NPC, Spawn, "Make sure to use the map I gave you to follow the crates around, "..GetName(Spawn)..".")
	PlayAnimation(NPC, 12216)
	elseif GetQuestStep(Spawn, CratesOnTheNerves) == 11 then
	  dlg2_5(NPC, Spawn)
	elseif GetQuestStep(Spawn, CratesOnTheNerves) == 13 then
	 PlayAnimation(NPC, 12030)
	 conversation = CreateConversation()       
	 AddConversationOption(conversation, "I did.  I heard more interesting bits.", "dlg3_3")
	StartConversation(conversation, NPC, Spawn, "Did'n you find somethin'?  Anythin'?")
	elseif HasCompletedQuest(Spawn, SmugglersSecrets) and HasCompletedQuest(Spawn, CratesOnTheNerves) then
	 PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1019.mp3", "I appreciated your 'elp investigatin' the Smuggler's activities.", "", 0, 0, Spawn)
end
   end

function dlg1(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()  
  AddConversationOption(conversation, "I have no doubt.", "dlg2")
  AddConversationOption(conversation, "Anyway, as you were saying...")
  StartConversation(conversation, NPC, Spawn, "I have need of you!  I'm a member of the Seafury Buccaneers, and we... I know what you're thinking, but I am very useful at sea!  Any mechanical whos-its break down durin' travel and Tiff is on it like stink on a sewer rat.")
end

function dlg2(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 PlayAnimation(NPC, 11882)
 conversation = CreateConversation() 
 AddConversationOption(conversation, "Wait!  What am I doing?", "dlg3")
 AddConversationOption(conversation, "I never agreed to anything.")
 StartConversation(conversation, NPC, Spawn, "Uh... Oh, yes.  You're useful 'n smart!  we're to investigate these smugglers 'ere and see what and who is behind their recent growth in number 'n purse. 'Nfringin' on our teritry, they are.  I have the clothes of a courier 'ere for you to wear when you go in.")
end

function dlg3(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation() 
 AddConversationOption(conversation, "You have two hands.", "dlg4")
  AddConversationOption(conversation, "So what should I be looking for?", "offer")
 AddConversationOption(conversation, "You need to find someone else.")
 StartConversation(conversation, NPC, Spawn, "Huh?  Keep up 'ere!  I need you to go to the smuggler's camp.  I'll reward you, naturally.  I promise!  Break my gears, and curse my mind!  It's just that I've been spotted by 'em several times snoopin' around 'n if I get snagged again they'll sure as Prexxus take my other hand, too!")
end

function dlg4(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "Uh, kaaay.  So what should I be looking for?", "offer")
 AddConversationOption(conversation, "Wow.  You're confused.")
 StartConversation(conversation, NPC, Spawn, "Do not distract me from the matter.  You're the one that wanted to help me!")
end


function dlg5(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, SmugglersSecrets, 1)
conversation = CreateConversation() 
AddConversationOption(conversation, "I'll see what I can find.", "dlg6")
AddConversationOption(conversation, "I'm not promising anything.")
StartConversation(conversation, NPC, Spawn, "Now wear this outfit so they will not suspect you.  They are the clothes of the last courier to have come through.  Careful, they're worn through in parts.")
end

function dlg6(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "Oh, I will!")
StartConversation(conversation, NPC, Spawn, "Make sure to be wearing the courier costume when you snoop about at the smuggler's outpost, ".. GetName(Spawn) .. ".")
end


function dlg7(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1019.mp3", "", "", 0, 0, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "The Blackshield entrance exam must be hands on.", "dlg8")
AddConversationOption(conversation, "I found I am a natural at spying.", "dlg9")
StartConversation(conversation, NPC, Spawn, "Back all ready!?  What 'cha find?")
end

function dlg8(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "They thought I was the courier and gave me this scroll.", "dlg10")
StartConversation(conversation, NPC, Spawn, "Har, har!  Not the thickest planks of the boat, that's fer sure!")
end

function dlg9(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "They thought I was the courier and gave me this scroll.", "dlg10")
StartConversation(conversation, NPC, Spawn, "I knew it!  What have you for me?")
end

function dlg10(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "Do with it?  Read it!  Can't you open it?", "dlg11")
StartConversation(conversation, NPC, Spawn, "Oh, what luck!  I hadn't expected this.  Too good!  What are you to do with it?")
end

function dlg11(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "Deliver it to someone at Pride Lake.", "dlg12")
StartConversation(conversation, NPC, Spawn, "No.  It's magically sealed, and if broken the scroll will combust.  What did they want you to do with it?")
end


function dlg12(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "What's tracking powder?", "dlg14")
AddConversationOption(conversation, "You want me to continue acting as courier?", "dlg13")
StartConversation(conversation, NPC, Spawn, "Too good, 'ndeed!  'Ere let me sprinkle it with tracking powder, and then deliver it.")
end


function dlg13(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "That's useful.", "dlg15")
StartConversation(conversation, NPC, Spawn, "Yes!  And now we can track the scroll to its final destination.")
end

function dlg14(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "That's useful.", "dlg15")
StartConversation(conversation, NPC, Spawn, "A magical concoction that will allow us to track the scroll to its destination.")
end

function dlg15(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, SmugglersSecrets, 3)
conversation = CreateConversation() 
AddConversationOption(conversation, "I'm going.")
StartConversation(conversation, NPC, Spawn, "Quite, quite.  Now 'urry along, less we miss our chance!")
end

function dlg16(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1019.mp3", "", "", 0, 0, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "Don't break a gasket.  I gave the scroll to the dark elf that showed up.", "dlg17")
StartConversation(conversation, NPC, Spawn, "Do tell, do tell!  What 'appened?")
end

function dlg17(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, SmugglersSecrets, 5) 
conversation = CreateConversation() 
AddConversationOption(conversation, "Thank you.")
StartConversation(conversation, NPC, Spawn, "Excellent!  'Ere.  Take this for your troubles.")
end

function dlg2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I hear a task coming on.", "dlg2_2")
	AddConversationOption(conversation, "Let me guess, i can get you some.", "dlg2_2")
	StartConversation(conversation, NPC, Spawn, "Aye, there is!  What's bein' shipped, where?  What dark elves wanna help others?  Trackin' the items is key!  'Cept, it's too bad I'm out of the trackin' powder.")    
end

function dlg2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I can do that.", "offer2")
	AddConversationOption(conversation, "I'm gonna pass on that one")
	StartConversation(conversation, NPC, Spawn, "Sassy!  Talk'n like that is how I lost my tongue, you know.  At sea, they don't take kindly to such.  Wait!  You could get me sa' more.  Good idea!")
end



function dlg2_3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    AddConversationOption(conversation, "I do.", "dlg2_4")
    AddConversationOption(conversation, "I have not let you down.")
	StartConversation(conversation, NPC, Spawn, "I 'ave the potion all set.  You've got the wisp embers?")
end

function dlg2_4(NPC, Spawn)
    SetStepComplete(Spawn, CratesOnTheNerves, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yeah, yeah. I got it.")
	AddConversationOption(conversation, "Dawdle...heh heh.")
	StartConversation(conversation, NPC, Spawn, "Good, good!  There we go.  Now take this pouch of trackin' powder, and sprinkle it on any of 'em empty crates that are in the Blackshield Smugglers' outpost.  'Urry now.  Don't dawdle!")
end


function dlg2_5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "No... Just went on a wild crate chase across the Commonlands.", "dlg2_6")
	StartConversation(conversation, NPC, Spawn, "You seem a wee out'a breath.  Somethin' wrong?")	
end	


function dlg2_6(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()	
    AddConversationOption(conversation, "The crates were taken near Fallen Gate where Thexians were excavating and filling the crates with gemstones and sellable ores.", "dlg2_7")
	StartConversation(conversation, NPC, Spawn, "Do tell!  Where did the crates end up?  What did you finds?")
end

function dlg2_7(NPC, Spawn)
     FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()	
	PlayAnimation(NPC, 12030)
	AddConversationOption(conversation, "Seems that isn't the case anymore.", "dlg2_8")
	StartConversation(conversation, NPC, Spawn, "Hmm.  That is curious.  I was of thinkin' that they were only in Nektulos.")
end	

function dlg2_8(NPC, Spawn)
     FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()	
		AddConversationOption(conversation, "It made its way to the Longshadow Alley district of Freeport.", "dlg2_9")
	StartConversation(conversation, NPC, Spawn, "What of the scroll?  What's the map show you of it?")
end


function dlg2_9(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I have no further use for it.", "dlg3_0")
	AddConversationOption(conversation, "Sure.", "dlg3_0")
	StartConversation(conversation, NPC, Spawn, "Longshadow Alley?  What could be there?  Lemme see the map.")
end


function dlg3_0(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "That is where the map last showed it.", "dlg3_1")
	AddConversationOption(conversation, "Yeah.  I'm certain.", "dlg3_1")
	StartConversation(conversation, NPC, Spawn, "You sure it was in Longshadow Alley?  It is gone now!")
end


function dlg3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    AddConversationOption(conversation, "I know. I know. I'll go check'em out.", "dlg3_2")
	AddConversationOption(conversation, "And you want me to go snoop some more.", "dlg3_2")
	StartConversation(conversation, NPC, Spawn, "Spell must have been brok'n or the scroll destroyed.  Oh, lookee!  The crates are back at the smugglin' dock.  What luck!")
end

function dlg3_2(NPC, Spawn)
    PlayAnimation(NPC, 11286)
    SetStepComplete(Spawn, CratesOnTheNerves, 11)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Well, don't")
	AddConversationOption(conversation, "What if i were?")
	AddConversationOption(conversation, "Qeynos.  What a joke.")
	StartConversation(conversation, NPC, Spawn, "Oh, wonderful idea!  I'm almost thinkin' you from Qeynos the way you are so obligin'.")
end


function dlg3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "The Thexians are sending the crates back with gems and ore to the smugglers. They then sell the goods. That is the contract.", "dlg3_4")
	StartConversation(conversation, NPC, Spawn, "Stop with the suspense!")
end	

function dlg3_4(NPC, Spawn)
    PlayAnimation(NPC, 12030)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What would the Thexians gain?", "dlg3_5")
	AddConversationOption(conversation, "I can't make sense of it.", "dlg3_5")
	StartConversation(conversation, NPC, Spawn, "Wha?  Then they are fundin' the smugglin' with the shipments, themselves.  Payment is the shipment of gems 'n ore.")
end    


function dlg3_5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    AddConversationOption(conversation, "Does that help you?", "dlg3_6")
	AddConversationOption(conversation, "Doesn't mean I'm interested.", "dlg3_6")
	StartConversation(conversation, NPC, Spawn, "Oh!  So sneaky.  They been fundin' the smugglers as a diversion.  That is why we had not realized their growth and activities in the Commonlands!")
end    


function dlg3_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Good.  Then you can afford to pay me for my services.", "quest2_complete")
	StartConversation(conversation, NPC, Spawn, "We Buccaneers may be able to break in on this 'n extract a bit of that profit.  Either by attacks at sea or by gettin' protection taxes from the smugglers themselves, now that we know the plans, too.")
end


function quest2_complete(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SetStepComplete(Spawn, CratesOnTheNerves, 13)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Right you are.")
	StartConversation(conversation, NPC, Spawn, "I know, ya' rapscallion!  Here is the payment.  You earned it.")
end



function OPTION1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You're not going to ask me to follow it, are you?", "OPTION2")
	AddConversationOption(conversation, "Back to the city.  That's interesting.", "OPTION3")
	StartConversation(conversation, NPC, Spawn, "Didn't mean to jump.  I think I was just distracted.  I was busy watchin' the scroll you delivered earlier.  So far, it's traveled southeast followin' the river towards Freeport.")
end


function OPTION2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "That's interesting, too.  Where am I going?", "OPTION5")
	StartConversation(conversation, NPC, Spawn, "No, no.  Silly.  I'll keep my good eye on that while you're gone.")
end

function OPTION3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayAnimation(NPC, 10745)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "That's interesting, too.  Where am I going?", "OPTION5")
	StartConversation(conversation, NPC, Spawn, "Yes.  I must keep my good eye on that while you're gone.")
end


function OPTION4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay, but then you cannot track the scroll.", "Option15")
	StartConversation(conversation, NPC, Spawn, "Don't know.  But the map does!  Follow the crates' movement and see where they go.  Here, you take the map.")
end


function OPTION5(NPC, Spawn)
    SetStepComplete(Spawn, CratesOnTheNerves, 4)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I had to ask.  Okay.  I'll be back.")
	StartConversation(conversation, NPC, Spawn, "Oh... No matter!  You can keep an eye on it as you follow the crates.")
end





--  QUEST OFFER FUNCTIONS

function offer(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, SmugglersSecrets)
end

function offer2(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, CratesOnTheNerves)
end




function respawn(NPC)
 spawn(NPC)
end


-- FOR CORRECT DISPLAY OF QUEST FEATHER ICON ABOVE NPC HEAD

function InRange(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
        if not HasQuest(Spawn, SmugglersSecrets) then
    ProvidesQuest(NPC, SmugglersSecrets)
     elseif HasCompletedQuest(Spawn, SmugglersSecrets) and not HasQuest(Spawn, CratesOnTheNerves) and not HasCompletedQuest(Spawn, CratesOnTheNerves) then
    ProvidesQuest(NPC, CratesOnTheNerves)
	PlayFlavor(NPC, "", "Psst!  You there!  C'mere and give me a hand.", "", 1689589577, 4560189, Spawn)
end
   end
	
function LeaveRange(NPC, Spawn)

end

