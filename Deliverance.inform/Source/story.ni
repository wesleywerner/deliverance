"Deliverance" by "Wesley Werner"

The story headline is "Some demons are more real than others,".

[ We use the press any key to continue extension ]
Include Basic Screen Effects by Emily Short.
Release along with a solution.
Release along with the library card.
Release along with cover art.
Release along with a file of "Map" called "floorplan.jpg".
[Release along with a file of "Design notes" called "deliverance-design.txt".]
Release along with an introductory postcard.
Release along with an interpreter.

Part 1 - Definitions

Chapter 1 - Actions

[ Allow manual scene advancement by tracking the done state. ]
A scene can be done or undone. A scene is usually undone.

[ display viewpoint character in the prompt ]
When play begins:
    now the command prompt is "[player] > ";

Knocking is an action applying to one thing. Understand "knock on [something]" as knocking.
Check knocking:
	if the noun is not a door, say "Usually you only knock on doors."
Carry out knocking:
	say "You knock on [the noun]."

[ the standard cutting action does not recognize cutting something with a tool. We simply redirect this tool analogy to the standard rule. ]
Cutting it with is an action applying to two things. Understand "cut [something] with [something carried]" as cutting it with. Carry out cutting it with: try cutting the noun instead.

[ firing our service pistol ]
Shooting at is an action applying to one thing. Understand "shoot [something] with the/your/-- gun" as shooting at. Understand "shoot [something]" as shooting at. Understand "shoot gun" and "fire gun" as a mistake ("To use your service pistol, try [bold type]shoot the door[roman type] or [bold type]shoot the killer[roman type].").
Check shooting at when the noun is the player: say "Suicide is not the answer." instead.
Carry out shooting at: try attacking the noun. [say "[the noun] is no threat to you."]

Untying is an action applying to one thing. Understand "untie [something]" as untying. Carry out untying: say "You can't untie that."

[ Allow lookout out windows by "searching" them instead ]
Looking out is an action applying to one thing. Understand "look out [something]" as looking out. Carry out looking out: try searching noun instead.

[ Climb through windows ]
Climbing out is an action applying to one thing. Understand "climb in/out/through [something]" as climbing out. Carry out climbing out: try entering the noun.

[ Kicking things is synonomous with attacking ]
Understand "kick [something]" as attacking.

[ Go up and down stairs with more natural language ]
Traversing up is an action applying to nothing. Understand "go up stairs" as traversing up. Instead of traversing up, try going up.
Traversing down is an action applying to nothing. Understand "go down stairs" as traversing down. Instead of traversing down, try going down.

[ Calling out for something or someone ]
Understand "call for help" as "[shouting]".
Calling out is an action applying to nothing. Understand "[shouting]" as calling out. Carry out calling out: say "You shout."

[ pause the game and wait for a key press]
To pause for dramatic effect:
	say "[paragraph break][bold type]press a key to continue...[roman type][paragraph break]";
	wait for any key;
	say "[paragraph break]";
	[clear the screen;]


Chapter 2 - Characters

[ Since we play multiple characters, we have three descriptions: the player looks at self, the player looks in the mirror, the player looks at a (previously played) character. The latter uses the default person "description" property. ]
A person has some text called self description.
A person has some text called mirror description.
A person can be tied or untied. A person is usually untied.
A person can be bleeding. A person is usually not bleeding.
A person can be delayed. A person is usually not delayed.
A person can be dead. A person is usually not dead.

[ Fix display of the current player name in the command line ]
Rule for printing the name of Victoria: say "The Girl". 
Rule for printing the name of Otto: say "Otto". 
Rule for printing the name of Tad: say "Tad".

[ player examining self yields a different response than when seen from another viewpoint character. ]
Instead of examining the player:
	say "[self description of the player][paragraph break]".

Instead of taking inventory when the player is tied:
	say "You are tied up and cannot search your pockets."

Victoria Cote is a woman. The description is "This girl puts you in mind of a frightened cat. She has large orange eyes that are like two flames. Her messy, straight, brown hair is worn in a style that reminds you of a comet's trail. She is short and has an hourglass build. Her skin is cream-coloured. She has a high forehead and wide feet. Her wardrobe is strange."
The self description of Victoria is "You see dirt on your bruised arms. You are wearing red jeans and a yellow blouse. [if Victoria is tied]Your hands are tied with ropes to the back of the chair, your feet tied to the legs of the chair.[end if]".
The mirror description of Victoria is "Big orange eyes stare back at you. Your straight brown hair is tangled about your face. You look like hell."
Understand "girl" and "the girl" as Victoria.

Detective Otto York is a man. The description is "This determined gentleman has droopy violet eyes. His silky, wavy, vermilion hair is worn in a style that reminds you of a river. He has a graceful build. His skin is cream-coloured. He has thin eyebrows. He wears black jeans, light blue collared shirt and leather jacket."
The self description of Otto is "You are wearing black jeans, a light blue collared shirt and a leather jacket. A gun holster is strapped underneath around your shoulder, a badge is attached to your belt."
The mirror description of Otto is "A determined gentleman with droopy violet eyes and thin eyebrows. Your brown hair is worn in a style that reminds you of a river."

Your badge is a thing carried by Otto. The description is "[if tactical-torch is lit]You shine your torch on your badge. [end if]A silver badge attached to your belt, with words embossed on the front, Detective Otto York. Homicide."
A gun is a thing carried by Otto. The description is "A Glock 9mm, standard issue."
A tactical-torch is a device carried by Otto. The description is "A high-powered tactical torch." The printed name of a tactical-torch is "torch". Understand "torch" as tactical-torch.
Instead of switching on the tactical-torch:
	if the location is not dark, say "You don't need it right now." instead;
	say "A bright beam flows out of your torch.";
	Now the tactical-torch is lit.
Instead of switching off the tactical-torch:
	if the tactical-torch is lit:
		now the tactical-torch is not lit;
	say "click."


Tad Kemp is a man. The description is "A lithe man [if Tad is dead]lies on the floor staring[else]glares at you[end if] through slit brown eyes. His ruddy tone and wavy brown hair does nothing to detract from his prowling jackal disposition."
The self description of Tad is "You are wearing stained brown trousers and a black golf shirt. You have not looked in a mirror recently, for fear of what Demons may stare back."
Understand "killer" as Tad Kemp.

