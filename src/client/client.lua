CreateThread(function()
    lib.registerContext({
        id = 'blackmarket',
        title = 'Blackmarket opties',
        options = {
            {
                title = 'Wapens kopen',
                icon = 'fa-solid fa-gun',
                description = 'Koop een wapen van de wapendealer.',
                onSelect = function()
                    exports.ox_inventory:openInventory('shop', { type = 'blackmarket' })            
                end,
            },
            {
                title = 'Munitie kopen',
                icon = 'fa-solid fa-person-rifle',
                description = 'Koop munitie van de wapendealer.',
                onSelect = function()
                    exports.ox_inventory:openInventory('shop', { type = 'blackmarketammo' })            
                end,
            },
        }
    })
    
    RequestModel(GetHashKey(Shared.Model))
    
    while not HasModelLoaded(GetHashKey(Shared.Model)) do
        Wait(500)
    end
    
    ped = CreatePed(0, GetHashKey(Shared.Model), Shared.Coords.x, Shared.Coords.y, Shared.Coords.z, Shared.Heading, false, false)
      
	SetPedDiesWhenInjured(ped, true)
	SetEntityInvincible(ped, true)
	FreezeEntityPosition(ped, true)
	SetPedRelationshipGroupHash(ped, "MISSION8")
    GiveWeaponToPed(ped, "WEAPON_AK47", 0, true , true)

	SetRelationshipBetweenGroups(0, "MISSION8", "PLAYER")
	SetBlockingOfNonTemporaryEvents(ped, true)
	exports.qtarget:AddTargetEntity(ped, {
		options = {
			{
				label = "Blackmarket",
				icon = "fa-solid fa-comment-dots",
                action = function()
                    lib.showContext('blackmarket')
                end,
			},
		},
		distance = 2.5
	})
end)

