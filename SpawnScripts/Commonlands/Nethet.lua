--[[
    Script Name    : SpawnScripts/Commonlands/Nethet.lua
    Script Author  : Premierio015
    Script Date    : 2020.11.16 09:11:28
    Script Purpose : 
                   : 
--]]

local TheMysteriousMissingShipment = 421
local AFriendInNeed = 422 

function spawn(NPC)
ProvidesQuest(NPC, AFriendInNeed)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    if HasQuest(Spawn, TheMysteriousMissingShipment) and GetQuestStep(Spawn, TheMysteriousMissingShipment)  == 1 or GetQuestStep(Spawn, TheMysteriousMissingShipment) == 2 and not HasQuest(Spawn, AFriendInNeed) and not HasCompletedQuest(Spawn, AFriendInNeed) then
    PlayFlavor(NPC, "nethet/commonlands/quests/nethet/nethet001.mp3", "", "", 2714946193, 3558471860, Spawn)
    AddConversationOption(conversation, "Brandus sent me to talk to you about a missing shipment of his.  Do you know anything about it?", "dlg1")
    AddConversationOption(conversation, "Nothing right now, Nethet.")
    StartConversation(conversation, NPC, Spawn, "Yous comes to Nethet to speaks of things yes?  What's it that you wants to knows?")

    elseif HasCompletedQuest(Spawn, AFriendInNeed) and GetQuestStep(Spawn, TheMysteriousMissingShipment) == 2 then
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "nethet/commonlands/quests/nethet/nethet015.mp3",  "", "", 1826974413, 3018739056, Spawn)
    AddConversationOption(conversation, "What did you find out?", "dlg10")
    AddConversationOption(conversation, "I'm not interested in any information you have anymore.  Good day.", "dlg10")
    StartConversation(conversation, NPC, Spawn, "I remembers what yous lookings for.  Yes, I keeps promises, bad for businesses not to.  I spoke to manys contacts and finds information on your friends missings cargo.")

   elseif GetQuestStep(Spawn, TheMysteriousMissingShipment) == 3  then
   FaceTarget(NPC, Spawn)
   dlg12(NPC, Spawn)

    elseif GetQuestStep(Spawn, AFriendInNeed) == 3 then
    AddConversationOption(conversation, "I found him.  Nikora was being hunted by some assassins the Blackshield smugglers had sent after him.", "dlg6")
    AddConversationOption(conversation, "Nothing yet, I'll be back when I find him.")
    StartConversation(conversation, NPC, Spawn, "Yous is back.  Whats did you learn of my friend?")
    elseif GetQuestStep(Spawn, AFriendInNeed) == 1 or GetQuestStep(Spawn, AFriendInNeed) == 2  then
    AddConversationOption(conversation, "Nothing yet, I'll be back when I find him.")
    StartConversation(conversation, NPC, Spawn, "Yous is back.  Whats did you learn of my friend?")
    elseif HasQuest(Spawn, AFriendInNeed) and GetQuestStep(Spawn, AFriendInNeed) == 4 or GetQuestStep(Spawn, AFriendInNeed) == 5 then
     PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1032.mp3", "", "", 0, 0, Spawn)
    elseif GetQuestStep(Spawn, AFriendInNeed) == 6 then
     AddConversationOption(conversation, "You little liar you nearly got me killed!", "dlg8")
     AddConversationOption(conversation, "What kind of a fool do you think I am?  Jereth's thugs nearly killed me!", "dlg8")
     AddConversationOption(conversation, "Nothing as of yet, I still need to deliver the message.")
     StartConversation(conversation, NPC, Spawn, "It's good to see yous again, whats did Jereth have to say about my offers?")
end
   end
 

   

