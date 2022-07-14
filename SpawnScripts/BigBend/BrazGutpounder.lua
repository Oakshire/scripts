--[[
	Script Name		: SpawnScripts/BigBend/BrazGutpounder.lua
	Script Purpose	: Braz Gutpounder
	Script Author	: torsten
	Script Date		: 2022.07.12
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local ASubtleReminder = 5637
local TrollishDelights = 5639
local TrollPatrol = 5641
local GnomoreGnomesteaks = 5642
local TrollAdventures = 5643

function spawn(NPC)
    ProvidesQuest(NPC, ASubtleReminder)
    ProvidesQuest(NPC, TrollishDelights)
    ProvidesQuest(NPC, TrollPatrol)
    ProvidesQuest(NPC, GnomoreGnomesteaks)
    ProvidesQuest(NPC, TrollAdventures)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    local race = GetRace(Spawn)
    FaceTarget(NPC, Spawn)
    if race == 14 then
        if not HasQuest(Spawn, ASubtleReminder) and not HasCompletedQuest(Spawn, ASubtleReminder) then
            Dialog10(NPC, Spawn)
        end
        if HasCompletedQuest(Spawn, ASubtleReminder) then
            if not HasQuest(Spawn, TrollishDelights) and not HasCompletedQuest(Spawn, TrollishDelights) then
                Dialog6(NPC, Spawn)
            end
        end 
        if HasCompletedQuest(Spawn, TrollishDelights) then
            if not HasQuest(Spawn, TrollPatrol) and not HasCompletedQuest(Spawn, TrollPatrol) then
                Dialog17(NPC, Spawn)
            end
        end 
        if HasCompletedQuest(Spawn, TrollPatrol) then
            if not HasQuest(Spawn, GnomoreGnomesteaks) and not HasCompletedQuest(Spawn, GnomoreGnomesteaks) then
                Dialog21(NPC, Spawn)
            end
        end 
        if HasCompletedQuest(Spawn, GnomoreGnomesteaks) then
            if not HasQuest(Spawn, TrollAdventures) and not HasCompletedQuest(Spawn, TrollAdventures) then
                Dialog25(NPC, Spawn)
            end
        end 
        if GetQuestStep(Spawn, ASubtleReminder) == 4 then
            SetStepComplete(Spawn, ASubtleReminder, 4)
            Dialog6(NPC, Spawn)
        end
	    if GetQuestStep(Spawn, TrollishDelights) == 3 then
            SetStepComplete(Spawn, TrollishDelights, 3)
            Dialog17(NPC, Spawn)
        end
	    if GetQuestStep(Spawn, TrollPatrol) == 6 then
            SetStepComplete(Spawn, TrollPatrol, 6)
            Dialog21(NPC, Spawn)
        end
	    if GetQuestStep(Spawn, GnomoreGnomesteaks) == 3 then
            SetStepComplete(Spawn, GnomoreGnomesteaks, 3)
            Dialog25(NPC, Spawn)
        end
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,10)

	if choice == 1 then
		PlayFlavor(NPC, "", "Uwic jla dxio hcjwphc bs rc nbo nnmrhfjhbgrp", "", 0, 0, Spawn, 15)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Njmg awq ooky gccwwwr mw nw urs yeoqazuqgkey", "", 0, 0, Spawn, 15)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Ol' Braz fink  gunna go far in dis city!", "", 0, 0, Spawn, 15)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Ol' Braz fink dat  ain't done wif dat fing.", "", 0, 0, Spawn, 15)
	elseif choice == 5 then
		PlayFlavor(NPC, "", "Braz not want nuttin' ta do wit not-a-troll!", "", 0, 0, Spawn, 15)
	elseif choice == 6 then
		PlayFlavor(NPC, "", "Uqzp fiu bbji bxsqilv ob ff lnx vwpbyzfgxdgl", "", 0, 0, Spawn, 15)
	elseif choice == 7 then
		PlayFlavor(NPC, "", "Nznz zyx guan yartcyj fk ud ybq zuexuqdphowk", "", 0, 0, Spawn, 15)
	elseif choice == 8 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1032.mp3", 0, 0, Spawn)
	elseif choice == 9 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1032.mp3", 0, 0, Spawn)
	elseif choice == 10 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1032.mp3", 0, 0, Spawn)
	end