Instead of searching a dead Tad Kemp:
	say "You find [list of things carried by Tad]";
	now all things carried by Tad is in the location;

Instead of cutting Tad:
	try attacking Tad.

A Demon is an animal. The description is "It has the figure of a man with leather-like skin, it has no use for clothes. The knees bend backwards, six razor talons extend where fingers would be. Sharp fangs fill the mouth, a bald head is adorned with two goat-like horns."


Chapter 3 - Not for release

[To pause for dramatic effect:
	say "[paragraph break][bold type]press a key to continue...[roman type][paragraph break]";
	Do nothing.
]

After reading a command (this is the ignore beta-comments rule):
	if the player's command matches the regular expression "^\p":
		say "(Noted)";
		reject the player's command.

When play begins:
	say "# BETA RELEASE[line break]# Enter SCRIPT as your first command to record your session. You can add annotations during play via '?' or '!' prefixes: '? I have no idea what to do' or '! This thing is really lame'[paragraph break]";

Chapter 4 - Default responses

standard report taking rule response (A) is "You pick up [the noun].".
can't open unless openable rule response (A) is "You can't seem to open [the noun].".
can't unlock without the correct key rule response (A) is "[The second noun] does not fit [the noun] lock.".
can't open what's locked rule response (A) is "[The noun] [are] locked.".
block attacking rule response (A) is "On second thought, you don't think that is a good idea.".




Part 2 - Rooms

[* A place the player can wait while we set up ]
The Waiting Room is a room.	

The interior is a region. The Parlour, Living room, second floor hall, bathroom, second-floor-bedroom-south, second-floor-bedroom-east, third floor hall, third floor bedroom and Loft are in the interior.

Chapter 1 - Front of the house

Front of the house is a room. The description is "You are in front of an old house. The flaking paint and shoddy walkway indicate it's age and abandonment. The front door is here, the porch wraps around the building, towards the south. You are carrying [list of things carried by the player]."

The house proper is a thing in the front of the house. It is scenery. Understand "house" as the house proper. The description is "Shabby and derelict." Instead of entering the house proper, try entering the front door.

The front floor is in front of the house. It is scenery. Understand "porch" and "walkway" as front floor. The description is "It is aged and weathered."

[ helper that allows the player to just go south to the porch. ]
Instead of going south when the location is the front of the house: try going southwest.

The front door is a locked door. It is west of the Front of the house. It is scenery. The description is "A solid wood door with a knocker fixed on the front."

The knocker is a part of the front door. The description is "A tarnished bronze knocker, the part fixed to the door is shaped like a cat's head. The hinged part that of a rat, hanging by it's tail from the cat's mouth." Understand "rat" and "cat" as knocker. Understand "use knocker" as a mistake ("Perhaps you meant to [italic type]knock on the door[roman type]?").

The knob is a part of the front door. The description is "An oval shaped bronze door knob."

Instead of knocking the front door, say "This building is marked under abandonment, you don't need to knock or have a warrant to enter. Plus you want to avoid making your presence known to anybody inside. Stopping the perpetrator is your priority. Finding the girl safe, even more so."

Instead of opening the front door, say "You grasp the oval shaped metal door knob, with a firm grip you twist it back and forth. Locked."

Instead of attacking the front door, say "This door may be old, but it is too solid to break down."

Carry out going southwest when the location is front of the house: say "You walk down the porch, and around to the south side of the house."


Chapter 2 - Porch

Porch is a room. It is southwest of the Front of the house. The description is "The rough wood of the porch is weathered and stripped of varnish. There are two windows here. The porch continues west. The front door is back to the north."

[ helper that allows the player to just go north. ]
Instead of going north when the location is the Porch: try going northeast.

Some porch-windows is a thing in the porch. The printed name is "windows". It is scenery. Understand "window" and "windows" as porch-windows. The description is "Murky and dark, you can only make out the shapes of a table and some chairs. It looks like a parlour." Instead of searching porch-windows, try examining porch-windows. Instead of attacking porch-windows, say "You prefer finding a less noisy way inside." Instead of opening porch-windows, say "These windows are not supposed to open."

Some porch-planks are in the porch. Understand "wood" and "porch" and "floor" as porch-planks. It is scenery. The description is "The rough wood planks of the porch are weathered and stripped of their varnish years ago."

Carry out going northwest when the location is the porch: say "You walk along the porch to the west side of the house."







Chapter 3 - Rear of the house

Rear of the house is a room. It is northwest of the Porch. The description is "The back of the house is no less weathered. There is a bay window here."

[ helper that allows the player to just go east/west to/from the porch ]
Instead of going east when the location is the rear of the house: try going southeast. Instead of going west when the location is the porch: try going northwest.

The bay window is a door. It is east of Rear of the house and west of the Parlour. The description is "It is divided into four panes of glass, and sits about chest-height." It is scenery.

Instead of searching the bay window, say "You see the parlour inside."

Instead of opening the bay window:
	now the bay window is open;	
	say "You pull on the window frame, rust crumbles between the hinges. It swings open.";
	stop the action;

[Carry out going east when the location is the rear of the house:]
Carry out going the bay window: 
	say "Looking to make sure the room is empty, you slip inside."

[ some helpers for entering the bay window / house ]
A rear-house-proxy is in Rear of the house. It is scenery. Understand "house" as rear-house-proxy. The description is "The rear of a shabby derelict house". Instead of entering rear-house-proxy, try entering bay window.





Chapter 4 - Parlour

Parlour is a room. The description is "A large carpet covers the floor. A low and wide table dominates the room, tattered armchairs guarding it. A silver serving dish is on the table. A bay window is to the west, a door to the north."

parlour-chairs are a thing in the parlour. It is fixed in place. It is scenery. The printed name is "chair". The description is "Torn and tattered, the floor looks more inviting." Instead of entering parlour-chairs, say "You did not come here for the holiday." Understand "chair" and "chairs" and "armchair" and "armchairs" as parlour-chairs.

parlour-carpet is a thing in the parlour. It is fixed in place. It is scenery. The printed name is "carpet". The description is "It's once-floral pattern, now faded by time and memory, reminds you of a muddy lily pond." Understand "floor" and "carpet" as parlour-carpet.

