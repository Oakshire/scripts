--[[
    Script Name    : SpawnScripts/Generic/ClassSkillCheck.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.23 12:05:54
    Script Purpose : 
                   : 
--]]
-----------------------------------------------------------
function FighterSkills(NPC,Spawn)
   local level = GetLevel(Spawn)*5

if not HasSkill(Spawn, 1408356869) then -- Martial
    AddSkill(Spawn, 1408356869,1,level)
    SendMessage(Spawn, "You have learned the Martial skill")
end
if not HasSkill(Spawn, 3421494576) then -- Crushing
    AddSkill(Spawn, 3421494576,1,level)
    SendMessage(Spawn, "You have learned the Crushing skill")
end
if not HasSkill(Spawn, 418532101) then -- Slashing
    AddSkill(Spawn, 418532101,1,level)
    SendMessage(Spawn, "You have learned the Slashing skill")
end
if not HasSkill(Spawn, 1852383242) then -- Dual Wield
    AddSkill(Spawn, 1852383242,1,level)
    SendMessage(Spawn, "You have learned the Dual Wield skill")
end
if not HasSkill(Spawn, 2638198038) then -- Focus
    AddSkill(Spawn, 2638198038,1,level)
    SendMessage(Spawn, "You have learned the Focus skill")
end

--WEAPON SKILLS
 if not HasSkill(Spawn, 2897193374) then -- Light Armor
    AddSkill(Spawn, 2897193374,1,level)
    SendMessage(Spawn, "You are now more proficient with Light Armor")
end
if not HasSkill(Spawn, 4037812502) then -- Buckler
    AddSkill(Spawn, 4037812502,1,level)
    SendMessage(Spawn, "You are now more proficient with a Buckler")
end
if not HasSkill(Spawn, 3173504370) then -- Roundshield
    AddSkill(Spawn, 3173504370,1,level)
    SendMessage(Spawn, "You are now more proficient with a Roundshield")
end
if not HasSkill(Spawn, 2476073427) then -- Axe
    AddSkill(Spawn, 2476073427,1,level)
    SendMessage(Spawn, "You are now more proficient with an Axe")
end
if not HasSkill(Spawn, 2954459351) then -- Great Axe
    AddSkill(Spawn, 2954459351,1,level)
    SendMessage(Spawn, "You are now more proficient with a Great Axe")
end
if not HasSkill(Spawn, 1696217328) then -- Sword
    AddSkill(Spawn, 1696217328,1,level)
    SendMessage(Spawn, "You are now more proficient with a Sword")
end
if not HasSkill(Spawn, 2292577688) then -- Great Sword
    AddSkill(Spawn, 2292577688,1,level)
    SendMessage(Spawn, "You are now more proficient with a Great Sword")
end
if not HasSkill(Spawn, 770311065) then -- Mace
    AddSkill(Spawn, 770311065,1,level)
    SendMessage(Spawn, "You are now more proficient with a Mace")
end
if not HasSkill(Spawn, 554333641) then -- Hammer
    AddSkill(Spawn, 554333641,1,level)
   SendMessage(Spawn, "You are now more proficient with a Hammer")
end
if not HasSkill(Spawn, 1653482350) then -- Great Hammer
    AddSkill(Spawn, 1653482350,1,level)
    SendMessage(Spawn, "You are now more proficient with a Great Hammer")
end
if not HasSkill(Spawn, 3180399725) then -- Staff(2h)
    AddSkill(Spawn, 3180399725,1,level)
    SendMessage(Spawn, "You are now more proficient with a Staff")
end

--REMOVED SKILLS
--Removed Advance Fighter
if HasSkill(Spawn, 1124719197) then -- Tactics/Warrior
    RemoveSkill(Spawn, 1124719197)
end
if HasSkill(Spawn, 433335062) then -- Berserk/Berserker
    RemoveSkill(Spawn, 433335062)
end
if HasSkill(Spawn, 1209716810) then -- Protection/Guardian
    RemoveSkill(Spawn, 1209716810)
end
if HasSkill(Spawn, 3856706740) then -- Brawl/Brawling
    RemoveSkill(Spawn, 3856706740)
end
if HasSkill(Spawn, 2011726342) then -- Tranquility/Monk
    RemoveSkill(Spawn, 2011726342)
end
if HasSkill(Spawn, 3067436248) then -- Physicality/Bruiser
    RemoveSkill(Spawn, 3067436248)
end
if HasSkill(Spawn, 3809066846) then -- Faith/Crusader
    RemoveSkill(Spawn, 3809066846)
end
if HasSkill(Spawn, 90523872) then -- Determined Faith/Paladin
    RemoveSkill(Spawn, 90523872)
end
if HasSkill(Spawn, 2741805322) then -- Determined Zeal/Shadowknight
    RemoveSkill(Spawn, 2741805322)
end

--Removed Scout for Fighter
if HasSkill(Spawn, 1921433074) then -- Reconnaissance/Scout
    RemoveSkill(Spawn, 1921433074)
end
if HasSkill(Spawn, 1311635100) then -- Melodies/Bard
    RemoveSkill(Spawn, 1311635100)
end
if HasSkill(Spawn, 296246391) then -- Ballads/Troubador
    RemoveSkill(Spawn, 296246391)
end
if HasSkill(Spawn, 340921594) then -- Dirges/Dirge
    RemoveSkill(Spawn, 340921594)
end
if HasSkill(Spawn, 1514256692) then -- Skulldugery/Rogue
    RemoveSkill(Spawn, 1514256692)
