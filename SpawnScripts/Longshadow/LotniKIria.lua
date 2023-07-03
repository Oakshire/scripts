--[[
	Script Name		: SpawnScripts/LongshadowAlley/LotniKIria.lua
	Script Purpose	: Lotni K`Iria
	Script Author	: torsten
	Script Date		: 2022.07.19
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local TheMissingBook = 5681
local MagicalRetribution = 5682

function spawn(NPC)
    ProvidesQuest(NPC, TheMissingBook)
    ProvidesQuest(NPC, MagicalRetribution)
	SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if GetFactionAmount(Spawn,12) <0 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "","","shakefist",0,0, Spawn)
else    
    if not HasCompletedQuest(Spawn, TheMissingBook) then
        	if math.random(0, 100) <= 85 then
        	FaceTarget(NPC, Spawn)
		    PlayFlavor(NPC, "voiceover/english/lotni_k_iria/fprt_hood05/100_std_de_female_lotni_kiria_callout_462c415.mp3", "Another refugee... What do YOU want, peasant?", "", 1297124107, 2736745015, Spawn, 0)
        end
end
end
end



function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,12) <0 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "","","shakefist",0,0, Spawn)
else  
    Dialog1(NPC,Spawn)
    end
end

function Dialog1(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The endless number of refugees who enter my home sickens me, but I doubt boarding up my door would deter people like you. Get out of my sight. I've nothing to offer you.")
    PlayFlavor(NPC, "","","tapfoot",0,0, Spawn)
	Dialog.AddVoiceover("voiceover/english/standard_dark_elf_female/fprt_hood05/std_de_female_lotni_kiria.mp3",3857109569,3713028139)
	
    if CanReceiveQuest(Spawn, TheMissingBook) then
	Dialog.AddOption("I didn't mean to bother you.", "Dialog1a")
    elseif GetQuestStepProgress(Spawn, TheMissingBook)==2 then
	Dialog.AddOption("I found the Ratonga, but she didn't have the book.", "Dialog2")
    end

    if CanReceiveQuest(Spawn, MagicalRetribution) then
	Dialog.AddOption("Are you still searching for your lost book?", "Dialog3")
    end

	Dialog.AddOption("Alright! I'm going.")
	Dialog.Start()
end

--QUEST 1

function Dialog1a(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well I don't appreciate you walking into my home! Because of people like you, I can't leave out any of the precious possessions that remind me of Neriak. In fact, I lost the Fourth Book of Shadowed Mysteries. It's the last of its kind, and I'm certain an intruder took it!")
    PlayFlavor(NPC, "","","stare",0,0, Spawn)
	Dialog.AddVoiceover("voiceover/english/standard_dark_elf_female/fprt_hood05/quests/lotniklria/lotni_x1_initial.mp3",679420375,3622118352)
	Dialog.AddOption("Perhaps I could lend you a hand...", "OfferQuest1")
	Dialog.AddOption("Don't worry. I'll see myself out.")
	Dialog.Start()
end


function OfferQuest1(NPC,Spawn)
    if CanReceiveQuest(Spawn, TheMissingBook) then
    OfferQuest(NPC, Spawn, TheMissingBook)
    end
end

function Dialog2(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well then, did she divulge where my book is? If you are holding out on me I'll twist a dagger so far into your chest I'll...")
    PlayFlavor(NPC, "","","stare",0,0, Spawn)
	Dialog.AddOption("She said some mage in the Sprawl made her do it.", "Dialog2a")
	Dialog.Start()
end

function Dialog2a(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It was him! I knew it! Blast that mage! That wiry little ratonga came to me several months ago asking for training in the magical ways, and I turned him away. Shortly there after, my book went missing. I already confronted him and killed him ... AARRG!! Now I'll never get my book. Uh ... thank you for your help, I guess. ")
    PlayFlavor(NPC, "","","frustrated",0,0, Spawn)
	Dialog.AddOption("Oh! You killed him already? Will you still try to find it?.","Dialog3")
	Dialog.AddOption("Good luck finding it now...")
	Dialog.Start()
        SetStepComplete(Spawn, TheMissingBook, 2)
end


--QUEST 2


function Dialog3(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("No. I'm convinced the ancient book is lost forever, and it was the only book salvaged from Neriak before it collapsed. But what infuriates me even more is that the book's ancient secrets spread to those ratonga in the Sprawl who make a mockery of art. ")
    PlayFlavor(NPC, "","","no",0,0, Spawn)
	Dialog.AddOption("Let me give these ratonga what they deserve.","OfferQuest2")
	Dialog.AddOption("Well, perhaps you should keep a better eye on your things.")
	Dialog.Start()
end

function OfferQuest2(NPC,Spawn)
    if CanReceiveQuest(Spawn, TheMissingBook) then
    OfferQuest(NPC, Spawn, TheMissingBook)
    end
end

--
--[[
    if HasCompletedQuest(Spawn, TheMissingBook) then
        if not HasQuest(Spawn, MagicalRetribution) and not HasCompletedQuest(Spawn, MagicalRetribution) then
            OfferQuest(NPC, Spawn, MagicalRetribution)
        end
    end 
    if GetQuestStep(Spawn, TheMissingBook) == 2 then
        FaceTarget(NPC, Spawn)
	    Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("That Ratonga did not have the book? The Black Magi must have stolen it then!")
	    Dialog.AddOption("I could check that... for the right price.")
	    Dialog.Start()
        SetStepComplete(Spawn, TheMissingBook, 2)
    elseif GetQuestStep(Spawn, MagicalRetribution) == 2 then
	    FaceTarget(NPC, Spawn)
	    Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("You have killed the Magi? Yes!")
	    Dialog.AddOption("No problem Lotni. Good luck!")
	    Dialog.Start()
        SetStepComplete(Spawn, MagicalRetribution, 2)
    else
	    RandomGreeting(NPC, Spawn)
    end    
end]]--

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/lotni_k_iria/fprt_hood05/100_std_de_female_lotni_kiria_callout_462c415.mp3", "Another refugee... What do YOU want, peasant?", "", 1297124107, 2736745015, Spawn, 0)
	end
end