end

--====================== Quest 1

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Huzzah! I knowed Nujam would be comin' soon! Dey sayz so much 'bout ya, ol' Braz couldn't hardly wait for yaz!")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder001.mp3", 2367644174, 3212958772)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Whut ol' Braz want?", "Dialog22")
	Dialog.AddOption("Get on with it, you oaf. It's a travesty that gutter-spoken trolls like you exist.", "Dialog28")
	Dialog.AddOption("A'wright! It's good to be wanted.", "Dialog22")
	Dialog.Start()
end

function Dialog28(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Nujam finks he so smart. Har har har! Not tell you history of why we here den. Dat teach you! Ol' Braz not stupid, been here in da Bend for long time, seen many young trolls get heads bashed in by not listenin'!")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder003.mp3", 2634593249, 1624619122)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Alright, Braz, continue. I didn't truly mean to offend.", "Dialog1")
	Dialog.AddOption("I don't need your history lesson. I'll find my own way!")
	Dialog.Start()
end

function Dialog22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Braz lern da fick new trolls da way of da Bend. Yessir, da Overlord's city don't take so gud to us goin' 'round eatin' everyfing we see no more.")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder002.mp3", 1648756246, 1571329846)
	Dialog.AddLanguage(15)
	Dialog.AddOption("What next? Soon dey have us trolls be eatin' wif forks n' sticks.", "Dialog1")
	Dialog.AddOption("Nujam not need a history lesson! I show Freeport whut it needs, not udder way 'round!")
	Dialog.Start()
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("So den, listen gud! We'z here in da Big Bend. Why Nujam asks? Cuz dey can't keep us well. Dey finks dat t'rowin us in wit da ogres keeps us quiet.")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder004.mp3", 2053971510, 2987636532)
	Dialog.AddLanguage(15)
	Dialog.AddOption("No ogre gunna keep dis troll quiet!", "Dialog19")
	Dialog.AddOption("Do go on.", "Dialog19")
	Dialog.Start()
end

function Dialog19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It work ok, ol' Braz finks. No one botha us in da Bend. Da guards is all ogres n' trolls, picked special for us by da Freeport Militia. Dey knows dere beat, n' dey stick to it.")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder005.mp3", 1186376668, 3038803836)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Daz right! We keeps our own! Say us more!", "Dialog4")
	Dialog.AddOption("Seems appropriate. What else is there?", "Dialog4")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Now ol' Braz gotcha! Wants ta hear more ya do! I tells ya, but it's cuttin' inta da time Braz be needin' for some special work. But I bet a new troll wif lots of da energy could be doin' dis stuff fast. Whutcha say? Help ol' Braz out?")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder006.mp3", 1724164202, 843755403)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Yeh! Nujam help demz dat help Nujam.", "Dialog23")
	Dialog.AddOption("Charming. I suppose I can assist.", "Dialog23")
	Dialog.AddOption("Noz, I dun fink so.")
	Dialog.AddOption("No thanks, I don't think I need more of this.")
	Dialog.Start()
end

function Dialog23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("So, howz it go? Fick-headed Ruzb give Nujam any problems? Ol' Braz get real mean, mean like Ruzb not want!")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder007.mp3", 1102536605, 2439059510)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Him not give me noooo problems. We all gud. I 'splained it to him reel gud.", "Dialog9")
	Dialog.AddOption("Don't worry, I've explained to him the proper... diet.", "Dialog9")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Gud den! Braz tell yaz more when yaz get back. Dere's dis troll we call Fick-headed Ruzb. He keep eatin' da lil' gnomies from o'er in Temple Street. Youz go n' tell him to knock it off if he be doin' it 'gain.")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder008.mp3", 3013529972, 3485417502)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Yessir, mista Braz. I be right back! Tell him not to eat da gnomes. I gots it!", "Dialog20")
	Dialog.AddOption("I suppose so. It wouldn't do to have him be eating the gnomes, I suppose.", "Dialog20")
	Dialog.Start()
end

