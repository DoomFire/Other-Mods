Other-Mods
==========

Other Various smaller Starbound mods to mess around with.

[]  Power Socket
    	- classy glitch descriptions/puns
    	- gunpoint style wire item: stuns/kills/damages whatever walks in front of it when activated trough wire (possibly makes what it is connected too also electrify)

------------------------------------------------------------------------------------------------------------------------
[]  Shortcut Gates
	- Doorway attached to the background.
	- Entering the doorway will send the player to another doorway
		- Randomly generated ones could send to a randomly generated area, making it seem like you've entered an entire new area.
		- Player placed ones could instead be a sort of shortcut to another area.
  
------------------------------------------------------------------------------------------------------------------------
[]  Jump Pads
    	- Jumppads will throw the player from the launchpad to a gravity cancelling landing pad.
	- They will calculate the force needed to launch the player via the Distance and the Angle
`		- Angle ( Will choose the lowest angle without collision to land on-top of the landing pad )
		- Distance ( Can find the landing pad via world.objectQuery. Then calculate the distance between them without collision. )
		- Force ( The amount of force required to throw the player exactly onto the landing pad. )
		- Angle x Distance = Force ( I think that's right anyway. )

------------------------------------------------------------------------------------------------------------------------
[] Racial mechs.
	- Human mech
		- Provides extra storage space.
		- Acts as a chest.

		- considerably generic mech, possibly with a large storage container attached to the back.

	- Apex mech
		- Fast, mobile.
		- Possibly only melee weapons.
		
		- Could look like a giant ape? using it's large forearms to move and grapple onto terain to climb and such.

	- Avian mech
		- Slow flight. light armour.

		- Large jetpack on back, large wing-like arms. When in flight, it changes to look more like something that flies.
 
	- Floran mech
		- Energy recharge in sunlight, self sustainable unless firing weapons.

		- possibly wood looking. Either branches poking from it's back or solar panel looking things.

	- Glitch mech
		- super awesome mining castle with jousting drills and heavy armour.

		- Something that looks like a castle with a large lance with a drill attached to the end.

	- Hylotl mech
		- Really quick swimmer, no need to breathe, overall pretty cool.

		- Big blue looking thing. When it enters the water it transforms into a much more streamline thing which transverses water quickly. 

------------------------------------------------------------------------------------------------------------------------
[] Custom vehicles.
	- Crafting vehicles.
		- Crafting basic vehicles/mechs will take place with it's own custom crafting interface as well as it's own room on each races ship ( once that's at least in unstable )
			- BASIC VEHICLE CRAFTING. Mid game crafting table that deals with static vehicles. Pretty much just a regular crafting bench.
			- ADVANCED VEHICLE CRAFTING. mid-late game a crafting table which deals with combining parts of mechs together. ( Perhaps other vehicles? Not completely sure though. )
			  Different sections within the crafting interface of the custom mech table that are used to place different parts of the mech into. 
			  Crafting the parts together would provide an object to spawn the mech with.
			- HOLOGRAPHIC VEHICLE PROJECTOR mid-late game object that interacts with the custom mech crafting bench and displays the mech that would be made with parts currently in the crafting interface. 
			  Done so by spawning hologram like objects over each-other above the projector when each item is placed into the crafting bench.
		- Blueprints for vehicle parts will be found via digging, chests, exploring and fighting. The player will start with a few pre-known blueprints. ( Likely parts for their racial mech. )
	
	- Using Vehicles.
		- Spawning Vehicles.
			- Crafting a 'Beacon' from the Advanced Vehicle crafting station and placing it down in an open area ( Space enough for the vehicle to spawn + above ground ) will begin a countdown.
			  Once the countdown reaches 0, it will spawn a mech object, which will appear to teleport down from the ship.
			- Interacting with mech will put the player in it and activate the tech.
			- To send your mech back to ship, Press 'F'. This will spawn the beacon again and send your mech back to the ship. You will then be able to pick up the beacon and go as you were.
		- Vehicular interfacing tech.
			- This tech is an all-in-one interfacing system. It is used to control any and all vehicles and can be built from the basic vehicle crafting station.
			- Tech contains data and functions for every vehicle, which are filtered with object queries on the vehicle in question.
			
				I.E objectQuery(vehicle)
					<Is this the mech?>
					  if setAnimationState( leftArm, machineGun ) then
					    data.leftArm = machineGun
					  elseif setAnimationState ( leftArm, rocketLauncher ) then
					    data.leftArm = rocketLauncher
						
					  ....etc....
					  
					  end
					objectQuery(vehicle)
					<mech>
					  if setAnimationState( rightArm, machineGun ) then
					    data.rightArm = machineGun
					    etc etc
					  end

		- Interacting with the mech object will break the object and activate the mech. The mech will function using the variables defined earlier from the object.
		  Pressing 'f' deactivates the mech and spawns the original mech object again.
					  
					  
					  
					  
------------------------------------------------------------------------------------------------------------------------
[] Bard Buffs.
	- Backpack that allows instrument enchantment.
	- Instruments provide buffs while being played.
		- Run and jump
		- Glow on self
		- Small health regen
		- small energy regen
		- small warmth
		- small hunger
		- slow on monsters
		- small additional armour
		- extra money on kill
	- Possible Bard NPCs which sell instruments and play music?

------------------------------------------------------------------------------------------------------------------------
[] Medical vendor / First aid cupboard.
  - Cyanide for insta-gib.
  - Mixing stims via a stim mixer.
  - Other medical based items.

------------------------------------------------------------------------------------------------------------------------
[] Time freeze tech
  - Time slow tech ( Less energy cost eqivilant. )
  - Create Particle that causes grab + disable for certain amount of time.
  - "                                 " slow + float.

------------------------------------------------------------------------------------------------------------------------
[] Earthquake
	- slightly damages objects to make them shake.
	- breaks other objects.

------------------------------------------------------------------------------------------------------------------------
[] Tentacle follower
  - Party hat + optional party curly thing.
  - can only climb 1 high blocks.
  - teleports with a digging animation when player or enemy is out of reach

------------------------------------------------------------------------------------------------------------------------
[] Horror / Flesh dungeon.
	- Eyes which open unexpectedly ( transparent while closed, then open 	and follow the player.)
	- Doors that open like a mouth.
	- invisible enemy that giggles like a child before appearing and stiking 	the player.
	
	- Thick darkness, blinding status.
	- static white noise.
	- creepy giggles

------------------------------------------------------------------------------------------------------------------------
[] Stargate
	- Change teleport animation to rings.
	- Stargate with explosion that kills players and monsters
	- switch for stargate.
	- Guauld carrior ship
	
	Races:
		Wraith
			- Wraith Dungeon
				- Wraith mothership
				- Breeding facility
			- Player ship
				- Dart player ship
			- Race Bonus
				- armour gives food on kill.

		Asgard
			- Asgard Dungeons
				- Crashed ship
				- Hall of <Asgard name>'s Might.
			- Player ship
			- Race Bonus
				- Armour Provides greater intel? ( I.E displays enemy health and such )

		Gua'uld ( Unas / Human / Jaffa / Tolk'ra)
			- Goa'uld Dungeons
				- Temple / landed mothership.
				- Pyramid
			- Player ship
				- Al'kesh / Tel'tak / Ha'tak for playership
			- Race Bonus
				- Extra protection? Hand device starter instead of matter manipulator?

		Ancient
			- Ancient Dungeons
				- Ruins.
				- Outposts
				- Cities (rare)
			- Player ship
				- Puddle Jumper?
			- Race Bonus
				- ???

		Replicators
			- Replicator Dungeons
				- Replicator infested things.
				- Replicator cities.
			- Player Ship
				- Made of Replicator blocks.
			- Race bonus
				- Replicator spider pet.
		
	Enemies:
	
		- Replicator bugs. 
			- Eat surroundings and spawn more replicators
			- Three types, Weak, Medium, Strong. Different spawned dependant on blocks destroyed.
	
		- Unas (Villages, etc)
			- Friendly until you come to close.

		- Goa'uld Symbiote
			- Fish
