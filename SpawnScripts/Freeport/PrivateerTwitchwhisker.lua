--[[
	Script Name		:	<script-name>
	Script Purpose	:	<purpose>
	Script Author	:	<author-name>
	Script Date		:	1/1/2019
	Script Notes	:	<special-instructions>
--]]

function spawn(NPC)

end

function respawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Have you come to join the Seafury Buccaneers?  Open seas and plenty of swag await you!", "agree", 1689589577, 4560189, Spawn) 
    local zone = GetZone(Spawn)
    local new_spawn = SpawnMob(zone, 2530015, false, -232.91 , -56.06, 157.24, 166.65)
    if new_spawn ~= nil then
        AddSpawnAccess(new_spawn, Spawn)

    end
end