parlour-table is a supporter in the parlour. It is fixed in place. It is scenery. The printed name is "table". The description is "A dark wood table with Flemish scroll style legs." Understand "table" as parlour-table.

parlour-legs is a part of parlour-table. The description is "The legs have scrolls at the top and bottom, spiralling in opposite directions. It must be hand carved." Understand "legs" as parlour-legs.

A closed container called serving dish is on the parlour-table. It is fixed in place. It is scenery. The description is "An undecorated silver dish, tarnished with age. [if serving dish is closed]A lid covers it.[end if]". Understand "lid" as serving dish. Instead of closing the serving dish, say "You decide to leave the dish alone. It is evidence."

Instead of opening the serving dish:
	if the serving dish is open:
		say "There is no need to relive that moment all over again.";
		stop the action;
	now the serving dish is open;
	say "Despite this silly act of curiosity, you have to see what is on the dish. You have to be sure. You lift the lid to reveal [list of things in serving dish].";

Some bone fragments are in the serving dish. It is plural-named. The description is "These are his trophies. You are now convinced this is, the right place." Understand "bones" as bone fragments. Instead of taking bone fragments, say "No, they can be taken into evidence later. Time matters."

Instead of taking serving dish:
	if serving dish is open:
		say "No, they can be taken into evidence later. Time matters.";
	otherwise:
		try opening serving dish;






Chapter 5 - Living room

Living room is a room. The description is "An old couch rests against a wall, a painting hangs above it. A writing desk squats in one corner, and a serving trolley in the other. A door to the south leads back to the Parlour, another leads to the east. Stairs go up to the second floor."

Some living-room-stairs are in the living room. It is scenery. Understand "stairs" as living-room-stairs. The description is "A flight of wooden stairs that lead up."

The living room door is a door. It is north of the Parlour and south of the Living Room. It is scenery. 
Instead of opening the living room door:
	now the living room door is open;
	say "You open the door as silently possible.";

A trolley is a supporter in the living room. It is scenery. The description is "An rickety looking thing slanted to one side: two of the wheels are missing. It has [a list of things on a trolley] on it."
Instead of pushing a trolley, say "It is broken and refuses to move."
Some wheels are a part of the trolley. The description is "The two remaining wheels are discs of black plastic." Understand "wheel" as wheels.

A teapot is a closed openable container on the trolley. It is scenery. The description is "A white ceramic teapot with a decorative design painted on: green leaves with violet and magenta orchid blooms. The handle in the shape of butterfly wings." Instead of taking teapot, say "You refuse to break for tea."

Instead of opening the teapot:
	now the teapot is open;
	say "Lifting the butterfly lid, a [list of things in teapot] is revealed inside the teapot."
	
Some teacups are on the trolley. It is scenery. The description is "Pale white tea cups without any designs." Understand "cup" and "teacup" as teacups. Instead of taking teacups, say "You refuse to break for tea."

A business card is in the teapot. The description is "A white card with black print." Instead of examining a business card, say "'Unholy Battle pest control, Tad Kemp'. You notice an impression like writing on the back of the card." Instead of turning a business card, say "The back of the card has 6375 written on it."

A painting is in the living room. It is fixed in place. It is scenery. The description is "It depicts four horsemen riding through the sky, rolling clouds behind them. On the earth below, soldiers and slaves alike engage in a battle frenzy. You recognize the horsemen by name: Conquest, War, Famine and Death."
Some horsemen are part of the painting. Understand "horses" as horsemen. The description is "Conquest wears fine clothes, wields a longbow and a crown adorns his head. War is swinging a two-handed broad sword. Famine holds a sling, dressed in rags and looking fierce. The skeleton that is Death grips a long staff, his gaze causing recoil in those who it falls upon."
Some clouds are part of the painting. Understand "rolling clouds" as clouds. The description is "The clouds in the painting seem in turmoil, blocking out the entirety of the sky, except for one small patch in the heavens above, occupied by a lonesome white lamb."
A lamb is part of the painting.  The description is "It watches the scene below with quiet indifference."
Some fighters are part of the painting. Understand "soldiers" and "slaves" as fighters. The description is "The soldiers and slaves are in the middle of a massive battle. It does not seem they can tell friend apart from foe."

A writing desk is a supporter in the living room. It is scenery. The description is "A squat dark wood desk. You notice engravings on it's surface." Instead of opening the writing desk, say "It has no drawers to open."
Some engravings are part of the writing desk. The description is "Names carved into the varnished wood. You read: Annette Faith Parker. Meghan Mcclure. Jami Berg. All previous victims."

A couch is in the living room. It is scenery.  The description is "A musty antiquated thing, likely a housing for many unseen critters."
Instead of searching a couch, say "You only find dust." Instead of entering couch, say "And risk all the lice and bedbugs living in it?"

Check going up when the location is the living room:
	if the second act is undone:
		now the second act is done;
		stop the action;








Chapter 6 - Kitchen

The Kitchen is a room. The description is "In the pale light you see a bare kitchen: scuffed wooden floors, a table and some cupboards fixed to the wall. There is a door to the west."
 
The kitchen door is a locked door. It is scenery. It is east of the Living room and west of the Kitchen.
Does the player mean unlocking kitchen door with bronze key: it is very likely.

The kitchen-floor is in the Kitchen. Understand "floor" and "floors" as kitchen-floor. It is scenery. The printed name is "floor". The description is "Scuffed wooden floors groan under your steps."

Some cupboards are in the kitchen. It is scenery. Understand "cupboard" as cupboards. The description is "Empty cupboards, like so many graves, are fixed to the wall. Some are missing doors, you used those for firewood." Instead of searching cupboards, say "They are empty." Instead of opening cupboards, say "You know they have nothing in them, so you don't bother looking inside them."

A kitchen table is a supporter in the kitchen. The description is "A worn and dirty table."

Some sharp knives are on the kitchen table. Understand "knife" as sharp knives. The description is "A small collection of sharp knives. This is how you protect yourself."

Instead of taking sharp knives:
	now Tad carries a cleaver;
	say "You pick up a sharp cleaver from the pile of knives.";

A cleaver is a thing. The description is "[if the player is Tad]A sharp meat cleaver. This one is called protector.[else]A meat cleaver, a potential murder weapon."