end
if HasSkill(Spawn, 2663054519) then -- Swashbuckling/Swashbuckler
    RemoveSkill(Spawn, 2663054519)
end
if HasSkill(Spawn, 1519965519) then -- Banditry/Brigand
    RemoveSkill(Spawn, 1519965519)
end
if HasSkill(Spawn, 3167106577) then -- Stalking/Predator
    RemoveSkill(Spawn, 3167106577)
end
if HasSkill(Spawn, 1400160844) then -- Archery/Ranger
    RemoveSkill(Spawn, 1400160844)
end
if HasSkill(Spawn, 2711101135) then -- Assassination/Assassin
    RemoveSkill(Spawn, 2711101135)
end

--Removed Priest for Fighter
if HasSkill(Spawn, 2463145248) then -- Inspirations/Priest
    RemoveSkill(Spawn, 2463145248)
end
if HasSkill(Spawn, 3341842907) then -- Theurgy/Cleric
    RemoveSkill(Spawn, 3341842907)
end
if HasSkill(Spawn, 2581053277) then -- Regimens/Templar
    RemoveSkill(Spawn, 2581053277)
end
if HasSkill(Spawn, 1829443087) then -- Inquisitions/Inquisitor
    RemoveSkill(Spawn, 1829443087)
end
if HasSkill(Spawn, 3282420779) then -- Archegenesis/Druid
    RemoveSkill(Spawn, 3282420779)
end
if HasSkill(Spawn, 1624274802) then -- Nature's Reckoning/Fury
    RemoveSkill(Spawn, 1624274802)
end
if HasSkill(Spawn, 1040683335) then -- Nature's Refuge/Warden
    RemoveSkill(Spawn, 1040683335)
end
if HasSkill(Spawn, 3343700951) then -- Talismans/Shaman
    RemoveSkill(Spawn, 3343700951)
end
if HasSkill(Spawn, 3467160477) then -- Fetichisms/Mystic
    RemoveSkill(Spawn, 3467160477)
end
if HasSkill(Spawn, 3191839982) then -- Vehemence/Defiler
    RemoveSkill(Spawn, 3191839982)
end

--Removed Mage for Fighter
if HasSkill(Spawn, 3820670534) then -- Evocations/Mage
    RemoveSkill(Spawn, 3820670534)
end
if HasSkill(Spawn, 287643040) then -- Enchantments/Enchanter
    RemoveSkill(Spawn, 287643040)
end
if HasSkill(Spawn, 2898101972) then -- Hallucinations/Illusionist
    RemoveSkill(Spawn, 2898101972)
end
if HasSkill(Spawn, 2950599749) then -- Protean/Coecerer
    RemoveSkill(Spawn, 2950599749)
end
if HasSkill(Spawn, 2533124061) then -- Sorcery/Sorcerer
    RemoveSkill(Spawn, 2533124061)
end
if HasSkill(Spawn, 2662430630) then -- Elemental Mastery/Wizard
    RemoveSkill(Spawn, 2662430630)
end
if HasSkill(Spawn, 193411854) then -- Noctivagance/Warlock
    RemoveSkill(Spawn, 193411854)
end
if HasSkill(Spawn, 2120065377) then -- Legerdemain/Summoner
    RemoveSkill(Spawn, 2120065377)
end
if HasSkill(Spawn, 2042842194) then -- Conjurations/Conjurer
    RemoveSkill(Spawn, 2042842194)
end
if HasSkill(Spawn, 289471519) then -- Sepulchers/Necromancer
    RemoveSkill(Spawn, 289471519)
end

--REMOVED WEAPON
if not HasSkill(Spawn, 540022425) then -- Parry
    RemoveSkill(Spawn, 540022425)
end
if HasSkill(Spawn, 2246237129) then -- Medium Armor
    RemoveSkill(Spawn, 2246237129)
end
if HasSkill(Spawn, 241174330) then -- Heavy Armor
    RemoveSkill(Spawn, 241174330)
end
if HasSkill(Spawn, 3177806075) then -- Fists
    RemoveSkill(Spawn, 3177806075)
end
if HasSkill(Spawn, 887279616) then -- Dagger
    RemoveSkill(Spawn, 887279616)
end
if HasSkill(Spawn, 2608320658) then -- Kite Shield
    RemoveSkill(Spawn, 2608320658)
end
if HasSkill(Spawn, 570458645) then -- Tower Shield
    RemoveSkill(Spawn, 570458645)
end
if HasSkill(Spawn, 3048574950) then -- Piercing
    RemoveSkill(Spawn, 3048574950)
end
if HasSkill(Spawn, 1756482397) then -- Ranged
    RemoveSkill(Spawn, 1756482397)
end
if HasSkill(Spawn, 540022425) then -- Parry
    RemoveSkill(Spawn, 540022425)
end

if HasSkill(Spawn, 1743366740) then -- Bow
    RemoveSkill(Spawn, 1743366740)
end
if HasSkill(Spawn, 2650425026) then -- Thrown Weapon
    RemoveSkill(Spawn, 2650425026)
end
if HasSkill(Spawn, 1553857724) then -- Investigation
    RemoveSkill(Spawn, 1553857724)
end
if HasSkill(Spawn, 3429135390) then -- Mystical Destruction
    RemoveSkill(Spawn, 3429135390)
end
if  HasSkill(Spawn, 2200201799) then -- Disarm Trap
    RemoveSkill(Spawn, 2200201799)
end
if HasSkill(Spawn, 366253016) then --Ministration
    RemoveSkill(Spawn, 366253016)