function Dialog20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("See?! Braz knew he could count on yaz. Nujam is a stand-up troll Braz always sayz! Youz be comin' back in a bit, and ol' Braz be helpin' ya some more. Nujam see, we trolls take da gud care of each other, yessir we do.")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder009.mp3", 4277467869, 198458243)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Yessir we do, yessir we do!")
	Dialog.AddOption("We'll have to wait and see.")
	Dialog.Start()
	if not HasQuest(Spawn, ASubtleReminder) and not HasCompletedQuest(Spawn, ASubtleReminder) then
        OfferQuest(NPC, Spawn, ASubtleReminder)
    end
end

--===============================Quest 2

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Gud, gud! Youz back, n' ol' Braz is ready ta 'splain all da more 'bout whut goes on in da Bend. Youz ready? I knowz ya gots lots ta do in da Big Bend...")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder010.mp3", 2288132986, 2296597755)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Ohs yessir, mista Braz! Goodiee!", "Dialog13")
	Dialog.AddOption("Why Braz Gutpounder, is that a hint of guile I hear?", "Dialog13")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Us trolls is da favoritest people of Cazic-Thule. We knowz he not 'round so much, but sometimes Braz be feelin' like da lil' ones has just a bit more fear in dem o' Braz. Den again, maybe dat's just da blood on Braz' teef.")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder011.mp3", 2333998515, 4037225321)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Har har har, Braz so funny!", "Dialog8")
	Dialog.AddOption("Yes. Very humorous. I almost detected that wit again.", "Dialog8")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Braz not know whut youz talkin' bout. Hush up before da other trolls hear ya, or Braz'll hav' ta get reeeel angry. Youz no like angry Braz.")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder012.mp3", 2019993026, 3107133657)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Alright Braz, I'll bite. What's next?", "Dialog14")
	Dialog.AddOption("I'll just be going now. I don't think I need another history lesson.")
	Dialog.Start()
end

function Dialog14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Some o' da other trolls sayz we shudda been bowin' to da Inkie god, Innoruuk. Not so sayz Braz. Der no fear in dat one's nearness, only da hatred.")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder013.mp3", 3902515970, 2686844030)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Yessir! None of dat weak hate god! All da trollz be worshippin' da Thule!", "Dialog16")
	Dialog.AddOption("You know, there might just be wisdom in that...", "Dialog16")
	Dialog.Start()
end

function Dialog16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("No matter tho'. Braz finks da gods all gone, and we can do whut we wants. An' right now, Braz wants some o' dem big n' juicy rats by da Sprawl gate! Nujam be gettin' dem if he wants some more history. An' ol' Braz may juz hav'a some'tin-some'tin for yaz too!")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder014.mp3", 2937462756, 4237727989)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Datz a nice fing you do, Braz. I help yaz, yes I do!")
	Dialog.AddOption("Oh goodiee! You mean I'll get a treat?!")
	Dialog.Start()
	if not HasQuest(Spawn, TrollishDelights) and not HasCompletedQuest(Spawn, TrollishDelights) then
        OfferQuest(NPC, Spawn, TrollishDelights)
    end
end

--================Quest 3

function Dialog17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Whutz dis? Burned rat? Arrrgh! Braz not ask for BURNED RAT! Der'z no taste wifout da blud! Ptuh! Ol' Braz be spittin' on dem fings.")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder015.mp3", 3734190728, 1696795061)
	Dialog.AddLanguage(15)
	Dialog.AddOption("I so sorry Braz. Fought Braz'd be happy wif da extra touch.", "Dialog26")
	Dialog.AddOption("Well excuse me for appreciating my rat cooked. Where were you raised, honestly?", "Dialog26")
	Dialog.Start()
end