function dlg1(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   if HasQuest(Spawn, TheMysteriousMissingShipment) and GetQuestStep(Spawn, TheMysteriousMissingShipment) == 1 then
   SetStepComplete(Spawn, TheMysteriousMissingShipment, 1)
   end
   conversation = CreateConversation()
   PlayFlavor(NPC, "nethet/commonlands/quests/nethet/nethet002.mp3", "", "", 1863394625, 442531621 , Spawn)
   AddConversationOption(conversation, "Who do you think took the cargo?  Brandus said you might know.", "dlg2")
   AddConversationOption(conversation, "Who was he dealing with?  That might give me a starting point.", "dlg3")
   AddConversationOption(conversation, "I've had enough of this, I'm not getting involved anymore.")
   StartConversation(conversation, NPC, Spawn, "He's lookings for his precious cargoes now is he?  That's what one gets for dealings with others than ratonga, we is always reliables, yes?")
end


function dlg2(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "nethet/commonlands/quests/nethet/nethet003.mp3", "", "", 625310590, 2568881084, Spawn)
 AddConversationOption(conversation, "How would you find these things out?", "dlg3")
 AddConversationOption(conversation, "I've heard enough, I'm not getting involved in this.")
 StartConversation(conversation, NPC, Spawn, "I don't knows... yet, but I cans finds out I promises.")
end


function dlg3(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
   PlayFlavor(NPC, "nethet/commonlands/quests/nethet/nethet004.mp3", "", "", 2219814499, 371999800, Spawn)
   AddConversationOption(conversation, "Sure rat, what did you need from me?", "dlg4")
   AddConversationOption(conversation, "I can help you Nethet, what kind of favor are you talking about?", "dlg4")
   AddConversationOption(conversation, "No thanks, I'm leaving.")
   StartConversation(conversation, NPC, Spawn, "I can't just gives my secrets aways for free now cans I?   Maybe if you do me a favors I helps try to find out for you hrm?  We have a deals?")
end


function dlg4(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
   AddConversationOption(conversation, "Now I understand what you're getting at.  I'll go help this friend of yours.  Where can I find him?", "dlg5")
   AddConversationOption(conversation, "I'm not going to be used like this, forget it rat.")
   StartConversation(conversation, NPC, Spawn, "I has a friends whos in troubles with the Blackshield smugglers.  He went to speaks with thems but I'm not sures they wanted to chat.  I'm thinkin' he's needin' a hand from someones likes you.  If you helps him I'll be thinkin of where Brandus' cargo might be.")
end

function dlg5(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "I will look for your friend, you had better have the information when I get back.",  "offer")
 AddConversationOption(conversation, "It's my pleasure Nethet.", "offer")
 AddConversationOption(conversation, "Whatever rat, I'll be back as soon as I find your friend.", "offer")
 StartConversation(conversation, NPC, Spawn, "He wents north along the coast.  He says the Blackshield have their own dock to do their business just northwest of the flying griffin tower.  Makes sure you come in from the land, they watches the docks carefully and its dangerous.  Look for anothers ratonga, his names is Nikora.")
end

function dlg6(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "nethet/commonlands/quests/nethet/nethet009.mp3", "", "", 1150370066, 2934575179, Spawn)
 AddConversationOption(conversation, "I can do that.  And then you'll tell me what you know of Brandus' shipment?", "dlg7")
 AddConversationOption(conversation, "I'm through doing your dirty work.  The answer is no.")
 StartConversation(conversation, NPC, Spawn, "The Blackshields you say?  Hrm... this is no goods, we can't haves any fightings with thems.  Can you takes this notes to Jereth Blackshield?  He is nones friendly and you'll have to gets close to him through his guards but he should takes it.")
end

function dlg7(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  SetStepComplete(Spawn, AFriendInNeed, 3)
  conversation = CreateConversation()
  PlayFlavor(NPC, "nethet/commonlands/quests/nethet/nethet010.mp3", "", "", 3495504259, 1808986164, Spawn)
  AddConversationOption(conversation, "I'll be back soon.")
  StartConversation(conversation, NPC, Spawn, "Yes, yes, of courses.  You do favors for Nethet, he does favors for you.  Pleases goes now, and gives the notes to Jereth.")
end


function dlg8(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "What were the other options you gave him?", "dlg9")
 AddConversationOption(conversation, "That's my life you were gambling with Nethet!", "dlg9")
 AddConversationOption(conversation, "Forget this, I've had enough of little rats like you.", "dlg9")
 StartConversation(conversation, NPC, Spawn, "Oh, no, no, no!  That's not true, I only gaves Jereth options.  I can't helps if he chooses ones you don't likes.   You were the winner weren't yous?  See, I knows what I'm doings.")
end


function dlg9(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 SetStepComplete(Spawn, AFriendInNeed, 6)
 conversation = CreateConversation()
 AddConversationOption(conversation, "Somewhat, but I'll remember this Nethet.")
 StartConversation(conversation, NPC, Spawn, "Yes, yes, I knows, but you wins and you gets what Nikora owed hims.  It's yours now, here.  That make things all betters now, yes?")
end


function dlg10(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 PlayFlavor(NPC, "nethet/commonlands/quests/nethet/nethet016.mp3", "", "", 2820045080, 397945248, Spawn) 
 conversation = CreateConversation()
 AddConversationOption(conversation, "Why would he want to do that?  Other than being amoral that isn't illegal.", "dlg11")
 AddConversationOption(conversation, "That's horrible!", "dlg11")
 StartConversation(conversation, NPC, Spawn, "He was not dealings with peoples he shoulds.  And his cargoes was not somethings loyal citizens of Freeport should be having.  He was bringings in refugees to haves shipped back outs to sea.")
end

function dlg11(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "What about where this ''cargo'' is now?", "dlg12")
 AddConversationOption(conversation, "Who is this captain he works with?", "captain")
 StartConversation(conversation, NPC, Spawn, "Nots untils he has a sorcerer friend wipes or changes their memories and gives them overs to a captain in the Far Seas Trading Company to take to the Outpost of the Overlord.  He gets a cuts of the coins that Freeport pays for the refugees... twice or maybe even three or more times.")
end


function dlg12(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 if GetQuestStep(Spawn, TheMysteriousMissingShipment) == 2 then
 SetStepComplete(Spawn, TheMysteriousMissingShipment, 2)
 end 
 PlayFlavor(NPC, "nethet/commonlands/quests/nethet/nethet019.mp3", "", "",  196718519, 1918116094, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "I admit your information was worth the trouble.")
 AddConversationOption(conversation, "That was almost worth the trouble.")
 AddConversationOption(conversation, "You call that information?  Bah!")
 StartConversation(conversation, NPC, Spawn, "Yes, yes, backs to business, I'm sorrys for wanderings in my speakings.  The Dervish Cutthroats has thems now, and the sorcerer friend of Brandus.  They be trying to takings his businesses I'm guessings.")
end

 




function captain(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 PlayFlavor(NPC, "nethet/commonlands/quests/nethet/nethet018.mp3", "", "", 190275097, 3939211187, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "Interesting.  Thank you Nethet, now who has the cargo now?", "dlg12")
 StartConversation(conversation, NPC, Spawn, "I don't knows, that I couldn't finds out.  All I coulds find was a notes signed, ''Cap'n V''.")
end


function offer(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 OfferQuest(NPC, Spawn, AFriendInNeed)
end


function respawn(NPC)
 spawn(NPC)
end