end
if HasSkill(Spawn, 613995491) then -- Disruption
    RemoveSkill(Spawn, 613995491)
end
if HasSkill(Spawn, 882983852) then -- Subjigation
    RemoveSkill(Spawn, 882983852)
end
if HasSkill(Spawn, 3587918036) then -- Ordination
    RemoveSkill(Spawn, 3587918036)
end
end


------------------------------------------------------------
function PriestSkills(NPC,Spawn)
   local level = GetLevel(Spawn)*5

if not HasSkill(Spawn, 2463145248) then -- Inspirations
    AddSkill(Spawn, 2463145248,1,level)
    SendMessage(Spawn, "You have learned the Inspirations skill")
end
if not HasSkill(Spawn, 3421494576) then -- Crushing
    AddSkill(Spawn, 3421494576,1,level)
    SendMessage(Spawn, "You have learned the Crushing skill")
end

--CASTING SKILLS
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
if not HasSkill(Spawn, 2638198038) then -- Focus
    AddSkill(Spawn, 2638198038,1,level)
    SendMessage(Spawn, "You have learned the Focus skill")
end

--WEAPON SKILLS
if not HasSkill(Spawn, 4037812502) then -- Buckler
    AddSkill(Spawn, 4037812502,1,level)
    SendMessage(Spawn, "You are now more proficient with a Buckler")
end
if not HasSkill(Spawn, 545043066) then -- Symbol
    AddSkill(Spawn, 545043066,1,level)
    SendMessage(Spawn, "You are now more proficient with a Symbol")
end
if not HasSkill(Spawn, 770311065) then -- Mace
    AddSkill(Spawn, 770311065,1,level)
    SendMessage(Spawn, "You are now more proficient with a Mace")
end
if not HasSkill(Spawn, 554333641) then -- Hammer
    AddSkill(Spawn, 554333641,1,level)
    SendMessage(Spawn, "You are now more proficient with a Hammer")
end
if not HasSkill(Spawn, 1653482350) then -- Great Hammer
    AddSkill(Spawn, 1653482350,1,level)
    SendMessage(Spawn, "You are now more proficient with a Great Hammer")
end
if not HasSkill(Spawn, 3180399725) then -- Staff(2h)
    AddSkill(Spawn, 3180399725,1,level)
   SendMessage(Spawn, "You are now more proficient with a Staff")
end

--REMOVED SKILLS
if HasSkill(Spawn, 1408356869) then -- Martial/Fighter
    RemoveSkill(Spawn, 1408356869)
end
if HasSkill(Spawn, 1124719197) then -- Tactics/Warrior
    RemoveSkill(Spawn, 1124719197)
end
if HasSkill(Spawn, 433335062) then -- Berserk/Berserker
    RemoveSkill(Spawn, 433335062)
end
if HasSkill(Spawn, 1209716810) then -- Protection/Guardian
    RemoveSkill(Spawn, 1209716810)
end
if HasSkill(Spawn, 3856706740) then -- Brawl/Brawling
    RemoveSkill(Spawn, 3856706740)
end
if HasSkill(Spawn, 2011726342) then -- Tranquility/Monk
    RemoveSkill(Spawn, 2011726342)
end
if HasSkill(Spawn, 3067436248) then -- Physicality/Bruiser
    RemoveSkill(Spawn, 3067436248)
end
if HasSkill(Spawn, 3809066846) then -- Faith/Crusader
    RemoveSkill(Spawn, 3809066846)
end
if HasSkill(Spawn, 90523872) then -- Determined Faith/Paladin
    RemoveSkill(Spawn, 90523872)
end
if HasSkill(Spawn, 2741805322) then -- Determined Zeal/Shadowknight
    RemoveSkill(Spawn, 2741805322)
end

--Removed  Scout for Priest
if HasSkill(Spawn, 1921433074) then -- Reconnaissance/Scout
    RemoveSkill(Spawn, 1921433074)
end
if HasSkill(Spawn, 1311635100) then -- Melodies/Bard
    RemoveSkill(Spawn, 1311635100)
end
if HasSkill(Spawn, 296246391) then -- Ballads/Troubador
    RemoveSkill(Spawn, 296246391)
end
if HasSkill(Spawn, 340921594) then -- Dirges/Dirge
    RemoveSkill(Spawn, 340921594)
end
if HasSkill(Spawn, 1514256692) then -- Skulldugery/Rogue
    RemoveSkill(Spawn, 1514256692)
end
if HasSkill(Spawn, 2663054519) then -- Swashbuckling/Swashbuckler
    RemoveSkill(Spawn, 2663054519)
end
if HasSkill(Spawn, 1519965519) then -- Banditry/Brigand
    RemoveSkill(Spawn, 1519965519)
end
if HasSkill(Spawn, 3167106577) then -- Stalking/Predator
    RemoveSkill(Spawn, 3167106577)
end
if HasSkill(Spawn, 1400160844) then -- Archery/Ranger
    RemoveSkill(Spawn, 1400160844)
end
if HasSkill(Spawn, 2711101135) then -- Assassination/Assassin
    RemoveSkill(Spawn, 2711101135)
end

--Removed Advance Priest
if HasSkill(Spawn, 3341842907) then -- Theurgy/Cleric
    RemoveSkill(Spawn, 3341842907)
end
if HasSkill(Spawn, 2581053277) then -- Regimens/Templar
    RemoveSkill(Spawn, 2581053277)
end
if HasSkill(Spawn, 1829443087) then -- Inquisitions/Inquisitor
    RemoveSkill(Spawn, 1829443087)