Instead of going west during the seventh act:
	if the kitchen door is locked:
		try opening the kitchen door;
		stop the action;
	if the player is not carrying a cleaver:
		say "I can't go out there without protection. I need a knife!";
	otherwise:
		now the seventh act is done;


Chapter 7 - Second floor hall

Second Floor Hall is a room. It is above the Living room. The printed name is "Second Floor". The description is "You are in the second floor hallway. Here are stairs that lead up to the third floor, protected by a security gate. You can go back down to the first floor. You see doors to the north, east and south."

Some second-floor-stairs are in the second floor hall. It is scenery. Understand "stairs" as second-floor-stairs. Instead of entering second-floor-stairs: try going up. The description is "A flight of wooden stairs, they lead up and down."

Check going up when the location is the Second Floor Hall:
	if the third-floor-gate is locked:
		continue the action;
	otherwise:
		try opening the third-floor-gate;
		if the fourth act is undone:
			now the fourth act is done;
			stop the action;

Check going up when the location is second floor hall during the fifth act:
	say "You feel the urgent need to get out of here, quick. You don't want to find out who is in those rooms!";
	stop the action;
Check going south when the location is second floor hall during the fifth act:
	say "You feel the urgent need to get out of here, quick. You don't want to find out who is in those rooms!";
	stop the action;
Check going east when the location is second floor hall during the fifth act:
	say "You feel the urgent need to get out of here, quick. You don't want to find out who is in those rooms!";
	stop the action;
Check going north when the location is second floor hall during the fifth act:
	say "You feel the urgent need to get out of here, quick. You don't want to find out who is in those rooms!";
	stop the action;
Check going down when the location is second floor hall during the fifth act:
	now the fifth act is done;
	stop the action;





Chapter 8 - Bathroom

Bathroom is a room. It is north of the Second Floor Hall. The description is "You are in a bathroom, there is a claw-foot bath, one window and a basin. [if Bathroom is dark]It is dark outside. The room is very dim, the moon giving just enough light to see.[end if] A mirror is fixed to the wall. The exit is to the south."

The bathroom-window is a closed locked door. It is scenery. It is south of Second-floor-outside and north of the bathroom. The printed name is "window". Understand "window" as bathroom-window. The description is "The window is shoulder height, it leads to the outside."
Instead of opening the locked bathroom-window, say "It won't open. It must be secured permanently."

Instead of entering the bathroom-window during the sixth act:
	say "You manage to squeeze your way through the broken frame, which is not that large for a man of your build. You cut your forearm badly. A chilling scream echos from down below right before you dash out the bathroom and down the stairs...";
	now Otto is bleeding;
	now the sixth act is done;
	stop the action;

A bath is in the bathroom. It is scenery. The description is "A stained white claw-foot bath. The feet are metal and have decorative faces moulded into them."
Some faces are a part of the bath. The description is "Moulded faces make up the feet of the bathtub." Understand "claw-foot" and "feet" as faces.

Instead of entering the bath:
	if the player is victoria:
		say "You would love a bath, anywhere but here.";
	otherwise:	
		say "Taking a bath at this point is utterly ridiculous.";

A basin is in the bathroom. It is scenery. The description is "A simple pedestal basin of white ceramic."

A mirror is in the bathroom. It is scenery. The description is "A rectangular mirror without any frame. The edges of the glass are stained." Instead of searching mirror, say "You look at yourself in the mirror: [mirror description of the player][paragraph break]".

A device called a brass lantern is in the bathroom. The description is "A brass lantern with a spark wheel fixed next to the wick.". A brass lantern can be full or empty. A brass lantern is empty.

Instead of taking the lantern:
	if the player is Victoria:
		continue the action;
	otherwise:
		say "You don't need a lantern, you have a torch.";

Instead of switching on a brass lantern:
	if a brass lantern is empty:
		say "You flick the spark wheel but the wick does not light. The lantern needs fuel.";
		stop the action;
	otherwise:
		say "You flick the spark wheel, the wick catches alight.";
		now the brass lantern is lit;

Instead of switching off a brass lantern:
	say "You blow out the flame.";
	now a brass lantern is not lit;

Instead of inserting lamp oil into a brass lantern:
	say "You unscrew the lantern base and fill it with the lamp oil. Screwing the base back on, you discard the empty oil bottle.";
	now a brass lantern is full;
	now the lamp oil is nowhere;

The moon is a thing in the bathroom. It is scenery. It is lit. The description is "The pale moon pushes through the clouds, proving some light in the dim bathroom."


Chapter 9 - Second floor bedrooms

second-floor-bedroom-east is a room. It is east of the Second Floor Hall. The printed name is "Bedroom". The description is "This room is bare, save for some dust covering the floor. There is one lonely window."

The second-floor-window-a is in the second-floor-bedroom-east. It is scenery. Understand "window" as second-floor-window-a. The printed name is "window". The description is "You see grass down below, no other houses are visible. You are on a second storey floor." Instead of searching second-floor-window-a, try examining second-floor-window-a.

second-floor-bedroom-south is a room. It is south of the Second Floor Hall. The printed name is "Bedroom". The description is "The bedroom is somewhat furnished, a mattress on the floor serves as a bed, a bedside table next to it. The window is covered with a sheet. There is something under the table."

The second-mattress is a supporter in the second-floor-bedroom-south. It is scenery. Understand "bed" and "mattress" as second-mattress. The description is "A single mattress on the floor." Instead of entering the second-mattress, say "This is no time to fool around!"

The second-floor-window-b is in the second-floor-bedroom-south. It is scenery. Understand "window" as second-floor-window-b. The printed name is "window". The description is "It is covered by a sheet." Instead of searching second-floor-window-b, try examining second-floor-window-b.

The second-floor-table is a supporter in the second-floor-bedroom-south. It is scenery. The printed name is "the table". The description is "A low bedside table, some newspapers are on it." Understand "table" as second-floor-table. Instead of looking under second-floor-table, say "You see a safe under the table."

Some newspapers are on the second-floor-table. It is scenery. The description is "These are fairly recent, somebody is living here.". Instead of taking newspapers, say "You don't want the newspapers."