function Dialog26(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Iz fine, Braz be finkin'. Maybe da mizzus can skin dem fings a bit n' let out da juice. Braz said he be helpin' yaz, so here. Braz guesses dat be gud 'nuff for da rats. Come back, n' Braz tellz yaz more.")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder016.mp3", 1632804970, 3876705173)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Fanks Braz! You'ze da bestest!", "Dialog33")
	Dialog.AddOption("You know, I guess that's not a half bad trade for a couple of rats.", "Dialog33")
	Dialog.Start()
end

function Dialog33(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ok, iz yaz ready for da bestest story ever? Dis one was tol' by Braz' ol' troll fahver.")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder017.mp3", 2251732773, 2788874651)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Uhh, I no know whut a fahver is.", "Dialog15")
	Dialog.AddOption("Your common gets worse by the minute. What on Cazic's fearful Norrath is a 'fahver'?", "Dialog15")
	Dialog.Start()
end

function Dialog15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Fahver! You'ze no! 'Zactly same as a... whuts udder word? Oh, yahz, iz like 'Dad'? Anywayz, I be givin' ya da story now. No more 'rruptions, kay?")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder018.mp3", 3468265702, 1290513814)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Okay, you'ze da boss, Braz! Tho, I fink even I can say da wurd 'father'...", "Dialog32")
	Dialog.AddOption("Fine, tell your trite little story, and let's get this over with. I'm not sure how good it can be if you can't manage 'father'.", "Dialog32")
	Dialog.Start()
end

function Dialog32(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ol' Braz'll not pay no 'ttention ta dat lip. So da story is of da routin' of da stupid frogs from da Grobb. Wuz a great victory for da trollz. Even dat stinky Marr not able to save da froggies.")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder019.mp3", 1604113201, 2181463850)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Ohhh! Dis soundz gud!", "Dialog7")
	Dialog.AddOption("So, we actually managed to defeat someone? Must have been one of my ancestors, not yours.", "Dialog7")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("So, dere was da big army of da troll basherz. And den, der was dis even bigger army of da durned froggies whut were led by dat inter... interlo... meddler Miffaniel Marr. We wuz doin' well, barshin' da froggies, n' stompin' da little tadpoles.")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder020.mp3", 727428733, 2284756867)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Say more! Say more!", "Dialog5")
	Dialog.AddOption("This is obviously the troll-notes version of the history.", "Dialog5")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Wuz great war! Ate many froggies. Fahver tol' me dey gud like chickenz. Ahny way, we wuz bein' barshed gud by dat filthy froggie god. Was shamin' us, but da trollz juz not able ta take Grobb back. Den sometin' super happen.")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder021.mp3", 2477883719, 1452757212)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Ohhh! I know, I know! We barsh dem instead?", "Dialog30")
	Dialog.AddOption("Go on. I can't wait to hear this tale butchered in new and interesting ways.", "Dialog30")
	Dialog.Start()
end

function Dialog30(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Der was dis big green cloud. Whut was smelly to da froggies' dele... delecat... sens'tive nozez. Den Cazic-Thule came outta da big green cloud n' started lay'n into dat nasty Marr. Den all da barshin' trollz jumped in n' pounded him!")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder022.mp3", 3262529597, 1665835871)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Guddie, guddie frogslegs! Barsh, barsh, BARSH! Den whut?", "Dialog12")
	Dialog.AddOption("Oh yes, this is likely the worst re-telling I've ever heard. So, what's next?", "Dialog12")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Den you go do sometin' for ol' Braz, dat's whut. Nuff' story, ol' Braz gots ta rest. Nujam do his patrol. Den all be well. Yessir, dis iz da life!")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder023.mp3", 122106217, 2176574440)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Awww, Nujam wanna hear more!")
	Dialog.AddOption("Fine. I suppose I shall demand recompense when I return from this duty you have.")
	Dialog.Start()
	if not HasQuest(Spawn, TrollPatrol) and not HasCompletedQuest(Spawn, TrollPatrol) then
        OfferQuest(NPC, Spawn, TrollPatrol)
    end
end

--====================Quest 4

function Dialog21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yawwwwwn! Iz dat you, Nujam? How da patrol go? You'ze look a bit barshed. Sometin' happen?")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder024.mp3", 2338642678, 3809861516)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Yessir. Dis.. erm... GIANT... fing... barshed mah knees... n' toez... yah... dat's it.", "Dialog11")
	Dialog.AddOption("Look, I don't want to talk about it. Your patrol route is clear. That is enough.")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Har har har! Youz got dat crazy hafflin'! He's a funny lil' one! Looks like I wun da bet wit da banker. Har har har!")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder025.mp3", 3753767177, 48215964)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Dat's mean. I not shur I like dis game.", "Dialog31")
	Dialog.AddOption("Well then, I guess I don't feel so badly if it was some sort of set-up.", "Dialog31")
	Dialog.Start()
end

