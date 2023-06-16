--[[
    Script Name    : Quests/Hallmark/path_of_the_warrior.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.07 04:12:38
    Script Purpose : WARRIOR CLASS QUEST

        Zone       : Hallmark
        Quest Giver: Master at Arms Dagorel
        Preceded by: Fighter Training pt II
        Followed by: None
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must defeat the bears in the arena.", 2, 100, "I must defeat the challenge set before me in the make-shift arena set up in the warehouse of northern Qeynos.", 11,8320025)
	AddQuestStepKill(Quest, 2, "I must defeat the lions in the arena.", 3, 100, "I must defeat the challenge set before me in the make-shift arena set up in the warehouse of northern Qeynos.", 11, 8320024)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Whoa, now! Not yet, you're not!  You have to prove you can last in the fray. You didn't think I'd wave a magic wand and make you a warrior, did you?  No, no, we got a make shift arena set up in the warehouse, where you'll prove yourself, a true warrior of Qeynos. No need to return to me, I've taught you all I can.")
    PlayFlavor(QuestGiver, "", "", "scold", 0, 0, Player)
    Dialog.AddOption("I will step forth victorious! Wait and see!")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've defeated the bears in the arena.")
 QuestCheck(Quest, QuestGiver, Player)

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've defeated the lions in the arena.")
 QuestCheck(Quest, QuestGiver, Player)
end

function  QuestCheck(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player,5791,1) and QuestStepIsComplete(Player,5791,2) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I've defeated all the creatures in the arena in front of the cheering onlookers.")

	AddQuestStep(Quest, 3, "I've defeated the arena creatures, and must declare myself victor on the dais.", 1, 100, "I must stand on the dais and declare my victory!", 957)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I declared myself victorious.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've declared my victory.")
	if GetClass(Player)== 1 then
	SetAdventureClass(Player,2)
    SendMessage(Player, "Congratulations! You are a Warrior.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Warrior.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)
    
    local level = GetLevel(Player)*5
if not HasSkill(Player, 1408356869) then -- Martial
    AddSkill(Player, 1408356869,1,level)
    SendMessage(Player, "You have learned the Martial skill")
end
if not HasSkill(Player, 1124719197) then -- Tactics/Warrior
    AddSkill(Player, 1124719197,1,level)
    SendMessage(Player, "You have learned the Tactics skill")
end
if not HasSkill(Player, 3421494576) then -- Crushing
    AddSkill(Player, 3421494576,1,level)
    SendMessage(Player, "You have learned the Crushing skill")
end
if not HasSkill(Player, 418532101) then -- Slashing
    AddSkill(Player, 418532101,1,level)
    SendMessage(Player, "You have learned the Slashing skill")
end
 if not HasSkill(Player, 1756482397) then -- Ranged
    AddSkill(Player, 1756482397,1,level)
    SendMessage(Player, "You have learned the Ranged skill")
end
if not HasSkill(Player, 2650425026) then -- Thrown Weapon
    AddSkill(Player, 2650425026,1,level)
    SendMessage(Player, "You have learned the Thrown Weapon skill")
end
if not HasSkill(Player, 3048574950) then -- Piercing
    AddSkill(Player, 3048574950,1,level)
    SendMessage(Player,  "You have learned the Piercing skill")
end
if not HasSkill(Player, 1852383242) then -- Dual Wield
    AddSkill(Player, 1852383242,1,level)
    SendMessage(Player, "You have learned the Dual Wield skill")
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
if HasSkill(Player, 2246237129) then -- Medium Armor
    AddSkill(Player, 2246237129,1,level)
    SendMessage(Player, "You are now more proficient with Medium Armor")
end
if not HasSkill(Player, 1743366740) then -- Bow
    AddSkill(Player, 1743366740,1,level)
    SendMessage(Player, "You are now more proficient with a Bow")
end
if not HasSkill(Player, 4037812502) then -- Buckler
    AddSkill(Player, 4037812502,1,level)
    SendMessage(Player, "You are now more proficient with a Buckler")
end
if not HasSkill(Player, 3173504370) then -- Roundshield
    AddSkill(Player, 3173504370,1,level)
    SendMessage(Player, "You are now more proficient with a Roundshield")
end
if not HasSkill(Player, 2476073427) then -- Axe
    AddSkill(Player, 2476073427,1,level)
    SendMessage(Player, "You are now more proficient with an Axe")
end
if not HasSkill(Player, 2954459351) then -- Great Axe
    AddSkill(Player, 2954459351,1,level)
    SendMessage(Player, "You are now more proficient with a Great Axe")
end
if not HasSkill(Player, 1696217328) then -- Sword
    AddSkill(Player, 1696217328,1,level)
    SendMessage(Player, "You are now more proficient with a Sword")
end
if not HasSkill(Player, 2292577688) then -- Great Sword
    AddSkill(Player, 2292577688,1,level)
    SendMessage(Player, "You are now more proficient with a Great Sword")
end
if not HasSkill(Player, 770311065) then -- Mace
    AddSkill(Player, 770311065,1,level)
    SendMessage(Player, "You are now more proficient with a Mace")
end
if not HasSkill(Player, 554333641) then -- Hammer
    AddSkill(Player, 554333641,1,level)
   SendMessage(Player, "You are now more proficient with a Hammer")
end
if not HasSkill(Player, 1653482350) then -- Great Hammer
    AddSkill(Player, 1653482350,1,level)
    SendMessage(Player, "You are now more proficient with a Great Hammer")
end
if not HasSkill(Player, 3180399725) then -- Staff(2h)
    AddSkill(Player, 3180399725,1,level)
    SendMessage(Player, "You are now more proficient with a Staff")
end
if not HasSkill(Player, 641561514) then -- Rapier
    AddSkill(Player, 641561514,1,level)
    SendMessage(Player, "You are now more proficient with a Rapier")
end
if not HasSkill(Player, 1616998748) then -- Spear
    AddSkill(Player, 1616998748,1,level)
    SendMessage(Player, "You are now more proficient with a Spear")
end
if not HasSkill(Player, 570458645) then -- Tower Shield
    AddSkill(Player, 570458645,1,level)
    SendMessage(Player, "You are now more proficient with a Tower Shield")
end
if not HasSkill(Player, 2608320658) then -- Kite Shield
    AddSkill(Player, 2608320658,1,level)
    SendMessage(Player, "You are now more proficient with a Kite Shield")
end

--REMOVED SKILLS
--Removed Advance Fighter
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

--Removed Scout for Fighter
if HasSkill(Player, 1921433074) then -- Reconnaissance/Scout
    RemoveSkill(Player, 1921433074)
end
if HasSkill(Player, 1311635100) then -- Melodies/Bard
    RemoveSkill(Player, 1311635100)
end
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

--Removed Priest for Fighter
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

--Removed Mage for Fighter
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

--REMOVED WEAPON
if not HasSkill(Player, 540022425) then -- Parry
    RemoveSkill(Player, 540022425)
end
if HasSkill(Player, 241174330) then -- Heavy Armor
    RemoveSkill(Player, 241174330)
end
if HasSkill(Player, 3177806075) then -- Fists
    RemoveSkill(Player, 3177806075)
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
if  HasSkill(Player, 2200201799) then -- Disarm Trap
    RemoveSkill(Player, 2200201799)
end
if HasSkill(Player, 366253016) then --Ministration
    RemoveSkill(Player, 366253016)
end
if HasSkill(Player, 613995491) then -- Disruption
    RemoveSkill(Player, 613995491)
end
if HasSkill(Player, 882983852) then -- Subjigation
    RemoveSkill(Player, 882983852)
end
if HasSkill(Player, 3587918036) then -- Ordination
    RemoveSkill(Player, 3587918036)
end   
    
    
	end
	UpdateQuestDescription(Quest, "I managed to defeat the creatures brought before me in the arena that was set up, and have proved myself worthy of being a warrior. Forever shall I wear this as a badge of courage and honor.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