end
if HasSkill(Spawn, 3282420779) then -- Archegenesis/Druid
    RemoveSkill(Spawn, 3282420779)
end
if HasSkill(Spawn, 1624274802) then -- Nature's Reckoning/Fury
    RemoveSkill(Spawn, 1624274802)
end
if HasSkill(Spawn, 1040683335) then -- Nature's Refuge/Warden
    RemoveSkill(Spawn, 1040683335)
end
if HasSkill(Spawn, 3343700951) then -- Talismans/Shaman
    RemoveSkill(Spawn, 3343700951)
end
if HasSkill(Spawn, 3467160477) then -- Fetichisms/Mystic
    RemoveSkill(Spawn, 3467160477)
end
if HasSkill(Spawn, 3191839982) then -- Vehemence/Defiler
    RemoveSkill(Spawn, 3191839982)
end

--Removed Mage for Scout
if HasSkill(Spawn, 3820670534) then -- Evocations/Mage
    RemoveSkill(Spawn, 3820670534)
end
if HasSkill(Spawn, 287643040) then -- Enchantments/Enchanter
    RemoveSkill(Spawn, 287643040)
end
if HasSkill(Spawn, 2898101972) then -- Hallucinations/Illusionist
    RemoveSkill(Spawn, 2898101972)
end
if HasSkill(Spawn, 2950599749) then -- Protean/Coecerer
    RemoveSkill(Spawn, 2950599749)
end
if HasSkill(Spawn, 2533124061) then -- Sorcery/Sorcerer
    RemoveSkill(Spawn, 2533124061)
end
if HasSkill(Spawn, 2662430630) then -- Elemental Mastery/Wizard
    RemoveSkill(Spawn, 2662430630)
end
if HasSkill(Spawn, 193411854) then -- Noctivagance/Warlock
    RemoveSkill(Spawn, 193411854)
end
if HasSkill(Spawn, 2120065377) then -- Legerdemain/Summoner
    RemoveSkill(Spawn, 2120065377)
end
if HasSkill(Spawn, 2042842194) then -- Conjurations/Conjurer
    RemoveSkill(Spawn, 2042842194)
end
if HasSkill(Spawn, 289471519) then -- Sepulchers/Necromancer
    RemoveSkill(Spawn, 289471519)
end

--REMOVED WEAPON
if HasSkill(Spawn, 2897193374) then -- Light Armor
    RemoveSkill(Spawn, 2897193374)
end
if HasSkill(Spawn, 2246237129) then -- Medium Armor
    RemoveSkill(Spawn, 2246237129)
end
if HasSkill(Spawn, 241174330) then -- Heavy Armor
    RemoveSkill(Spawn, 241174330)
end
if HasSkill(Spawn, 3177806075) then -- Fists
    RemoveSkill(Spawn, 3177806075)
end
if HasSkill(Spawn, 887279616) then -- Dagger
    RemoveSkill(Spawn, 887279616)
end
if HasSkill(Spawn, 1696217328) then -- Sword
    RemoveSkill(Spawn, 1696217328)
end
if HasSkill(Spawn, 2292577688) then -- Great Sword
    RemoveSkill(Spawn, 2292577688)
end
if HasSkill(Spawn, 2476073427) then -- Axe
    RemoveSkill(Spawn, 2476073427)
end
if HasSkill(Spawn, 2954459351) then -- Great Axe
    RemoveSkill(Spawn, 2954459351)
end
if HasSkill(Spawn, 1653482350) then -- Great Spear
    RemoveSkill(Spawn, 1653482350)
end
if HasSkill(Spawn, 1616998748) then -- Spear
    RemoveSkill(Spawn, 1616998748)
end
if HasSkill(Spawn, 3173504370) then -- Roundshield
    RemoveSkill(Spawn, 3173504370)
end
if HasSkill(Spawn, 2608320658) then -- Kite Shield
    RemoveSkill(Spawn, 2608320658)
end
if HasSkill(Spawn, 570458645) then -- Tower Shield
    RemoveSkill(Spawn, 570458645)
end
if HasSkill(Spawn, 3048574950) then -- Piercing
    RemoveSkill(Spawn, 3048574950)
end
if HasSkill(Spawn, 1756482397) then -- Ranged
    RemoveSkill(Spawn, 1756482397)
end
if HasSkill(Spawn, 540022425) then -- Parry
    RemoveSkill(Spawn, 540022425)
end
if HasSkill(Spawn, 1743366740) then -- Bow
    RemoveSkill(Spawn, 1743366740)
end
if HasSkill(Spawn, 2650425026) then -- Thrown Weapon
    RemoveSkill(Spawn, 2650425026)
end
if HasSkill(Spawn, 1553857724) then -- Investigation
    RemoveSkill(Spawn, 1553857724)
end
if HasSkill(Spawn, 3429135390) then -- Mystical Destruction
    RemoveSkill(Spawn, 3429135390)
end
if  HasSkill(Spawn, 2200201799) then -- Disarm Trap
    RemoveSkill(Spawn, 2200201799)
end

end

--------------------------------------------------------------
function MageSkills(NPC,Spawn)
   local level = GetLevel(Spawn)*5

if not HasSkill(Spawn, 3820670534) then -- Evocations
    AddSkill(Spawn, 3820670534,1,level)
    SendMessage(Spawn, "You have learned the Evocations skill")
end
if not HasSkill(Spawn, 3048574950) then -- Piercing
    AddSkill(Spawn, 3048574950,31,level)
    SendMessage(Spawn, "You have learned the Piercing skill")
