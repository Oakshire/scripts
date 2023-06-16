--[[
    Script Name    : Quests/Hallmark/path_of_the_bard.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.29 02:11:35
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: Councilor Vemerik
        Preceded by: Scout Training pt. II
        Followed by: None
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to subdue the mob in the Fermented Grape, a small tavern in South Qeynos.  The tavern is located amongst the southern-most row of buildings.", 1, 100, "I need to save the other bard from an angry crowd.", 11)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Go rescue the poor minstrel from the angry crowd, of course.  Just handle the situation appropriately and make sure the bard is okay.  If you can handle that, then you'll have no problems with the fallout from a bad evening, even under the worst conditions.")
 	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik034.mp3", 1060882099, 2285417556)
    PlayFlavor(QuestGiver, "", "", "nod", 0, 0, Player)
    Dialog.AddOption("Interesting. I suppose I can save your bard friend from the unruly crowd.")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I've subdued the mob.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've saved the other bard from the angry crowd.")
	if GetClass(Player)== 31 then
	SetAdventureClass(Player,35)
    SendMessage(Player, "Congratulations! You are a Bard.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Bard.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)
    
   local level = GetLevel(Player)*5
if not HasSkill(Player, 1921433074) then -- Reconnaissance
    AddSkill(Player, 1921433074,1,level)
    SendMessage(Player, "You have learned the Reconnaissance skill")
end
if not HasSkill(Player, 1311635100) then -- Melodies/Bard
    AddSkill(Player, 1311635100,1,level)
    SendMessage(Player, "You have learned the Melodies skill")
end
if not HasSkill(Player, 1468243427) then -- Tracking
    AddSkill(Player, 1468243427,1,level)
    SendMessage(Player, "You have learned the Tracking skill")
end
if not HasSkill(Player, 2200201799) then -- Disarm Trap
    AddSkill(Player, 2200201799,1,level)
    SendMessage(Player, "You have learned the Disarm Trap skill")
end
if not HasSkill(Player, 3232294366) then -- Safe Fall
    AddSkill(Player, 3232294366,31,level)
    SendMessage(Player, "You have learned the Safe Fall skill")
end
 if not HasSkill(Player, 1756482397) then -- Ranged
    AddSkill(Player, 1756482397,1,level)
    SendMessage(Player, "You have learned the Ranged skill")
end
if not HasSkill(Player, 3048574950) then -- Piercing
    AddSkill(Player, 3048574950,1,level)
    SendMessage(Player,  "You have learned the Piercing skill")
end
if not HasSkill(Player, 418532101) then -- Slashing
    AddSkill(Player, 418532101,1,level)
    SendMessage(Player,  "You have learned the Slashing skill")
end
if not HasSkill(Player, 1852383242) then -- Dual Wield
    AddSkill(Player, 1852383242,1,level)
    SendMessage(Player, "You have learned the Dual Wield skill")
end
if not HasSkill(Player, 2650425026) then -- Thrown Weapon
    AddSkill(Player, 2650425026,1,level)
    SendMessage(Player, "You have learned the Thrown Weapon skill")
end
if not HasSkill(Player, 2638198038) then -- Focus
    AddSkill(Player, 2638198038,1,level)
    SendMessage(Player, "You have learned the Focus skill")
end

--WEAPON SKILLS
 if not HasSkill(Player, 2897193374) then -- Light Armor
    AddSkill(Player, 2897193374,1,level)
   SendMessage(Player, "You are now more proficient with Light Armor")
end
if not HasSkill(Player, 4037812502) then -- Buckler
    AddSkill(Player, 4037812502,1,level)
    SendMessage(Player, "You are now more proficient with a Buckler")
end
if not HasSkill(Player, 3173504370) then -- Roundshield
    AddSkill(Player, 3173504370,1,level)
    SendMessage(Player, "You are now more proficient with a Roundshield")
end
if not HasSkill(Player, 1616998748) then -- Spear
    AddSkill(Player, 1616998748,1,level)
    SendMessage(Player, "You are now more proficient with a Spear")
end
if not HasSkill(Player, 887279616) then -- Dagger
    AddSkill(Player, 887279616,1,level)
    SendMessage(Player, "You are now more proficient with a Dagger")
end
if not HasSkill(Player, 1743366740) then -- Bow
    AddSkill(Player, 1743366740,1,level)
    SendMessage(Player, "You are now more proficient with a Bow")
end
if not HasSkill(Player, 2476073427) then -- Axe
    AddSkill(Player, 2476073427,1,level)
    SendMessage(Player, "You are now more proficient with an Axe")
end
if not HasSkill(Player, 770311065) then -- Mace
    AddSkill(Player, 770311065,1,level)
    SendMessage(Player, "You are now more proficient with a Mace")
end
if not HasSkill(Player, 641561514) then -- Rapier
    AddSkill(Player, 641561514,1,level)
    SendMessage(Player, "You are now more proficient with a Rapier")
end
if not HasSkill(Player, 1696217328) then -- Sword
    AddSkill(Player, 1696217328,1,level)
    SendMessage(Player, "You are now more proficient with a Sword")
end
if not HasSkill(Spawn, 613995491) then -- Disruption
    AddSkill(Spawn, 613995491,1,level)
    SendMessage(Spawn, "You have learned the Disruption skill")
end
if not HasSkill(Spawn, 366253016) then -- Ministration
    AddSkill(Spawn, 366253016,1,level)
    SendMessage(Spawn, "You have learned the Ministration skill")
end
if not HasSkill(Spawn, 3587918036) then -- Ordination
    AddSkill(Spawn, 3587918036,1,level)
    SendMessage(Spawn, "You have learned the Ordination skill")
end
if not HasSkill(Spawn, 882983852) then -- Subjugation
    AddSkill(Spawn, 882983852,1,level)
    SendMessage(Spawn, "You have learned the Subjugation skill")
end
--REMOVE SKILLS
-- Remove Fighter for Scout
if HasSkill(Player, 1408356869) then -- Martial/Fighter
    RemoveSkill(Player, 1408356869)
end
if HasSkill(Player, 1124719197) then -- Tactics/Warrior
    RemoveSkill(Player, 1124719197)
end
if HasSkill(Player, 433335062) then -- Berserk/Berserker
    RemoveSkill(Player, 433335062)
end
if HasSkill(Player, 1209716810) then -- Protection/Guardian
    RemoveSkill(Player, 1209716810)
end
if HasSkill(Player, 3856706740) then -- Brawl/Brawling
    RemoveSkill(Player, 3856706740)
end
if HasSkill(Player, 2011726342) then -- Tranquility/Monk
    RemoveSkill(Player, 2011726342)
end
if HasSkill(Player, 3067436248) then -- Physicality/Bruiser
    RemoveSkill(Player, 3067436248)
end
if HasSkill(Player, 3809066846) then -- Faith/Crusader
    RemoveSkill(Player, 3809066846)
end
if HasSkill(Player, 90523872) then -- Determined Faith/Paladin
    RemoveSkill(Player, 90523872)
end
if HasSkill(Player, 2741805322) then -- Determined Zeal/Shadowknight
    RemoveSkill(Player, 2741805322)
end

--Removed Advance Scout


if HasSkill(Player, 296246391) then -- Ballads/Troubador
    RemoveSkill(Player, 296246391)
end
if HasSkill(Player, 340921594) then -- Dirges/Dirge
    RemoveSkill(Player, 340921594)
end
if HasSkill(Player, 1514256692) then -- Skulldugery/Rogue
    RemoveSkill(Player, 1514256692)
end
if HasSkill(Player, 2663054519) then -- Swashbuckling/Swashbuckler
    RemoveSkill(Player, 2663054519)
end
if HasSkill(Player, 1519965519) then -- Banditry/Brigand
    RemoveSkill(Player, 1519965519)
end
if HasSkill(Player, 3167106577) then -- Stalking/Predator
    RemoveSkill(Player, 3167106577)
end
if HasSkill(Player, 1400160844) then -- Archery/Ranger
    RemoveSkill(Player, 1400160844)
end
if HasSkill(Player, 2711101135) then -- Assassination/Assassin
    RemoveSkill(Player, 2711101135)
end

--Removed Priest for Scout
if HasSkill(Player, 2463145248) then -- Inspirations/Priest
    RemoveSkill(Player, 2463145248)
end
if HasSkill(Player, 3341842907) then -- Theurgy/Cleric
    RemoveSkill(Player, 3341842907)
end
if HasSkill(Player, 2581053277) then -- Regimens/Templar
    RemoveSkill(Player, 2581053277)
end
if HasSkill(Player, 1829443087) then -- Inquisitions/Inquisitor
    RemoveSkill(Player, 1829443087)
end
if HasSkill(Player, 3282420779) then -- Archegenesis/Druid
    RemoveSkill(Player, 3282420779)
end
if HasSkill(Player, 1624274802) then -- Nature's Reckoning/Fury
    RemoveSkill(Player, 1624274802)
end
if HasSkill(Player, 1040683335) then -- Nature's Refuge/Warden
    RemoveSkill(Player, 1040683335)
end
if HasSkill(Player, 3343700951) then -- Talismans/Shaman
    RemoveSkill(Player, 3343700951)
end
if HasSkill(Player, 3467160477) then -- Fetichisms/Mystic
    RemoveSkill(Player, 3467160477)
end
if HasSkill(Player, 3191839982) then -- Vehemence/Defiler
    RemoveSkill(Player, 3191839982)
end

--Removed Mage for Scout
if HasSkill(Player, 3820670534) then -- Evocations/Mage
    RemoveSkill(Player, 3820670534)
end
if HasSkill(Player, 287643040) then -- Enchantments/Enchanter
    RemoveSkill(Player, 287643040)
end
if HasSkill(Player, 2898101972) then -- Hallucinations/Illusionist
    RemoveSkill(Player, 2898101972)
end
if HasSkill(Player, 2950599749) then -- Protean/Coecerer
    RemoveSkill(Player, 2950599749)
end
if HasSkill(Player, 2533124061) then -- Sorcery/Sorcerer
    RemoveSkill(Player, 2533124061)
end
if HasSkill(Player, 2662430630) then -- Elemental Mastery/Wizard
    RemoveSkill(Player, 2662430630)
end
if HasSkill(Player, 193411854) then -- Noctivagance/Warlock
    RemoveSkill(Player, 193411854)
end
if HasSkill(Player, 2120065377) then -- Legerdemain/Summoner
    RemoveSkill(Player, 2120065377)
end
if HasSkill(Player, 2042842194) then -- Conjurations/Conjurer
    RemoveSkill(Player, 2042842194)
end
if HasSkill(Player, 289471519) then -- Sepulchers/Necromancer
    RemoveSkill(Player, 289471519)
end

--REMOVE WEAPON
if HasSkill(Player, 2246237129) then -- Medium Armor
    RemoveSkill(Player, 2246237129)
end
if HasSkill(Player, 241174330) then -- Heavy Armor
    RemoveSkill(Player, 241174330)
end
if HasSkill(Player, 3177806075) then -- Fists
    RemoveSkill(Player, 3177806075)
end
if HasSkill(Player, 2292577688) then -- Great Sword
    RemoveSkill(Player, 2292577688)
end
if HasSkill(Player, 2954459351) then -- Great Axe
    RemoveSkill(Player, 2954459351)
end
if HasSkill(Player, 1653482350) then -- Great Spear
    RemoveSkill(Player, 1653482350)
end
if HasSkill(Player, 1616998748) then -- Spear
    RemoveSkill(Player, 1616998748)
end
if HasSkill(Player, 2608320658) then -- Kite Shield
    RemoveSkill(Player, 2608320658)
end
if HasSkill(Player, 570458645) then -- Tower Shield
    RemoveSkill(Player, 570458645)
end
if HasSkill(Player, 540022425) then -- Parry
    RemoveSkill(Player, 540022425)
end
if HasSkill(Player, 1553857724) then -- Investigation
    RemoveSkill(Player, 1553857724)
end
if HasSkill(Player, 3429135390) then -- Mystical Destruction
    RemoveSkill(Player, 3429135390)
end    
	end
	UpdateQuestDescription(Quest, "I managed to lay out the entire mob single-handedly.  I've proven that even in the off-chance I give a bad performance, I can handle anything the crowd might throw at me.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