A second-floor-sheet is in the second-floor-bedroom-south. It is scenery. Understand "sheet" as second-floor-sheet. The description is "A dirty and torn sheet covers the window." Instead of opening second-floor-sheet, say "You would rather not waste the time, you know what is outside the window."

A gun safe is a locked closed container in the second-floor-bedroom-south. It is fixed in place. It is scenery. The description is "A small gun safe with an electronic keypad." The keypad is part of the gun safe. The description is "An electronic pad for entering a code. You can ENTER 0000 to unlock the safe."

Entering a code is an action applying to one number and one thing. Understand "enter [number] in [keypad]" as entering a code.
Check entering a code:
	if the safe is open, say "The safe is already open." instead;
	if the number understood is not 6375:
		say "The safe beeps in error." instead;
Carry out entering a code:
	now the safe is open;
Report entering a code:
	say "Click. The safe door creaks open. Inside is [a list of things in the safe].";

The bronze key is in the safe. The description is "A short but fat bronze key, it has decorative grape vines embossed around the shaft and the head."


Chapter 10 - Third floor hall

Third Floor Hall is a room. The printed name is "Third Floor".

There is a closed locked door called third-floor-gate. It is scenery. The printed name is "the security gate". It is above the Second Floor Hall and below the Third Floor Hall. Understand "gate" and "security gate" as third-floor-gate. The description is "It is a swing gate made of metal bars.". The bronze key unlocks the third-floor-gate.

Chapter 11 - Third floor bedroom

Third Floor Bedroom is a room. The printed name is "Bedroom". The description is "A small bedroom furnished with a mattress on the floor and a curtain against one wall[if curtain is open], a window behind it. Some pipes run along the wall behind the curtain[end if]. The loft is back to the east, another door is due south.[if curtain is open and a sheet is tied][paragraph break]A bed sheet is tied to the pipes, the other end hanging out the window.[end if]"

Carry out going to Third Floor Bedroom during the first act:
	say "[paragraph break]You feel faint.";
	Victoria passes-out in one turn from now.

At the time when Victoria passes-out:
	now the first act is done;

The third floor bedroom door is a closed locked door. It is north of the Third Floor Hall and south of the Third Floor Bedroom. It is scenery. The printed name is "bedroom door".
Instead of attacking third floor bedroom door, say "You bash at the door."

Does the player mean opening the third floor bedroom door: it is very likely.
Does the player mean attacking the third floor bedroom door: it is very likely.
Does the player mean shooting at the third floor bedroom door: it is very likely.

Instead of opening the third floor bedroom door during the sixth act:
	if the third floor bedroom door is closed:
		say "Someone has locked the bedroom door!";
		stop the action;

The first-mattress is a supporter in the third floor bedroom. It is scenery. The description is "A single sized mattress lies on the floor." Understand "bed" and "mattress" as first-mattress. The printed name is "mattress"

A sheet is on the first-mattress. The description is "Pale from dirt." A sheet can be tied or untied. The sheet is untied.

Instead of taking the tied sheet, say "The sheet is tied to the pipes. You can't take it."

[A simple-torch is a device on the first-mattress. The printed name is "torch". Understand "torch" as simple-torch. The description is "A simple black plastic torch."
Instead of switching on the simple-torch:
	if the location is not dark, say "You don't need it right now." instead;
	say "The torch emits a warm glow, not very bright, but enough to see.";
	Now the simple-torch is lit.
Instead of switching off the simple-torch:
	if the simple-torch is lit:
		now the simple-torch is not lit;
	say "click."
]

A closed openable container called a curtain is in the third floor bedroom. It is scenery. The description is "Filthy and eaten by fish moths.[if a curtain is closed] It is drawn closed.[end if]".
Instead of opening curtain:
	if the curtain is open:
		say "It is already pulled open.";
	otherwise:
		now the curtain is open;
		now Some pipes are in the third floor bedroom;
		say "You pull the curtain open, there is a window behind it. Near the floor are some pipes.[if a sheet is tied][line break]Someone has tied a bed sheet to the pipes, and hung the other end out the window.[end if]";
Instead of pulling a curtain: try opening a curtain.

Some pipes are a thing. It is scenery. The description is "They are painted the same as the faded white walls. You guess they carry water."

Instead of tying sheet to pipes during the third act:
	if the sheet is untied:
		if escape-window is closed, try opening escape-window;
		say "You wrap one end of the sheet around the pipes and make a knot. You drop the other end of the sheet out the window.";
		now the sheet is tied;
		silently try dropping the sheet;
	otherwise:
		say "It is already tied."

