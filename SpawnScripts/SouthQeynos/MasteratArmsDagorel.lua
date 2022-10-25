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