function Dialog31(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Youz ready for da last fing I knowz 'bout livin' as a troll here in Freeport? Dis is it. Ol' Braz don't know no more after dis.")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder026.mp3", 2443819280, 3084140963)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Yessir, Braz sir! I ready. Tell dis fing to me!", "Dialog29")
	Dialog.AddOption("I'm surprised you've had any useful information at all, to be honest.", "Dialog29")
	Dialog.Start()
end

function Dialog29(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Iz very short, and dis is it; no way, neva let dat stupid tummy rule whut you do. It make for a bad time in da world if a troll just go wanderin' 'round tryin' ta eat everytin'.")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder027.mp3", 1541269146, 1641332265)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Whut? No eatin'? Dat's no fun...", "Dialog3")
	Dialog.AddOption("Quite obviously. There are things which could clearly cause indigestion.", "Dialog3")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Now, ol' Braz not say dat ya not eat whut ya want, but Nujam gotta be careful. Der be fings whut can even eat a fierce war-troll what barsh stuff gud. Dat's right. Stuff dat could even eat ol' Braz.")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder028.mp3", 246584716, 2626653219)
	Dialog.AddLanguage(15)
	Dialog.AddOption("No! Not ol' Braz!", "Dialog27")
	Dialog.AddOption("Oh, now there's a shock. Something that could eat good ol' Braz... actually, that sounds rather appealing.", "Dialog27")
	Dialog.Start()
end

function Dialog27(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Now, youze do ol' Braz one last fing for a favor. Nujam gonna go check in on dat troll from before. If he still eatin' da lil' gnomelin's, den you barsh him gud.")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder029.mp3", 3787495393, 626589338)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Whut? Why? But he jus' bein' a gud troll!", "Dialog2")
	Dialog.AddOption("Yes, I'm sure you're going to explain how this upsets the delicate economic balance between Temple Street and Big Bend. Oh wait, that would be me saying something like that.", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("We gots ta take care of our own. If'n a troll is behavin' too bad, den da Freeport Militia come crackin' down hard and barshin' all troll heads in. Dat ain't no way to live.")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder030.mp3", 2167927839, 496576877)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Den dis fing, I will do it for you.")
	Dialog.AddOption("Now that's my kind of swift justice. I'll see to the 'problem'.")
	Dialog.Start()
	if not HasQuest(Spawn, GnomoreGnomesteaks) and not HasCompletedQuest(Spawn, GnomoreGnomesteaks) then
        OfferQuest(NPC, Spawn, GnomoreGnomesteaks)
    end
end

--=======================Quest 5

function Dialog25(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Dat's a shame. I'da hoped he'da learned da lesson Nujam learned him before. Not all trollz gots da smartz though.")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder031.mp3", 1815556331, 2505933111)
	Dialog.AddLanguage(15)
	Dialog.AddOption("It'za gud fing you n' me gots da smartz though!", "Dialog24")
	Dialog.AddOption("Yes... it really is a good thing that some of us got all the brains.", "Dialog24")
	Dialog.Start()
end

function Dialog24(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Dis be a sad time for me, cuz ol' Braz is shur dat Nujam be forgettin' him as he goes off to fortune and glory. But I give ya dis fing ta remember ol' Braz by. Maybe you keep. Oh, and silly ol' Braz almos' forgot! Youz should be seein' dem guys outside!")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder032.mp3", 835625892, 929273519)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Aww, Nujam will keep da fing forever n' ever! But wut guys you talkin' 'bout?", "Dialog18")
	Dialog.AddOption("Maybe I'll keep it somewhere where no one can see how hideous it is. In the meantime, to whom do you think I should speak?", "Dialog18")
	Dialog.Start()
end

function Dialog18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Lessee! Der's dat troll Kurdek in da Sprawl! Youz gunna speak wit him!")
	Dialog.AddVoiceover("mentor_braz_gutpounder/fprt_hood1/braz_gutpounder033.mp3", 3580752169, 3690055660)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Nujam gunna keep dat in mind!")
	Dialog.AddOption("Perhaps I shall pay them a visit.")
	Dialog.Start()
	if not HasQuest(Spawn, TrollAdventures) and not HasCompletedQuest(Spawn, TrollAdventures) then
        OfferQuest(NPC, Spawn, TrollAdventures)
    end
end

