--[[
    Script Name    : Quests/Hallmark/path_of_the_brawler.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.07 04:12:46
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStep(Quest, 1, "I must defeat a third circle initiate.", 1, 100, "The dojo where I need to prove myself may be found at the eastern end of South Qeynos in the middle row of buildings.", 11)
	AddQuestStep(Quest, 2, "I must defeat a second circle initiate.", 1, 100, "The dojo where I need to prove myself may be found at the eastern end of South Qeynos in the middle row of buildings.", 11)
	AddQuestStep(Quest, 3, "I must defeat a first circle adept.", 1, 100, "The dojo where I need to prove myself may be found at the eastern end of South Qeynos in the middle row of buildings.", 11)
	AddQuestStep(Quest, 4, "I must defeat a white headband initiate.", 1, 100, "The dojo where I need to prove myself may be found at the eastern end of South Qeynos in the middle row of buildings.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("If you're a true brawler, you need to undergo a challenge.  In order to join the ranks of the brawlers here in Qeynos, you gotta prove your skills. Enter the dojo and go fist to fist against another brawler.  If you manage to defeat 'em, you'll become that which you seek.")
    PlayFlavor(QuestGiver, "", "", "agree", 0, 0, Player)
    Dialog.AddOption("Thank you, Dagorel.  I won't forget your lessons.")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have defeated a third circle initiate.")
 QuestCheck(Quest, QuestGiver, Player)

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have defeated a second circle initiate.")
 QuestCheck(Quest, QuestGiver, Player)

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have defeated a first circle adept.")
 QuestCheck(Quest, QuestGiver, Player)

end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have defeated a white headband initiate.")
 QuestCheck(Quest, QuestGiver, Player)
end

function  QuestCheck(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player,5790,1) and QuestStepIsComplete(Player,5790,2) and QuestStepIsComplete(Player,5790,3)and QuestStepIsComplete(Player,5790,4) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I have entered the dojo and defeated each of my four opponents in combat.")

	AddQuestStep(Quest, 5, "I must meditate at the altar.", 1, 100, "I must clear my thoughts and concentrate on the events that have passed.", 11)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I must meditate at the altar.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have passed the trial and become a brawler.")
	if GetClass(Player)== 1 then
	SetAdventureClass(Player,5)
    SendMessage(Player, "Congratulations! You are a Brawler.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Brawler.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)
    
   local level = GetLevel(Player)*5
if not HasSkill(Player, 1408356869) then -- Martial
    AddSkill(Player, 1408356869,1,level)
    SendMessage(Player, "You have learned the Martial skill")
end
if not HasSkill(Player, 3856706740) then -- Brawling
    AddSkill(Player, 3856706740,1,level)
    SendMessage(Player, "You have learned the Brawling skill")
end
if not HasSkill(Player, 3850377186) then -- Deflection
    AddSkill(Player, 3850377186,1,level)
    SendMessage(Player, "You have learned the Deflection skill")
end
if not HasSkill(Player, 3232294366) then -- Safe Fall
    AddSkill(Player, 3232294366,1,level)
    SendMessage(Player, "You have learned the Safe Fall skill")
end
if not HasSkill(Player, 3421494576) then -- Crushing
    AddSkill(Player, 3421494576,1,level)
    SendMessage(Player, "You have learned the Crushing skill")
end
if not HasSkill(Player, 418532101) then -- Slashing
    AddSkill(Player, 418532101,36,36)
    SendMessage(Player, "You have learned the Slashing skill")
end
if not HasSkill(Player, 3048574950) then -- Piercing
    AddSkill(Player, 3048574950,1,level)
    SendMessage(Player,  "You have learned the Piercing skill")
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
if HasSkill(Player, 3177806075) then -- Fists
    AddSkill(Player, 3177806075,1,level)
    SendMessage(Player, "You are now more proficient with your Fists")
end
if not HasSkill(Player, 4037812502) then -- Buckler
    AddSkill(Player, 4037812502,1,level)
    SendMessage(Player, "You are now more proficient with a Buckler")
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


--REMOVED SKILLS
--Removed Advance Fighter
if HasSkill(Player, 1124719197) then -- Tactics/Warrior
    RemoveSkill(Player, 1124719197)
end
if HasSkill(Player, 433335062) then -- Berserk/Berserker
    RemoveSkill(Player, 433335062)
end
if HasSkill(Player, 1209716810) then -- Protection/Guardian
    RemoveSkill(Player, 1209716810)
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
if  HasSkill(Player, 3173504370) then -- Roundshield
    RemoveSkill(Player, 3173504370)
end
if  HasSkill(Player, 2608320658) then -- Kite Shield
    RemoveSkill(Player, 2608320658)
end
if  HasSkill(Player, 2476073427) then -- Axe
    RemoveSkill(Player, 2476073427)
end
if  HasSkill(Player, 2954459351) then -- Great Axe
    RemoveSkill(Player, 2954459351)
end
if not HasSkill(Player, 1696217328) then -- Sword
    RemoveSkill(Player, 1696217328)
end
if not HasSkill(Player, 2292577688) then -- Great Sword
    RemoveSkill(Player, 2292577688)
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
	UpdateQuestDescription(Quest, "One by one, I've faced the opponents brought before me.  One by one, they have fallen before me.  I have proved myself worthy of becoming a brawler.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end