[It is south of the Third-floor-outside and north of the Third Floor Bedroom.]
[ a one-way escape door because we don't want to reference it when the player is hanging on the other side. ]
The escape-window is a closed door. It is north of the Third Floor Bedroom. It is scenery. The printed name is "window". Understand "window" as escape-window. The description is "[if a curtain is closed]The window is covered by the curtain.[else]You see grass down below, no other houses are visible. You appear to be on the third storey." Instead of searching escape-window, try examining escape-window.

Instead of going the escape-window during the third act:
	if the sheet is untied:
		say "It is too high up, you will surely fall. Perhaps if you had something to climb down with.";
		stop the action;
	if the third act is undone:
		now the third act is done;
		stop the action;

Instead of going the escape-window during the sixth act:
	say "You grab the sheet and climb through the window.";
	move the player to Third-floor-outside;
	stop the action;


[ sixth act - the detective can shoot the door open ]
Instead of attacking third floor bedroom door during the sixth act:
	say "You fire two rounds into the lock of the door, it breaks open.";
	now the third floor bedroom door is open;
	now the third floor bedroom door is unlocked;

Check going south when the location is the Third Floor Bedroom during the sixth act:
	if the third floor bedroom door is closed:
		try opening third floor bedroom door;
		stop the action;
	say "A chilling scream echos from down below. You run down the stairs as fast as you can...";
	now the sixth act is done;
	stop the action;





Chapter 12 - Third floor loft

The Loft is a room. The description is "[if the player is tied]You don't know where you are, some kind of room. You feel too panicked to notice your surroundings. It is difficult to move.[else]You are in what looks like a loft, crates and boxes stacked against the walls. Wooden floors and white walls surround you. The ceiling rafters are visible. There is a single window. There is a door to the west.[paragraph break]A broken chair and cut rope lies on the floor."

walls, floors and ceiling are things in the loft. walls, floors and ceiling are scenery. The description of walls is "White walls, lined with crates and boxes." The description of floors is "Dusty wooden floors." The description of ceiling is "The visible rafters make you think of an attic." Understand "rafters" as ceiling. Understand "wall" as walls. Understand "floor" as floors.

The loft door is a door. It is east of the Third Floor Bedroom and west of the Loft. The description is "A white wood door divided in four panels." Instead of opening the loft door when the player is tied, say "You are tied up and cannot reach the door." It is scenery.

A thing called the window is in the loft. The description is "A small window allows a trickle of light into the room." It is scenery.

Instead of searching the window, say "It is too far up, you can't see through it."

A thing called some boxes are in the loft. The description is "You don't want to rummage through old boxes when you feel a strong need to get out of here." It is scenery. Understand "crate" and "crates" as boxes.

A supporter called the rickety chair is in the loft. It is fixed in place. The printed name is "chair". It is scenery. The description is "[if the player is tied]It feels rickety and creaks when you move. You should try get up.[else]Some of the legs are snapped off."

The rickety chair can be upright or sideways. The rickety chair is upright.
Instead of taking rickety chair, say "You have no need for a broken chair."

Some rope is a part of the chair. Understand "bonds" and "ropes" and "restraints" as rope. The description is "[if the rickety chair is upright]They are bound around your hands and feet, fixing you to the chair.[end if][if the rickety chair is sideways and the player is tied]They are bound around your one hand and both your feet.[end if][if the player is untied]They are cut to pieces.[end if]".

Instead of untying the rope: say "[if Victoria is tied]You struggle to untie the knots. There must be another way.[else]You cut them pretty good, so why bother undoing the knots now."

Instead of taking the rope, say "[if Victoria is tied]Ironically you are tied up with the very rope you want to take.[else]You don't need cut ropes."

A small cardboard box is closed openable container. "A small cardboard box is nearby." The description is "[if small cardboard box is closed]A small closed box.[otherwise]The small box is open, it's contents on the floor."

Instead of taking a small cardboard box:
	if the small cardboard box is closed:
		try opening the small cardboard box;
	otherwise:
		say "You don't want the empty box.";

Instead of closing a small cardboard box:
	if the small cardboard box is closed:
		say "You must be confused. Opening it would make more sense.";
	otherwise:
 		say "You leave the empty box alone.";

the twine, a tube of hardened glue, pots of paints, a bottle of lamp oil and a craft knife are things inside a small cardboard box.

The twine is plural-named. The description of twine is "a light string of two smaller strands."
The description of a tube of hardened glue is "The label reads 'The Steel Queen Super Glue', the tube is rock hard."
The description of pots of paints is "Small pots of red, green and blue paints." Understand "paint" as paints.
The description of a bottle of lamp oil is "'Grail of Fire Lamp Oil', the bottle is half full and smudged from usage."

Instead of taking a tube of hardened glue when the player is untied, say "You don't need dry glue."

Instead of taking pots of paints when the player is untied, say "You don't want the paints." Instead of opening pots of paints, say "You doubt you will need to paint any time soon."

The description of a craft knife is "A partially rusted craft knife with a yellow plastic handle. The blade is still sharp."
Instead of dropping craft knife, say "You want to hang on to it.".

Check taking something not carried when the player is tied:
	if the noun is fixed in place, continue the action;
	if the noun is a craft knife:
		say "You pick up the craft knife carefully, avoiding the business end of it.";
		Now the player carries a craft knife;
		stop the action;
	if the noun is some rope:
		say "They are tied to the chair and to you, preventing you from taking them." instead;
	say "You pick up [the noun], and drop it despite your restraints." instead.

Instead of getting off the rickety chair for the first time:
	say "You try to stand up. Your hands and feet are bound to the chair with rope, and you nearly topple over. The chair creaks violently."

Instead of getting off the rickety chair for the second time:
	say "You rock the chair. Some part of it snaps underneath you, it sags to the right."
	
Instead of getting off the rickety chair for the third time:
	Move small cardboard box to the loft;
	Now the rickety chair is sideways;
	say "You rock the chair. One side of the chair breaks under the strain and you topple onto your side, your head almost hitting a small cardboard box. Your one arm is freed."
	
Instead of getting off the rickety chair:
	If the player is tied:
		say "You struggle to raise yourself up from this position.";
		stop the action;
	continue the action;
	
Instead of opening a closed small cardboard box:
	say "You reach for the box. As you pull it closer it falls over, craft supplies spill out in front of you - [a list of things in the small cardboard box].";
	Now the small cardboard box is open;
	Now every thing in a small cardboard box is in the loft;

Instead of cutting the rope:
	If the player is untied:
		say "You are not tied up any more.";
		stop the action;
	If the player is not carrying a craft knife:
		say "You have nothing to cut [the noun] with.";
		stop the action;
	say "You curl up enough to reach your legs and sever the bonds around them. You get up into a kneeling position and cut your other arm free. You stand up, wobbling.";
	Now the player is untied;
	silently try exiting;
	try looking;


Chapter 13 - Second and Third Floor Windows

Third-floor-outside is a room. The printed name is "Hanging outside the third floor". The description is "You are hanging outside the third storey window, gripping the bed sheet tied inside the room. You can go down."

A tfo-window is in Third-floor-outside. It is scenery. The printed name is "the window". Understand "window" as tfo-window. The description is "You are hanging outside the window". Instead of closing tfo-window, say "The window cannot close, the tied sheet prevents that."

Instead of entering tfo-window during the fifth act:
	say "You won't dare go back into that room, not with somebody just outside the door."

Instead of entering tfo-window during the sixth act:
	say "You are wasting time. You can't back out with your choice now."

A tfo-sheet is here. It is scenery. The printed name is "sheet". Understand "sheet" as tfo-sheet. The description is "You are hanging on to the sheet for dear life."

Carry out going down when the location is Third-floor-outside:
	say "Lowering yourself down, one handful at a time, you reach the end of the sheet.";


Second-floor-outside is a room. It is below Third-floor-outside. 
The printed name is "Hanging outside the second floor". The description is "You are hanging outside a window. You are at the end of the sheet, and cannot go down any more."

A sfo-sheet is in Second-floor-outside. It is scenery. The printed name is "sheet". Understand "sheet" as sfo-sheet. The description is "You are hanging on to the sheet for dear life."

Check going up when the location is second-floor-outside:
	say "You refuse to climb back up." instead.
	
[ Alter the bathroom-window description this time ]
Instead of examining bathroom-window during the fifth act:
	say "A chipped white frame with murky glass panes."

Instead of opening bathroom-window during the fifth act:
	say "You struggle to open the window, maybe a little force is called for."

Instead of attacking bathroom-window during the fifth act:
	say "You kick the window and shatter the glass pane. You should be able to fit through it.";
	now the bathroom-window is open;

Instead of entering bathroom-window during the fifth act:
	if the location is second-floor-outside:
		say "You raise your legs through the opening and lower yourself into the room.";
		continue the action;
	otherwise:
		say "You are not going back up there.";

Instead of examining bathroom-window during the sixth act:
	say "A chipped white frame with murky glass panes."
	
Instead of opening bathroom-window during the sixth act:
	say "It won't open, but the glass panes are broken away. You can climb through it."

Part 3 - Scenes

Chapter 1 - First act

The first act is a scene. The first act ends when the first act is done.

When the first act begins:
	Move Victoria Cote to the rickety chair;
	Now Victoria Cote is tied;
	Now the player is Victoria Cote;
	say "Light pierces your vision as your eyes flutter open. Blurred shapes spin around as you shake the sound of a pounding heart free. You remember the struggle and abduction, but not your name..."
	
When the first act ends:
	say "The room turns into a tunnel, the floor rising up to meet you. Shadows creep in from all sides as your vision fades.";
	pause for dramatic effect;

Chapter 2 - Second act

The second act is a scene. The second act begins when first act ends.
The second act ends when the second act is done. 

When the second act begins:
	say "(as [Otto]) The last daylight creeps away, the moon struggles to find gaps through looming clouds. A chill moves over your skin.";
	Move Otto York to the front of the house;
	Now the player is Otto;
	try looking;
	The player recounts-once in one turn from now;
	The player recounts-twice in two turns from now;
	The player recounts-thrice in three turns from now;
	
At the time when the player recounts-once:
	say "Earlier today, an anonymous tip was called in at the homicide office. All they gave was a name, in connection with the missing girl."

At the time when the player recounts-twice:
	say "The name led to outdated property records, and those led to this address. I had to get here quick, even if my partner was an hour away in the other direction. I had to."

At the time when the player recounts-thrice:
	say "This place is derelict, remote and dreary. The perfect place to hide an abducted girl. Never have I wanted something so dismal to be so true. I pray she is alive."

When the second act ends:
	say "You peer up the staircase, making sure nobody else is watching from above, and cautiously ascend the stairs.";
	pause for dramatic effect;


Chapter 3 - Third act

The third act is a scene. The third act begins when second act ends. The third act ends when the third act is done.

When the third act begins:
	Move Victoria to Third floor bedroom;
	now the player is Victoria;
	say "(as [Victoria]) Your eyes flutter open.";
	try looking;

When the third act ends:
	say "You hold on to the makeshift rope, climb through the window and prepare yourself.";
	pause for dramatic effect;


Chapter 4 - Fourth act

The fourth act is a scene. The fourth act begins when third act ends. The fourth act ends when the fourth act is done.

When the fourth act begins:
	say "(as [Otto]) As you reach the top of the second floor, the last of the daylight vanishes. You are left in darkness.";
	now all rooms in the interior are dark;
	move Otto to the second floor hall;
	now the player is Otto;
	try looking;

When the fourth act ends:
	say "You ascend the stairs, continuing your search...";
	pause for dramatic effect;

Chapter 5 - Fifth act

The fifth act is a scene. The fifth act begins when the fourth act ends. The fifth act ends when the fifth act is done.

When the fifth act begins:
	move Victoria to the Third-floor-outside;
	now the player is Victoria;
	now the curtain is closed;
	move Otto to waiting room;
	say "(as [Victoria]) You hold tight to the bed sheet as you climb through the window. You hear a noise coming from the other side of the bedroom door, fear rises up inside. You pull the curtain closed, hoping to hide your escape attempt.";
	try looking;

When the fifth act ends:
	say "Frightened and shaking, you go down the stairs...";
	pause for dramatic effect;


Chapter 6 - Sixth act

The sixth act is a scene. The sixth act begins when the fifth act ends. The sixth act ends when the sixth act is done.

When the sixth act begins:
	say "(as [Otto]) You reach the top of the stairs. A bedroom door in front of you is latched from the outside, you undo the latch and step inside. You see a doorway leading to a loft: a broken chair and cut bonds inside. You dash into the loft...";
	move Otto to the Loft;
	now the player is Otto;
	now the player is delayed;
	now the sheet is tied;
	the loft door slams closed in one turn from now;
	try looking;

At the time when the loft door slams closed:
	now the loft door is closed;
	now the player is not delayed;
	say "The loft door slams shut behind you!";

Instead of going west when the location is the loft during the sixth act:
	if the player is delayed:
		say "Hang on, you just got here.";
		stop the action;
	otherwise:
		continue the action;

When the sixth act ends:
	pause for dramatic effect;

Chapter 7 - Seventh act

The seventh act is a scene. The seventh act begins when the sixth act ends. The seventh act ends when the seventh act is done.

When the seventh act begins:
	say "(as [Tad]) The room is very dim, all of them are, in hell. You have been hiding from the Demons that hunt you. Everywhere you go, they follow. Angry nasty demons that want your flesh. You managed to trap one of them, now locked in the attic.";
	move Tad to the Kitchen;
	now the player is Tad;
	Tad hears noise in four turns from now;
	try looking;

When the seventh act ends:
	say "You prepare to meet the horror, and pass through the door...";
	pause for dramatic effect;

At the time when Tad hears noise:
	say "You hear breaking glass. The Demon! You must stop it, before it comes for your flesh.[paragraph break]You unlock the kitchen door.";
	now the kitchen door is unlocked;

Chapter 8 - Eighth act

The eighth act is a scene. The eighth act begins when the seventh act ends. The eighth act ends when the eighth act is done.

When the eighth act begins:
	now the description of the Living Room is "The room is dim and nothing you see makes sense. There are doors to the south and east.";
	say "(as [Victoria]) You reach to bottom of the stairs, breathless and shaking.";
	move Victoria to the Living room;
	now the player is Victoria;
	try looking;

When the eighth act ends:
	if Otto is not bleeding:
		say "You close your eyes.";
	otherwise:
		say "There is movement to your right, a detective on the stairs! They aim their gun at the killer with a bloodied, shaking arm. The gun fires...";
	pause for dramatic effect;

Instead of examining during the eighth act:
	say "You can't focus on anything.";

Check going during the eighth act:
	if Tad is not in the Living Room:
		say "The kitchen door opens, a shape moves out from the shadow. You see the killer, moving towards you with a knife. You scream.";
		move Tad to the Living Room;
		Otto appears in three turns from now;
		stop the action;
	[ always stop going anywhere from here ]
	if the player is Victoria:
		say "You can't, you are frozen with fear!";
		stop the action;	
	
Every turn during the eighth act:
	if Tad is in the location:
		say "[Tad] moves closer to you, a cleaver in his hand...";

Instead of attacking tad when the player is Victoria during the eighth act:
	say "The knife is in your pocket. You limbs frozen, you can't move while he glares at you.";

At the time when Otto appears:
	now the eighth act is done;


Chapter 9 - Ninth act

The ninth act is a scene. The ninth act begins when the eighth act ends. The ninth act ends when the ninth act is done.

When the ninth act begins:
	[now the description of the Living room is "(as [the player]) A door to the south leads to the parlour, another to the east. You are on the stairs.";]
	move Otto to the Living room;
	move Victoria to the Living room;
	move Tad to the Living room;
	if Otto is not bleeding:
		now the player is Otto;
		[try looking;]
	otherwise:
		say "The shot missed! The killer turns to the detective. Now is your chance!";
		now the player is Victoria;
		[try looking;]
		
When the ninth act ends:
	pause for dramatic effect;

Every turn during the ninth act:
	if Tad is in the location:
		say "[if the player is Otto]The killer moves closer to the girl, a cleaver in his hand...[else]The killer moves closer to the detective, a cleaver in his hand...";

Instead of examining during the ninth act:
	say "You are wasting time!";

Instead of waiting during the ninth act:
	say "You are wasting time!";

Instead of going during the ninth act:
	say "No time to run away, you must stop him!"

Instead of attacking Tad during the ninth act:
	if the player is Victoria:
		say "You slip the craft knife into your palm, scared to death, your limbs seem to move on their on volition. You slash at the killer's neck, blood gushes out. More blood than you ever saw.";
		now Tad is dead;
		now the ninth act is done;
	otherwise:
		say "You aim your pistol at the killer, [if Otto is bleeding]your arm shakes, you feel faint. You [end if]exhale and squeeze the trigger...";
		now the ninth act is done;

Chapter 10 - Tenth act

The tenth act is a scene. The tenth act begins when the ninth act ends. The tenth act ends when the tenth act is done.

When the tenth act begins:
	say "(as [Tad]) You enter the Living room, the Demon is here. It is mocking you, calling out for your flesh. The parlour is due south, the kitchen to the east. Stairs go up to the second floor.";
	now the player is Tad;
	now the Living room is lit;
	move Victoria to the Waiting Room;
	move Otto to Waiting Room;
	move Demon to the Living room;
	move Tad to the Living room;
	now the description of the Living Room is "You don't care to notice anything in here, except the harbinger of death, the Demon. It mocks you, taunts you with ideas of pulling your flesh from your bones. You have to kill it.";
[	try looking;]

When the tenth act ends:
	pause for dramatic effect;

Instead of going during the tenth act:
	reveal another demon;

Instead of attacking Demon during the tenth act:
	reveal another demon;

Instead of cutting Demon during the tenth act:
	reveal another demon;

To reveal another demon:
	say "Another demon appears behind you, swiping at you with razor claws, [if Otto is not bleeding]tearing the skin from your back.[otherwise]and misses by a small miracle. You turn to face it, ready to cut it's throat. You realize your mistake the second you feel sharp claws slashing through your neck, and again, and again.[end if][line break]You crumple to the floor in a bloody mess, sobbing, bleeding out.";
	now Tad is dead;
	now the tenth act is done;

Chapter 11 - Eleventh act

The eleventh act is a scene. The eleventh act begins when the tenth act ends. The eleventh act ends when the eleventh act is done.

When the eleventh act begins:
	now the description of the Living Room is "The room is dim and nothing you see makes sense. A door leads to the east, and some stairs go up to the second floor.";
	say "(as [Otto]) For a moment you stand lifeless, making sense of the scene. [Victoria] collapses to the floor. You have to get her out of here.";
	move Victoria to the Living room;
	move Otto to the Living room;
	move Tad to the Living room;
	move Demon to the waiting room;
	now the player is Otto;
	[try looking;]

When the eleventh act ends:
	say "You carry the girl outside, the cool night air promising peace. You hear sirens wailing over the hill.";
	[pause for dramatic effect;]

Instead of attacking Tad during the eleventh act:
	say "He will be dead soon enough. You need to get out of here, now.";

Instead of going during the eleventh act:
	say "That is not the way out.";
	stop the action;

Instead of going south during the eleventh act:
	if Victoria is not carried by the player:
		say "You can't leave the girl lying here.";
		stop the action;
	otherwise:
		now the eleventh act is done;

Instead of taking Victoria during the eleventh act:
	if Victoria is not carried by the player:
		say "You lift her up.";
		now the player carries Victoria;
	otherwise:
		say "You are already carrying her.";

Instead of dropping Victoria during the eleventh act:
	say "You are not putting her back down.";

Chapter 12 - Final act

The final act is a scene. The final act begins when the eleventh act ends.

When the final act begins:
	end the story saying "THE DAILY NEWS[line break]Last night Victoria Cote was found safe in an abandoned house in an undisclosed location. Her family is relieved to have her back. Detective Otto York was first on the location to ensure her safety. The family and police declined to release further details at this time.";

Chapter 13 - Entry point - For Release Only

The first act begins when play begins.

Chapter 14 - Dev testing - not for release

The first act begins when play begins.
