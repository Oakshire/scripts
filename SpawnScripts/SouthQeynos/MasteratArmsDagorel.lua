--[[
    Script Name    : SpawnScripts/SouthQeynos/MasteratArmsDagorel.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.25 12:10:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/sergeant-at-arms_ironcast/qey_north/100_soc_dwarf_guard_officer_ironcast_no_181290a1.mp3", "Hail, citizen. I'm on duty and can't speak.  If you need the assistance of the guard,  let us know.", "salute", 904288338, 3551828428, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end

--[[
Brawlers don't waste their time strapping on bulky armor. Sometimes the only weapons they use are their fists, and they dodge their opponent's blows with the swiftness of a hawk.  Do you choose this path?
Warriors run to the front line in battle and care only about slaughtering the enemy and oiling their weapons with their foe's blood.  Warriors know might makes right.  Do you choose this path?
None matches the conviction of a crusader. Crusaders fight for a cause. This cause gives them the strength to crush their opponents beneath their feet. The last thing that people see when they fight a crusader is a cold, dead look -- their own reflection in the crusader's eyes.  Do you choose this path?
]]--

--Och!  A bit eager, are we?  You're off to a good start then, you are. A warrior takes the bull by the horns! Let's give you a taste, shall we?  The Council needs help exterminatin' a massive hatching of Ice Spiders in the caves. Go to the caves and destroy some of the spiders. After you get rid of the critters, head back my way.
--Well, forget everythin' I said!  Yer' about to see how a brawler fights. Instead of using armor, brawlers use their bodies as weapons. They avoid gettin' hurt in combat by using a special trick.
--We fighters are a tough bunch.  We are good at taking damage and dishin it out.  There's a few kinds. The brawlers use their hands, feet... just about anything to do a lot of damage. But they can't take it quite as well as other kinds.
--[QUEST1 Step3/4]They don't let themselves get hit!  Simple as that!  You have to learn that trick if you want to be a brawler.  I know a couple of people who can give you some pointers.  Go speak with Luvile Binlee in Starcrest and Hargan Icethaw in Graystone.  Tell 'em I sent you, and ask for some brawlin' tips.
--[QUEST 2]Aye, it's high time we continue with your studies.  Time is tickin' away, and we're not gettin' any younger.  I showed you how a warrior and a brawler fight, and now I'll show you the way of a crusader.
--[FINAL SELECTION] Well, then, I showed you three different fighting styles--you know my preferred way of fighting--trusting a good axe and a breastplate. You experienced the raw fighting power of a brawler, and finally, you witnessed the dedication of a crusader. Now it's time to test your knowledge...
--Brawlers use their brains, they do. They don't need armor if their enemies can't hit 'em.  They also know they can't be disarmed if they have built-in weapons. Well, they can, but that' messy business that we don't need to discuss. So, are ya willin' to push yourself to the limit as a brawler?
--Brawlers don't waste their time strapping on bulky armor. Sometimes the only weapons they use are their fists, and they dodge their opponent's blows with the swiftness of a hawk.  Do you choose this path?
--If you're a true brawler, you need to undergo a challenge.  In order to join the ranks of the brawlers here in Qeynos, you gotta prove your skills. Enter the dojo and go fist to fist against another brawler.  If you manage to defeat 'em, you'll become that which you seek.

--Thank you, Dagorel.  I won't forget your lessons.
--Aye, aye.  The watchmen informed me. They say you held your own. That's what I want to hear! You had to prove your fightin' skills--I don't want anyone accusing ol' Dagorel of sending ill-equipped kids off to their deaths. You proved you got what it takes, kid. Good work.

--Yes.  I will train everyday to master the art of pugilism.  I am a brawler.
--I like relying on my fists in battle. I want to be a brawler.
--Through training, I can make my own body into a weapon.  I'm a brawler.
--Understand one more thing as well ...  when you defeat your last opponent, meditate at the altar in the dojo.  A brawler is not only strong of body but also of mind.  Strengthening both is mandatory.  Once you do this, you'll have proven yourself.

--BRAWLER ALTAR A cool breeze swirls around you, sending a tingle up the back of your spine.  You arise from the altar and know in your soul that you are a brawler.