end
if not HasSkill(Spawn, 3421494576) then -- Crushing
    AddSkill(Spawn, 3421494576,31,level)
    SendMessage(Spawn, "You have learned the Crushing skill")
end

--CASTING SKILLS
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
if not HasSkill(Spawn, 2638198038) then -- Focus
    AddSkill(Spawn, 2638198038,1,level)
    SendMessage(Spawn, "You have learned the Focus skill")
end

--WEAPON SKILLS
if not HasSkill(Spawn, 4037812502) then -- Buckler
    AddSkill(Spawn, 4037812502,1,level)
    SendMessage(Spawn, "You are now more proficient with a Buckler")
end
if not HasSkill(Spawn, 545043066) then -- Symbol
    AddSkill(Spawn, 545043066,1,level)
    SendMessage(Spawn, "You are now more proficient with a Symbol")
end
if not HasSkill(Spawn, 887279616) then -- Dagger
    AddSkill(Spawn, 887279616,1,level)
    SendMessage(Spawn, "You are now more proficient with a Dagger")
end
if not HasSkill(Spawn, 3180399725) then -- Staff(2h)
    AddSkill(Spawn, 3180399725,1,level)
    SendMessage(Spawn, "You are now more proficient with a Staff")
end


--REMOVED SKILLS
if HasSkill(Spawn, 1408356869) then -- Martial/Fighter
    RemoveSkill(Spawn, 1408356869)
end
if HasSkill(Spawn, 1124719197) then -- Tactics/Warrior
    RemoveSkill(Spawn, 1124719197)
end
if HasSkill(Spawn, 433335062) then -- Berserk/Berserker
    RemoveSkill(Spawn, 433335062)
end
if HasSkill(Spawn, 1209716810) then -- Protection/Guardian
    RemoveSkill(Spawn, 1209716810)
end
if HasSkill(Spawn, 3856706740) then -- Brawl/Brawling
    RemoveSkill(Spawn, 3856706740)
end
if HasSkill(Spawn, 2011726342) then -- Tranquility/Monk
    RemoveSkill(Spawn, 2011726342)
end
if HasSkill(Spawn, 3067436248) then -- Physicality/Bruiser
    RemoveSkill(Spawn, 3067436248)
end
if HasSkill(Spawn, 3809066846) then -- Faith/Crusader
    RemoveSkill(Spawn, 3809066846)
end
if HasSkill(Spawn, 90523872) then -- Determined Faith/Paladin
    RemoveSkill(Spawn, 90523872)
end
if HasSkill(Spawn, 2741805322) then -- Determined Zeal/Shadowknight
    RemoveSkill(Spawn, 2741805322)
end

--Removed Scout for Mage
if HasSkill(Spawn, 1921433074) then -- Reconnaissance/Scout
    RemoveSkill(Spawn, 1921433074)
end
if HasSkill(Spawn, 1311635100) then -- Melodies/Bard
    RemoveSkill(Spawn, 1311635100)
end
if HasSkill(Spawn, 296246391) then -- Ballads/Troubador
    RemoveSkill(Spawn, 296246391)
end
if HasSkill(Spawn, 340921594) then -- Dirges/Dirge
    RemoveSkill(Spawn, 340921594)
end
if HasSkill(Spawn, 1514256692) then -- Skulldugery/Rogue
    RemoveSkill(Spawn, 1514256692)
end
if HasSkill(Spawn, 2663054519) then -- Swashbuckling/Swashbuckler
    RemoveSkill(Spawn, 2663054519)
end
if HasSkill(Spawn, 1519965519) then -- Banditry/Brigand
    RemoveSkill(Spawn, 1519965519)
end
if HasSkill(Spawn, 3167106577) then -- Stalking/Predator
    RemoveSkill(Spawn, 3167106577)
end
if HasSkill(Spawn, 1400160844) then -- Archery/Ranger
    RemoveSkill(Spawn, 1400160844)
end
if HasSkill(Spawn, 2711101135) then -- Assassination/Assassin
    RemoveSkill(Spawn, 2711101135)
end

--Removed Priest for Mage
if HasSkill(Spawn, 2463145248) then -- Inspirations/Priest
    RemoveSkill(Spawn, 2463145248)
end
if HasSkill(Spawn, 3341842907) then -- Theurgy/Cleric
    RemoveSkill(Spawn, 3341842907)
end
if HasSkill(Spawn, 2581053277) then -- Regimens/Templar
    RemoveSkill(Spawn, 2581053277)
end
if HasSkill(Spawn, 1829443087) then -- Inquisitions/Inquisitor
    RemoveSkill(Spawn, 1829443087)
end
if HasSkill(Spawn, 3282420779) then -- Archegenesis/Druid
    RemoveSkill(Spawn, 3282420779)
end
if HasSkill(Spawn, 1624274802) then -- Nature's Reckoning/Fury
    RemoveSkill(Spawn, 1624274802)
end
if HasSkill(Spawn, 1040683335) then -- Nature's Refuge/Warden
    RemoveSkill(Spawn, 1040683335)
end
if HasSkill(Spawn, 3343700951) then -- Talismans/Shaman
    RemoveSkill(Spawn, 3343700951)
end
if HasSkill(Spawn, 3467160477) then -- Fetichisms/Mystic
    RemoveSkill(Spawn, 3467160477)
end
if HasSkill(Spawn, 3191839982) then -- Vehemence/Defiler
    RemoveSkill(Spawn, 3191839982)
end

