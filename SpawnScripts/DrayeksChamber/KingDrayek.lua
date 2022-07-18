--[[
    Script Name    : SpawnScripts/DrayeksChamber/KingDrayek.lua
    Script Author  : Neveruary
    Script Date    : 2022.07.17 09:07:46
    Script Purpose : Governs behavior of King Drayek in Drayek's Chamber (non-quest)
                   : Drayek has two unique abilities: Strike of the Giant King and Giant's Kick. Giant's Kick is a huge knockback.
                   : Drayek begins the encounter by allowing the frozen sentinels and vigilants to attack first. He then sends his wolves after the players, and finally engages.
                   : At set intervals, he calls adds (his royal guards twice, and then his 'kings of old') and then the encounter ends.
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end