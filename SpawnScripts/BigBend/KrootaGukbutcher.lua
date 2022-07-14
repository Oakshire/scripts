--[[
	Script Name		: SpawnScripts/BigBend/KrootaGukbutcher.lua
	Script Purpose	: Kroota Gukbutcher
	Script Author	: torsten
	Script Date		: 2022.07.11
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local AyRubbish = 5632
local RatBarsh = 5633
local MuchAdoAboutRallos = 5634
local TheFumeFireCeremony = 5635
local MoreBarshing = 5636

function spawn(NPC)
    ProvidesQuest(NPC, AyRubbish)
    ProvidesQuest(NPC, RatBarsh)
    ProvidesQuest(NPC, MuchAdoAboutRallos)
    ProvidesQuest(NPC, TheFumeFireCeremony)
    ProvidesQuest(NPC, MoreBarshing)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    local race = GetRace(Spawn)
    FaceTarget(NPC, Spawn)
    if race == 12 then
        if not HasQuest(Spawn, AyRubbish) and not HasCompletedQuest(Spawn, AyRubbish) then
	        Dialog14(NPC, Spawn)
        end
        if HasCompletedQuest(Spawn, AyRubbish) then
            if not HasQuest(Spawn, RatBarsh) and not HasCompletedQuest(Spawn, RatBarsh) then
                Dialog50(NPC, Spawn)
            end
        end
        if HasCompletedQuest(Spawn, RatBarsh) then
            if not HasQuest(Spawn, MuchAdoAboutRallos) and not HasCompletedQuest(Spawn, MuchAdoAboutRallos) then
                Dialog31(NPC, Spawn)
            end
        end
        if HasCompletedQuest(Spawn, MuchAdoAboutRallos) then
            if not HasQuest(Spawn, TheFumeFireCeremony) and not HasCompletedQuest(Spawn, TheFumeFireCeremony) then
                Dialog12(NPC, Spawn)
            end
        end
        if HasCompletedQuest(Spawn, TheFumeFireCeremony) then
            if not HasQuest(Spawn, MoreBarshing) and not HasCompletedQuest(Spawn, MoreBarshing) then
                Dialog2(NPC, Spawn)
            end
        end
        if GetQuestStep(Spawn, AyRubbish) == 3 then
            SetStepComplete(Spawn, AyRubbish, 3)
            Dialog50(NPC, Spawn)
        end
        if GetQuestStep(Spawn, RatBarsh) == 2 then
            SetStepComplete(Spawn, RatBarsh, 2)
            Dialog31(NPC, Spawn)
        end
        if GetQuestStep(Spawn, MuchAdoAboutRallos) == 7 then
            Dialog19(NPC, Spawn)
        end
        if GetQuestStep(Spawn, MuchAdoAboutRallos) == 9 then
            SetStepComplete(Spawn, MuchAdoAboutRallos, 9)
            Dialog12(NPC, Spawn)
        end
        if GetQuestStep(Spawn, TheFumeFireCeremony) == 1 then
            SetStepComplete(Spawn, TheFumeFireCeremony, 1)
            Dialog1(NPC, Spawn)
        end
        if GetQuestStep(Spawn, TheFumeFireCeremony) == 7 then
            SetStepComplete(Spawn, TheFumeFireCeremony, 7)
            Dialog2(NPC, Spawn)
        end
    end
    
    RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,5)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1002.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1002.mp3", 0, 0, Spawn)
	elseif choice == 4 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1002.mp3", 0, 0, Spawn)
	elseif choice == 5 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", 0, 0, Spawn)
	end
	
end

--======================Quest 1

function Dialog14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You have chosen to speak to Kroota at a bad time.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher001.mp3", 3265176935, 3633009875)
	Dialog.AddOption("Why is this a bad time?", "Dialog46")
	Dialog.AddOption("I will leave you now.")
	Dialog.Start()
end

function Dialog46(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Sorio shamed me, and then charged me with the clean up of the rubbish that was left.  A stinky human told me to clean.  HA!  Ogres are above trash clean up, and above humans, too! ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher002.mp3", 4072542229, 1940121523)
	Dialog.AddOption("Trash cleaning is not above me, when it is made worth my while. ", "Dialog43")
	Dialog.AddOption("Then don't do it.")
	Dialog.Start()
end

function Dialog43(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That would show 'em, but uh, it may also cause my death.  Captain Sorio kills those that do not do as he orders.  I don't know about you, but Kroota has more barshing in my future.  Ogres have survived too much to just let 'rselves be killed for stupid reasons. ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher003.mp3", 3742107652, 2525294944)
	Dialog.AddOption("Captain Sorio would kill you for not cleaning? ", "Dialog22")
	Dialog.Start()
end

function Dialog22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Sorio'd kill for that reason.  Sorio'd kill for any reason.  He's like an ogre, that way. ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher004.mp3", 2600931554, 3262055191)
	Dialog.AddOption("I wish not to die while under the heels of 'nferior races! ", "Dialog9")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Here, here!  You are much like Kroota.  My death will be in praise of Rallos!  Hmm.  I bet you need coin to spend in this worn down slum.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher005.mp3", 2504790110, 1538736293)
	Dialog.AddOption("Some coin would be useful. ", "Dialog44")
	Dialog.Start()
end

function Dialog44(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You do not wish to do all you can to venerate our warlord god?!")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher024.mp3", 3740108603, 543623500)
	Dialog.AddOption("I am worried of my future in Freeport, and do not wish to find trouble with Captain Sorio.", "Dialog41")
	Dialog.Start()
end

function Dialog41(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You clean up the rubbish, and I will make it worth it to you.  Our fight was at the gate to South Freeport. ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher006.mp3", 1413745133, 1208180432)
	Dialog.AddOption("Better make it worth a lot.")
	Dialog.Start()
	if not HasQuest(Spawn, AyRubbish) and not HasCompletedQuest(Spawn, AyRubbish) then 
	    OfferQuest(NPC, Spawn, AyRubbish)
	end
end

--===========================Quest 2

function Dialog50(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The gate area is cleaned?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher007.mp3", 2623092236, 75099415)
	Dialog.AddOption("Yes. You said you were gonna' make it worth my while. ", "Dialog45")
	Dialog.Start()
end

function Dialog45(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Kroota is no troll!  My word to you was good.  Now Lucan's enforcer will have to find another reason to push this ogre around.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher009.mp3", 2002919255, 713963471)
	Dialog.AddOption("Is it just you that Lucan's enforcers push around?", "Dialog20")
	Dialog.AddOption("Do you have anything else I can do, for some more coin? ", "Dialog20")
	Dialog.Start()
end

function Dialog20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Lucan's enforcers abuse all Ogres...and trolls...and Iksar.  'Err, all of us not human.  'Cept those that join Lucan's army.  They're not pushed 'round as much.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher010.mp3", 208115148, 3916212987)
	Dialog.AddOption("Our brethren serve in the army?", "Dialog48")
	Dialog.Start()
end

function Dialog48(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Do not question it!  The humans may have forgotten our past, but don't you forget!  Twice our god has used us as his army and brought about the annihilation and subjugation of the masses.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher011.mp3", 3527113211, 3377368598)
	Dialog.AddOption("When the time comes, we rise up.  The sounds of bones snapping and flesh screaming will be glory to Rallos Zek. ", "Dialog5")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Are you willing to help us praise our god, today?  The last ceremony was 'nterrupted, as you know. ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher012.mp3", 1473927549, 3333840448)
	Dialog.AddOption("What can I do to bring glory to Rallos? ", "Dialog23")
	Dialog.AddOption("I will return later, when I am able to better serve. ")
	Dialog.Start()
end

function Dialog23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Since the fight ceremony was stopped, we should perform a ceremony of another type. There are some items that we need for this.  If you can barsh rats and bring back their carcasses, I will get the rest.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher013.mp3", 2032062341, 3293141505)
	Dialog.AddOption("Barshing sounds good.", "Dialog26")
	Dialog.Start()
end

function Dialog26(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good.  You will have the best luck finding rodents at the gate leading to the Sprawl.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher045.mp3", 1844945483, 2398511964)
	Dialog.AddOption("I'll be back with the carcasses.")
	Dialog.Start()
    if not HasQuest(Spawn, RatBarsh) and not HasCompletedQuest(Spawn, RatBarsh) then 
        OfferQuest(NPC, Spawn, RatBarsh)
    end
end

--===================Quest 3

function Dialog31(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You have returned with the rat carcasses?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher015.mp3", 1190787856, 3202785791)
	Dialog.AddOption("Yes, but I do not know how you plan to use these.  There is little left of their bodies for use in a ceremony. ", "Dialog25")
	Dialog.Start()
end

function Dialog25(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Lucan's soul!  How hard are you smashing ratonga to have little left of their bodies? ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher046.mp3", 355888102, 1264655857)
	Dialog.AddOption("Ratonga?!  ", "Dialog39")
	Dialog.Start()
end

function Dialog39(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Haa haa haa.  Yes, they are the vermin I had meant for you to barsh, but I think these can still be used. ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher047.mp3", 1978555752, 3838216891)
	Dialog.AddOption("Oh, good.", "Dialog3")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It is a necessary part of the ceremony, as it symbolizes the destruction wrought in Rallos' name, and carries the stench of death to his hiding place for his 'njoyment. ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher051.mp3", 3241586378, 1169992703)
	Dialog.AddOption("What should we do?", "Dialog4")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("There is more needed for the ceremony to praise Rallos.  If you assist me, I will make it worth your time. ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher016.mp3", 529474785, 1839567898)
	Dialog.AddOption("What do you need? ", "Dialog33")
	Dialog.AddOption("I am busy now, perhaps another time.")
	Dialog.Start()
end

function Dialog33(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The fume and fire ceremony is one that requires many sacrifices.  Blood of his enemies, flesh of the inferior, and incense. ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher017.mp3", 1432372035, 3833716814)
	Dialog.AddOption("What should I hunt for the flesh and blood?", "Dialog32")
	Dialog.Start()
end

function Dialog32(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("No need ta hunt.  Speak with Zukogg for the flesh, Barch for the blood, and Crattok, the troll for the incense.  Do not speak to anyone else about this ceremony.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher020.mp3", 2057670634, 3634328658)
	Dialog.AddOption("I will go speak to each now")
	Dialog.Start()
	if not HasQuest(Spawn, MuchAdoAboutRallos) and not HasCompletedQuest(Spawn, MuchAdoAboutRallos) then 
        OfferQuest(NPC, Spawn, MuchAdoAboutRallos)
    end
end

--============Quest 4

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You have brought back the incense, blood, and skins.  You are good!")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher022.mp3", 3351795845, 308516535)
	Dialog.AddOption("Thank you.", "Dialog37")
	Dialog.Start()
end

function Dialog37(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("These are what we needed!  Now we can perform the ceremony to glorify Rallos Zek!  I would like you to be 'nvolved further.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher023.mp3", 908775135, 4103882964)
	Dialog.AddOption("That depends on what is expected of me.", "Dialog18")
	Dialog.AddOption("Yes.  My body is Rallos' weapon of destruction.", "Dialog18")
	Dialog.AddOption("No.")
	Dialog.Start()
end

function Dialog18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hmm.  I understand.  That is why I am not going to be 'nvolved, myself.  This tribute is gonna be much more sneaky.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher052.mp3", 1795144355, 1500995803)
	Dialog.AddOption("Go on.", "Dialog16")
	Dialog.AddOption("Sounds too risky for me.")
	Dialog.Start()
end

function Dialog16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Spoken like a true follower of Rallos.  You are perfect to fulfill my duties at this tribute.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher053.mp3", 1170038578, 2696733239)
	Dialog.AddOption("You are not going to be there?", "Dialog34")
	Dialog.Start()
end

function Dialog34(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("No.  I am not going to be involved, myself.  I fear my presence will cause more unwanted attention.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher054.mp3", 463641082, 4194162185)
	Dialog.AddOption("What should I do to help?", "Dialog10")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Go to Somdoq, in the Western most room in the alleys of Big Bend.  He will be performing the rites with Lochugh, and tell you what to do with the items.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher025.mp3", 3329043126, 3925179850)
	Dialog.AddOption("What items?")
	Dialog.Start()
	if not HasQuest(Spawn, TheFumeFireCeremony) and not HasCompletedQuest(Spawn, TheFumeFireCeremony) then 
        OfferQuest(NPC, Spawn, TheFumeFireCeremony)
    end
end

--==================Quest 5

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You're back!  Was there any trouble at the ceremony?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher056.mp3", 3672867855, 2947104449)
	Dialog.AddOption("No.", "Dialog27")
	Dialog.Start()
end

function Dialog27(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good.  You did not perform this task with a promise of reward, but I find you deserving, as a fellow child of Rallos.  Take these. They may help you bring victory on the battlefield.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher057.mp3", 3192900428, 1993373543)
	Dialog.AddOption("They will be put to good use at sometime.", "Dialog30")
	Dialog.Start()
end
function Dialog30(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You have proven that you can keep our secrets.  I 'xplained before how we must hide our true devotions, as we work with Lucan's army.  You can do this.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher027.mp3", 4152035504, 2450580515)
	Dialog.AddOption("I can follow the orders of Lucan's Enforcers, while the death and destruction I cause will bring delight to Rallos.", "Dialog47")
	Dialog.Start()
end

function Dialog47(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("'Xactly!  Go see Enforcer Kurdek in the Sprawl to start yer service.  Any suspicion of your involvement wit' me will be calmed when you volunteer to work for him.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher029.mp3", 4272152175, 2492136668)
	Dialog.AddOption("I will go see this Enforcer Kurdek then.", "Dialog42")
	Dialog.AddOption("I do not have time to see anyone else, I have my own things to do.")
	Dialog.Start()
end

function Dialog42(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good!  He will be waiting for you, good luck!")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher059.mp3", 145399473, 3077625790)
	Dialog.AddOption("Good days ahead.  May many fall under your heels and feel your sword.")
	Dialog.Start()
	if not HasQuest(Spawn, MoreBarshing) and not HasCompletedQuest(Spawn, MoreBarshing) then 
        OfferQuest(NPC, Spawn, MoreBarshing)
    end
end

--==============Ending

function Dialog15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I have no time to waste on pleasantries.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher031.mp3", 2935021195, 1346365214)
	Dialog.AddOption("And I have no need to speak to you.")
	Dialog.Start()
end

function Dialog35(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I was praising Rallos with a good fight.  Hand to hand, we tore and hit.  Bones cracked, blood spilt.  It was glorious!")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher032.mp3", 108721550, 3476457472)
	Dialog.AddOption("You fight to praise Rallos?", "Dialog29")
	Dialog.AddOption("Who is Rallos?", "Dialog17")
	Dialog.AddOption("If the fight was so good, then why the temper now?")
	Dialog.Start()
end

function Dialog29(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I gladly prove my strength and defeat the weak, in the name of our warlord god!  All was created in conflict, and it's end will come in conflict.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher033.mp3", 3903011608, 1652274729)
	Dialog.AddOption("If the fight was so good, then why the temper now? ", "Dialog35")
	Dialog.Start()
end

function Dialog17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Rallos Zek is our god! The mighty warlord that set us upon this world to sew justice and cull the weak.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher034.mp3", 2040298807, 528110736)
	Dialog.AddOption("Your fights praise Rallos?", "Dialog8")
	Dialog.Start()
end


function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("There was warning of one 'err Lucan's enforcers coming through.  We had enough time to stop the fight, but not to hide the signs of it. Captain Sorio saw the broken vases and blood stained dirt.  He knew we were fighting.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher035.mp3", 2820031606, 1544534465)
	Dialog.AddOption("Fighting is punished? ", "Dialog7")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It can be, and always will be, if the fight is giving praise to a god that is seen as a threat to those in power.  ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher036.mp3", 467609233, 3129490057)
	Dialog.AddOption("What did he do? ", "Dialog28")
	Dialog.Start()
end

function Dialog28(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes.  We would not be 'llowed to live in Freeport if it were not for those that fight in Lucan's army.  The army is a good place to strengthen and prove oneself, so many want to join.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher037.mp3", 2583743198, 2818957735)
	Dialog.AddOption("Seems a good arrangement, as long as you are willing to do as told.", "Dialog13")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That is key.  Do what you're told, no matter if you are in the army or not, so that none suspects the treachery that lurks within you.  ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher038.mp3", 1150147485, 3675078980)
	Dialog.AddOption("What treachery? ", "Dialog21")
	Dialog.AddOption("I hide no treachery.", "Dialog21")
	Dialog.Start()
end

function Dialog21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The burning of your blood to cause mayhem and strife.  You cannot deny the reason Rallos Zek put us here, as it lies within us all.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher039.mp3", 2748327063, 2585235468)
	Dialog.AddOption("Isn't Rallos Zek gone, like the other gods? ", "Dialog38")
	Dialog.Start()
end

function Dialog38(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Of course not!  All of us Ogres are honorable, and have given our word to serve The Overlord!")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher040.mp3", 1406797368, 434503538)
	Dialog.AddOption("Especially, when it benefits us.", "Dialog36")
	Dialog.Start()
end

function Dialog36(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That which benefits us, brings glory to Rallos Zek.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher041.mp3", 2015996407, 2753891411)
	Dialog.AddOption("Isn't Rallos Zek gone, like the other gods? ", "Dialog49")
	Dialog.Start()
end

function Dialog49(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The other gods were weak, and have fled or were slain, but Rallos is still here.  He proved he was, as he 'nsured our survival from the Green Mist.  He must be hiding and biding his time 'til we can raise up under his name, once more.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher042.mp3", 2135603587, 4171746820)
	Dialog.AddOption("What green mist? ", "Dialog40")
	Dialog.AddOption("You think we will rise up, once more?", "Dialog40")
	Dialog.Start()
end

function Dialog40(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The Green Mist that brought about the defeat of the Rallosian army just as we were on the verge of world domination.  Most of the world was under our heel.  Qeynos and Freeport were crumbling.  Then the mist came through, and decimated our ranks.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher043.mp3", 1623693908, 3453204828)
	Dialog.AddOption("What was it?", "Dialog6")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I do not know.  I know it killed all in it's path.  Ogre and Orc alike.  Only those in very remote areas of the world survived it.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher044.mp3", 102047294, 1266054303)
	Dialog.AddOption("You think we will rise up, once more?")
	Dialog.Start()
end

--================================ MuchAdoAboutRallos Step 7

function Dialog19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Do you have the incense?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher048.mp3", 3183737106, 890782171)
	Dialog.AddOption("No.  That Troll woman is demanding silver for it. ", "Dialog24")
	Dialog.Start()
end

function Dialog24(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Trolls have no sense of 'n object's worth to others.  The key to paying a troll, 'specially Crattok, is to give 'em something they think is worth their money. ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher049.mp3", 3661999476, 2150102093)
	Dialog.AddOption("What do they prize? ", "Dialog11")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Food.  Your rat carcasses have come in useful! ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher050.mp3", 1650066431, 2024099266)
	Dialog.AddOption("Good.  I would rather spend my coin, how I like.")
	Dialog.Start()
	SetStepComplete(Spawn, MuchAdoAboutRallos, 7)
end

--============================= Quest 4 Step 1

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The blood, skin and incense that you had collected earlier to honor Rallos Zek.  Take them to Somdoq.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/kroota_gukbutcher/fprt_hood01/newbie_path_ogre/krootagukbutcher058.mp3", 3108767778, 618795226)
	Dialog.AddOption("I will not disappoint.")
	Dialog.Start()
end