--Removed Advance Mage

if HasSkill(Spawn, 287643040) then -- Enchantments/Enchanter
    RemoveSkill(Spawn, 287643040)
end
if HasSkill(Spawn, 2898101972) then -- Hallucinations/Illusionist
    RemoveSkill(Spawn, 2898101972)
end
if HasSkill(Spawn, 2950599749) then -- Protean/Coecerer
    RemoveSkill(Spawn, 2950599749)
end
if HasSkill(Spawn, 2533124061) then -- Sorcery/Sorcerer
    RemoveSkill(Spawn, 2533124061)
end
if HasSkill(Spawn, 2662430630) then -- Elemental Mastery/Wizard
    RemoveSkill(Spawn, 2662430630)
end
if HasSkill(Spawn, 193411854) then -- Noctivagance/Warlock
    RemoveSkill(Spawn, 193411854)
end
if HasSkill(Spawn, 2120065377) then -- Legerdemain/Summoner
    RemoveSkill(Spawn, 2120065377)
end
if HasSkill(Spawn, 2042842194) then -- Conjurations/Conjurer
    RemoveSkill(Spawn, 2042842194)
end
if HasSkill(Spawn, 289471519) then -- Sepulchers/Necromancer
    RemoveSkill(Spawn, 289471519)
end

--REMOVED WEAPONS
if HasSkill(Spawn, 2897193374) then -- Light Armor
    RemoveSkill(Spawn, 2897193374)
end
if HasSkill(Spawn, 2246237129) then -- Medium Armor
    RemoveSkill(Spawn, 2246237129)
end
if HasSkill(Spawn, 241174330) then -- Heavy Armor
    RemoveSkill(Spawn, 241174330)
end
if HasSkill(Spawn, 3177806075) then -- Fists
    RemoveSkill(Spawn, 3177806075)
end
if HasSkill(Spawn, 554333641) then -- Hammer
    RemoveSkill(Spawn, 554333641)
end
if HasSkill(Spawn, 1653482350) then -- Great Hammer
    RemoveSkill(Spawn, 1653482350)
end
if HasSkill(Spawn, 1696217328) then -- Sword
    RemoveSkill(Spawn, 1696217328)
end
if HasSkill(Spawn, 2292577688) then -- Great Sword
    RemoveSkill(Spawn, 2292577688)
end
if HasSkill(Spawn, 2476073427) then -- Axe
    RemoveSkill(Spawn, 2476073427)
end
if HasSkill(Spawn, 2954459351) then -- Great Axe
    RemoveSkill(Spawn, 2954459351)
end
if HasSkill(Spawn, 1653482350) then -- Great Spear
    RemoveSkill(Spawn, 1653482350)
end
if HasSkill(Spawn, 1616998748) then -- Spear
    RemoveSkill(Spawn, 1616998748)
end
if HasSkill(Spawn, 3173504370) then -- Roundshield
    RemoveSkill(Spawn, 3173504370)
end
if HasSkill(Spawn, 2608320658) then -- Kite Shield
    RemoveSkill(Spawn, 2608320658)
end
if HasSkill(Spawn, 570458645) then -- Tower Shield
    RemoveSkill(Spawn, 570458645)
end
if HasSkill(Spawn, 3048574950) then -- Piercing
    RemoveSkill(Spawn, 3048574950)
end
if HasSkill(Spawn, 1756482397) then -- Ranged
    RemoveSkill(Spawn, 1756482397)
end
if HasSkill(Spawn, 540022425) then -- Parry
    RemoveSkill(Spawn, 540022425)
end
if HasSkill(Spawn, 1743366740) then -- Bow
    RemoveSkill(Spawn, 1743366740)
end
if HasSkill(Spawn, 2650425026) then -- Thrown Weapon
    RemoveSkill(Spawn, 2650425026)
end
if HasSkill(Spawn, 1553857724) then -- Investigation
    RemoveSkill(Spawn, 1553857724)
end
if HasSkill(Spawn, 3429135390) then -- Mystical Destruction
    RemoveSkill(Spawn, 3429135390)
end
if HasSkill(Spawn, 2200201799) then -- Disarm Trap
    RemoveSkill(Spawn, 2200201799)
end
end

---------------------------------------------------------------
function ScoutSkills(NPC,Spawn)
   local level = GetLevel(Spawn)*5

if not HasSkill(Spawn, 1921433074) then -- Reconnaissance
    AddSkill(Spawn, 1921433074,1,level)
    SendMessage(Spawn, "You have learned the Reconnaissance skill")
end
if not HasSkill(Spawn, 1468243427) then -- Tracking
    AddSkill(Spawn, 1468243427,1,level)
    SendMessage(Spawn, "You have learned the Tracking skill")
end
if not HasSkill(Spawn, 2200201799) then -- Disarm Trap
    AddSkill(Spawn, 2200201799,1,level)
    SendMessage(Spawn, "You have learned the Disarm Trap skill")
end
 if not HasSkill(Spawn, 1756482397) then -- Ranged
    AddSkill(Spawn, 1756482397,1,level)
    SendMessage(Spawn, "You have learned the Ranged skill")
end
if not HasSkill(Spawn, 3048574950) then -- Piercing
    AddSkill(Spawn, 3048574950,1,level)
    SendMessage(Spawn,  "You have learned the Piercing skill")
end
if not HasSkill(Spawn, 418532101,1,level) then -- Slashing
    AddSkill(Spawn, 418532101,1,level)
    SendMessage(Spawn,  "You have learned the Slashing skill")
