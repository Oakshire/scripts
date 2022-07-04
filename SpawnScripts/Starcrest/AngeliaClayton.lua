--[[
	Script Name	: SpawnScripts/Starcrest/AngeliaClayton.lua
	Script Purpose	: Angelia Clayton 
	Script Author	: Dorbin
	Script Date	: 06.29.2022
	Script Notes	: 
--]]


require "SpawnScripts/Generic/DialogModule"

local HailCheck = false

function spawn(NPC)
AddTimer(NPC, 5000, "EmoteLoop")
ProvidesQuest(NPC,239)
end

function HailReset(NPC)
    HailCheck = false
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
else
Dialog1(NPC, Spawn)
end
end

function Dialog1(NPC, Spawn)
    HailCheck = true
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "curtsey", 0, 0, Spawn)
	Dialog.AddDialog("Hello to you!  If you enjoy my dancing please be sure to leave a tip on the counter!")
	Dialog.AddVoiceover("voiceover/english/angelia_clayton/qey_village02/angeliaclayton.mp3", 1086160097, 3441597850)
 	if not HasCompletedQuest (Spawn, 239) and not HasQuest (Spawn, 239) then 
	Dialog.AddOption("You put on quite the show here!","Dialog2")
    end
    if GetQuestStep (Spawn, 239)==2 then 
	Dialog.AddOption("Sorry for interrupting your routine. I've actually returned with a letter from your sister.","Delivered")
    end
    Dialog.AddOption("Thanks.  I'll consider it.")
	Dialog.Start()
    AddTimer(NPC,32000,"HailReset")
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddDialog("Oh, I try!  If erudites had their way we would all be sitting quietly with our noses in a book.  My dancing isn't appreciated either- or at least that's what my empty coin purse leads me to believe...  I wonder if my sister in Nettleville Hovel is doing well.  She's a dancer too!")
	Dialog.AddVoiceover("voiceover/english/angelia_clayton/qey_village02/angeliaclayton000.mp3", 4082583317, 1566761938)
	Dialog.AddOption("It's hard to say about your sister.  I'd guess anything is better than your reception here.", "Dialog3")
	Dialog.AddOption("Well, good luck with all that!")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "shrug", 0, 0, Spawn)
	Dialog.AddDialog("Well, anyway.  You seem to be a nice enough person.  Do you think you could take a note to her from me?  Her name is Karrie Clayton.  I don't have any money to pay you, but I really would appreciate it!")
	Dialog.AddVoiceover("voiceover/english/angelia_clayton/qey_village02/angeliaclayton001.mp3", 1437539405, 2726710155)
	Dialog.AddOption("I'd be happy to deliver this letter to your sister.", "QuestBegin")
	Dialog.AddOption("A few drinks for me on the house and I'm more than happy to help.", "QuestBegin")
	Dialog.AddOption("Sadly, I won't be that way anytime soon.")
	Dialog.Start()
end

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, 239)
end


function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    SetStepComplete(Spawn, 239, 2)
    PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
	Dialog.AddDialog("It's good to see you again!  My coin purse is still empty, but I'm happy for the note!  It says here she's the main attraction in the village!  I just might accept this offer to be a backup dancer!")
	Dialog.AddVoiceover("voiceover/english/angelia_clayton/qey_village02/angeliaclayton003.mp3", 1761828198, 3995688486)
	Dialog.AddOption("Hope it works out!  Thanks for the drinks.")
	Dialog.Start()
end

function EmoteLoop(NPC)
    if HailCheck == true then
    AddTimer(NPC,26100,"EmoteLoop")
    else
    local emoteChoice = MakeRandomInt(1,4)

    if emoteChoice == 1 then
-- flirt
        PlayAnimation(NPC, 11557)
        AddTimer(NPC, MakeRandomInt(23000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- kiss
        PlayAnimation(NPC, 11762)
        AddTimer(NPC, MakeRandomInt(5000,8000), "EmoteLoop")	
    
    elseif emoteChoice == 3 then
-- dance
        PlayAnimation(NPC, 11298)
        AddTimer(NPC, MakeRandomInt(10000,12000), "EmoteLoop")	
    
    elseif emoteChoice == 4 then
-- curtsey
        PlayAnimation(NPC, 11286)
        AddTimer(NPC, MakeRandomInt(4000,5000), "EmoteLoop")	
     end
end
end