end
if not HasSkill(Spawn, 1852383242) then -- Dual Wield
    AddSkill(Spawn, 1852383242,1,level)
    SendMessage(Spawn, "You have learned the Dual Wield skill")
end
if not HasSkill(Spawn, 2650425026) then -- Thrown Weapon
    AddSkill(Spawn, 2650425026,1,level)
    SendMessage(Spawn, "You have learned the Thrown Weapon skill")
end
if not HasSkill(Spawn, 2638198038) then -- Focus
    AddSkill(Spawn, 2638198038,1,level)
    SendMessage(Spawn, "You have learned the Focus skill")
end

--WEAPON SKILLS
 if not HasSkill(Spawn, 2897193374) then -- Light Armor
    AddSkill(Spawn, 2897193374,1,level)
   SendMessage(Spawn, "You are now more proficient with Light Armor")
end
if not HasSkill(Spawn, 4037812502) then -- Buckler
    AddSkill(Spawn, 4037812502,1,level)
    SendMessage(Spawn, "You are now more proficient with a Buckler")
end
if not HasSkill(Spawn, 3173504370) then -- Roundshield
    AddSkill(Spawn, 3173504370,1,level)
    SendMessage(Spawn, "You are now more proficient with a Roundshield")
end
if not HasSkill(Spawn, 1616998748) then -- Spear
    AddSkill(Spawn, 1616998748,1,level)
    SendMessage(Spawn, "You are now more proficient with a Spear")
end
if not HasSkill(Spawn, 887279616) then -- Dagger
    AddSkill(Spawn, 887279616,1,level)
    SendMessage(Spawn, "You are now more proficient with a Dagger")
end
if not HasSkill(Spawn, 1743366740) then -- Bow
    AddSkill(Spawn, 1743366740,1,level)
    SendMessage(Spawn, "You are now more proficient with a Bow")
end
if not HasSkill(Spawn, 2476073427) then -- Axe
    AddSkill(Spawn, 2476073427,1,level)
    SendMessage(Spawn, "You are now more proficient with an Axe")
end
if not HasSkill(Spawn, 770311065) then -- Mace
    AddSkill(Spawn, 770311065,1,level)
    SendMessage(Spawn, "You are now more proficient with a Mace")
end
if not HasSkill(Spawn, 641561514) then -- Rapier
    AddSkill(Spawn, 641561514,1,level)
    SendMessage(Spawn, "You are now more proficient with a Rapier")
end
if not HasSkill(Spawn, 1696217328) then -- Sword
    AddSkill(Spawn, 1696217328,1,level)
    SendMessage(Spawn, "You are now more proficient with a Sword")
end

--REMOVE SKILLS
-- Remove Fighter for Scout
if HasSkill(Spawn, 1408356869) then -- Martial/Fighter
    RemoveSkill(Spawn, 1408356869)
end
if HasSkill(Spawn, 1124719197) then -- Tactics/Warrior
    RemoveSkill(Spawn, 1124719197)
end
if HasSkill(Spawn, 433335062) then -- Berserk/Berserker
    RemoveSkill(Spawn, 433335062)
end
if HasSkill(Spawn, 1209716810) then -- Protection/Guardian
    RemoveSkill(Spawn, 1209716810)
end
if HasSkill(Spawn, 3856706740) then -- Brawl/Brawling
    RemoveSkill(Spawn, 3856706740)
end
if HasSkill(Spawn, 2011726342) then -- Tranquility/Monk
    RemoveSkill(Spawn, 2011726342)
end
if HasSkill(Spawn, 3067436248) then -- Physicality/Bruiser
    RemoveSkill(Spawn, 3067436248)
end
if HasSkill(Spawn, 3809066846) then -- Faith/Crusader
    RemoveSkill(Spawn, 3809066846)
end
if HasSkill(Spawn, 90523872) then -- Determined Faith/Paladin
    RemoveSkill(Spawn, 90523872)
end
if HasSkill(Spawn, 2741805322) then -- Determined Zeal/Shadowknight
    RemoveSkill(Spawn, 2741805322)
end

--Removed Advance Scout

if HasSkill(Spawn, 1311635100) then -- Melodies/Bard
    RemoveSkill(Spawn, 1311635100)
end
if HasSkill(Spawn, 296246391) then -- Ballads/Troubador
    RemoveSkill(Spawn, 296246391)
end
if HasSkill(Spawn, 340921594) then -- Dirges/Dirge
    RemoveSkill(Spawn, 340921594)
end
if HasSkill(Spawn, 1514256692) then -- Skulldugery/Rogue
    RemoveSkill(Spawn, 1514256692)
end
if HasSkill(Spawn, 2663054519) then -- Swashbuckling/Swashbuckler
    RemoveSkill(Spawn, 2663054519)
end
if HasSkill(Spawn, 1519965519) then -- Banditry/Brigand
    RemoveSkill(Spawn, 1519965519)
end
if HasSkill(Spawn, 3167106577) then -- Stalking/Predator
    RemoveSkill(Spawn, 3167106577)
end
if HasSkill(Spawn, 1400160844) then -- Archery/Ranger
    RemoveSkill(Spawn, 1400160844)
end
if HasSkill(Spawn, 2711101135) then -- Assassination/Assassin
    RemoveSkill(Spawn, 2711101135)
end

--Removed Priest for Scout
if HasSkill(Spawn, 2463145248) then -- Inspirations/Priest
    RemoveSkill(Spawn, 2463145248)
end
if HasSkill(Spawn, 3341842907) then -- Theurgy/Cleric
    RemoveSkill(Spawn, 3341842907)
end
if HasSkill(Spawn, 2581053277) then -- Regimens/Templar
    RemoveSkill(Spawn, 2581053277)
end
if HasSkill(Spawn, 1829443087) then -- Inquisitions/Inquisitor
    RemoveSkill(Spawn, 1829443087)
end
if HasSkill(Spawn, 3282420779) then -- Archegenesis/Druid
    RemoveSkill(Spawn, 3282420779)
end
if HasSkill(Spawn, 1624274802) then -- Nature's Reckoning/Fury
    RemoveSkill(Spawn, 1624274802)
end
if HasSkill(Spawn, 1040683335) then -- Nature's Refuge/Warden
    RemoveSkill(Spawn, 1040683335)
end
if HasSkill(Spawn, 3343700951) then -- Talismans/Shaman
    RemoveSkill(Spawn, 3343700951)
end
if HasSkill(Spawn, 3467160477) then -- Fetichisms/Mystic
    RemoveSkill(Spawn, 3467160477)
end
if HasSkill(Spawn, 3191839982) then -- Vehemence/Defiler
    RemoveSkill(Spawn, 3191839982)
end

--Removed Mage for Scout
if HasSkill(Spawn, 3820670534) then -- Evocations/Mage
    RemoveSkill(Spawn, 3820670534)
end
if HasSkill(Spawn, 287643040) then -- Enchantments/Enchanter
    RemoveSkill(Spawn, 287643040)
end
if HasSkill(Spawn, 2898101972) then -- Hallucinations/Illusionist
    RemoveSkill(Spawn, 2898101972)
end
if HasSkill(Spawn, 2950599749) then -- Protean/Coecerer
    RemoveSkill(Spawn, 2950599749)
end
if HasSkill(Spawn, 2533124061) then -- Sorcery/Sorcerer
    RemoveSkill(Spawn, 2533124061)
end
if HasSkill(Spawn, 2662430630) then -- Elemental Mastery/Wizard
    RemoveSkill(Spawn, 2662430630)
end
if HasSkill(Spawn, 193411854) then -- Noctivagance/Warlock
    RemoveSkill(Spawn, 193411854)
end
if HasSkill(Spawn, 2120065377) then -- Legerdemain/Summoner
    RemoveSkill(Spawn, 2120065377)
end
if HasSkill(Spawn, 2042842194) then -- Conjurations/Conjurer
    RemoveSkill(Spawn, 2042842194)
end
if HasSkill(Spawn, 289471519) then -- Sepulchers/Necromancer
    RemoveSkill(Spawn, 289471519)
end

--REMOVE WEAPON
if HasSkill(Spawn, 2246237129) then -- Medium Armor
    RemoveSkill(Spawn, 2246237129)
end
if HasSkill(Spawn, 241174330) then -- Heavy Armor
    RemoveSkill(Spawn, 241174330)
end
if HasSkill(Spawn, 3177806075) then -- Fists
    RemoveSkill(Spawn, 3177806075)
end
if HasSkill(Spawn, 2292577688) then -- Great Sword
    RemoveSkill(Spawn, 2292577688)
end
if HasSkill(Spawn, 2954459351) then -- Great Axe
    RemoveSkill(Spawn, 2954459351)
end
if HasSkill(Spawn, 1653482350) then -- Great Spear
    RemoveSkill(Spawn, 1653482350)
end
if HasSkill(Spawn, 1616998748) then -- Spear
    RemoveSkill(Spawn, 1616998748)
end
if HasSkill(Spawn, 2608320658) then -- Kite Shield
    RemoveSkill(Spawn, 2608320658)
end
if HasSkill(Spawn, 570458645) then -- Tower Shield
    RemoveSkill(Spawn, 570458645)
end
if HasSkill(Spawn, 540022425) then -- Parry
    RemoveSkill(Spawn, 540022425)
end
if HasSkill(Spawn, 1553857724) then -- Investigation
    RemoveSkill(Spawn, 1553857724)
end
if HasSkill(Spawn, 3429135390) then -- Mystical Destruction
    RemoveSkill(Spawn, 3429135390)
end

if HasSkill(Spawn, 366253016) then --Ministration
    RemoveSkill(Spawn, 366253016)
end
if HasSkill(Spawn, 613995491) then -- Disruption
    RemoveSkill(Spawn, 613995491)
end
if HasSkill(Spawn, 882983852) then -- Subjigation
    RemoveSkill(Spawn, 882983852)
end
if HasSkill(Spawn, 3587918036) then -- Ordination
    RemoveSkill(Spawn, 3587918036)
end
end

--HARVESTING SKILLS
function HarvestSkills(NPC,Spawn)
  local  level = GetLevel(Spawn)*5
if  HasSkill(Spawn, 1970131346) then -- Transmuting
    RemoveSkill(Spawn, 1970131346)
end
if not HasSkill(Spawn, 3659699625) then -- Mining
    AddSkill(Spawn, 3659699625,1,level)
end
if not HasSkill(Spawn, 688591146) then -- Foresting
    AddSkill(Spawn, 688591146,1,level)
end
if not HasSkill(Spawn, 1048513601) then -- Gathering
    AddSkill(Spawn, 1048513601,1,level)
end
if not HasSkill(Spawn, 4158365743) then -- Trapping
    AddSkill(Spawn, 4158365743,1,level)
end
if not HasSkill(Spawn, 2319450178) then -- Fishing
    AddSkill(Spawn, 2319450178,1,level)
end 
end
