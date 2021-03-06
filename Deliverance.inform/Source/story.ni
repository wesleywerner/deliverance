"Deliverance" by "Wesley Werner"

The story headline is "Some demons are more real than others,".

Include Basic Screen Effects by Emily Short.
Release along with a solution.
Release along with the library card.
Release along with cover art.
Release along with a file of "Map" called "map.jpg".
[Release along with a file of "Design notes" called "deliverance-design.txt".]
Release along with an introductory postcard.
Release along with an interpreter.

When play begins:
	say "Deliverance is a short interactive fiction story. It is a dark psychological thriller that contains elements of delusion and abduction. It may also contain triggers as viewed through the perpetrator's eyes. **Sensitive players should approach carefully**[paragraph break]You can read INFO on the game.";

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
Shooting at is an action applying to one thing. Understand "shoot [something] with the/your/-- gun" as shooting at. Understand "shoot [something]" as shooting at. Understand "shoot gun" and "fire gun" as a mistake ("To use your service pistol, try [bold type]shoot the door[roman type] or [bold type]shoot the person[roman type].").
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
A person can be dead. A person is usually not dead.

[ Fix display of the current player name in the command line ]
Rule for printing the name of Victoria: say "Victoria". 
Rule for printing the name of Quinn: say "Quinn". 
Rule for printing the name of Otto: say "Otto". 
Rule for printing the name of Tad: say "Tad".

[ player examining self yields a different response than when seen from another viewpoint character. ]
Instead of examining the player:
	say "[self description of the player][paragraph break]".

Instead of taking inventory when the player is tied:
	if the chair is upright:
		say "Your hands are tied to the back of the chair with rope, you can't reach your pockets.";
	if the chair is sideways:
		say "With your one free hand you reach into your jean pocket.";
		continue the action;

Victoria Cote is a woman. The description is "She has large orange eyes and messy brown hair. She is short and has an hourglass build."
The self description of Victoria is "You see dirt on your bruised arms. You are wearing [a list of things worn by Victoria]. [if Victoria is tied]Your hands are tied with ropes to the back of the chair, your feet tied to the legs of the chair.[end if]".
The mirror description of Victoria is "Big orange eyes stare back at you. Your straight brown hair is tangled about your face. You look like hell."
Understand "girl" and "the girl" as Victoria.
A pair of red jeans are worn by Victoria. The description is "Faded red jeans with front pockets." Instead of taking off the red jeans, say "You are not removing them!". Instead of searching the red jeans, try taking inventory.
A yellow blouse is worn by Victoria. The description is "A bright yellow blouse." Instead of taking off the yellow blouse, say "You are not removing them!". Instead of searching the yellow blouse, say "Your blouse has no pockets."

Quinn Cooper is a man. The description is "Your husband has a gentle way about him, with his deep-set eyes the color of coffee. His straight, chocolate-colored hair reaches his shoulders. He is tall and has a lean build. His prominent cheekbones is one of his more striking features."
Understand "husband" as Quinn.


Detective Otto York is a man. The description is "This determined gentleman has droopy violet eyes. His silky, wavy, vermilion hair is worn in a style that reminds you of a river. He has a graceful build. His skin is cream-coloured. He has thin eyebrows. He wears black jeans, light blue collared shirt and leather jacket."
The self description of Otto is "You are wearing black jeans, a light blue collared shirt and a leather jacket. A gun holster is strapped underneath around your shoulder, a badge is attached to your belt."
The mirror description of Otto is "A determined gentleman with droopy violet eyes and thin eyebrows. Your brown hair is worn in a style that reminds you of a river."

Your badge is a thing carried by Otto. The description is "A silver badge attached to your belt, with words embossed on the front, Detective Otto York. Homicide."
A gun is a thing carried by Otto. The description is "A Glock 9mm, standard issue. It is loaded."

Tad Kemp is a man. The description is "A lithe man [if Tad is dead]lies on the floor staring[else]glares at you[end if] through slit brown eyes. His ruddy tone and wavy brown hair does nothing to detract from his prowling jackal disposition."
The self description of Tad is "You are wearing stained brown trousers and a black golf shirt. You have not looked in a mirror recently, for fear of what Demon may stare back."
Understand "killer" as Tad Kemp.

Instead of searching a dead Tad Kemp:
	say "You find [list of things carried by Tad]";
	now all things carried by Tad is in the location;

Instead of cutting Tad:
	try attacking Tad.

A Demon is an animal. The description is "It has the figure of a man with leather-like skin, it has no use for clothes. The knees bend backwards, six razor talons extend where fingers would be. Sharp fangs fill the mouth, a bald head is adorned with two goat-like horns."

Instead of asking Demon about, say "It growls at you."
Instead of telling Demon about, say "It growls at you."

Chapter 3 - Not for release

To pause for dramatic effect:
	say "[paragraph break][bold type]press a key to continue...[roman type][paragraph break]";
	Do nothing.


After reading a command (this is the ignore beta-comments rule):
	if the player's command matches the regular expression "^\p":
		say "(Noted)";
		reject the player's command;
	if the player's command matches the regular expression "^\*":
		say "(Noted)";
		reject the player's command.

When play begins:
	say "# BETA 2 RELEASE[line break]# Enter SCRIPT to record a transcript. Feedback is appreciated and credited.[paragraph break]";

Chapter 4 - Default responses

standard report taking rule response (A) is "You pick up [the noun].".
can't unlock without the correct key rule response (A) is "[The second noun] does not fit [the noun] lock.".
can't open what's locked rule response (A) is "[The noun] [are] locked.".
block attacking rule response (A) is "A less violent act is more suitable at this time.".
report smelling rule response (A) is "That is a silly thing to try smell.".
report listening rule response (A) is "You don't hear any noises coming from [the noun].".
can't take what's fixed in place rule response (A) is "No thanks.".
can't take scenery rule response (A) is "No thanks.".

Instead of smelling:
	if the location is in the interior:
		say "You smell mold and dust.";
	otherwise:
		say "You can smell damp air and woody scents."

Instead of listening when the location is not in the interior:
	say "The cool night is quiet, save for the faint chirps of crickets in the distance.".

Instead of waiting:
	if the player is Otto, say "You wait one minute to see if anything happens.";
	if the player is Victoria, say "You pause for a minute, repeating to yourself, 'everything is okay'.";
	if the player is Tad, say "You twitch and shift your eyes from left to right for a full minute.";

Chapter 5 - Help and Info

Understand "help" or "hint" or "hints" as asking for help.
Asking for help is an action out of world.
Understand "about" or "info" as asking for info.
Asking for info is an action out of world.
Carry out asking for info:
	say "[story title] was written by Special Agent. The idea started as a Halloween project that grew into something larger.";
	say "[line break]I want to thank these fine folks for testing, your help was invaluable to the game's improvement: heartless zombie, popcorn. Thank you![paragraph break]You can also get a HINT when stuck.";

Carry out asking for help for the first time:
	say "So you want a hint? Well this is your only notice, if you ask me again I will give you a hint.";
	stop the action;
Carry out asking for help during the dream sequence:
	say "Are you following the path?";
Carry out asking for help during the first act:
	if the rickety chair is upright:
		say "Have you tried standing up a few times?";
	else if Victoria is tied:
		say "If only you had something to cut the ropes.";
	else:
		say "You are trying to escape, remember?";
Carry out asking for help during the second act:
	if the location is not in the interior:
		say "There must be a way inside, a door or a window perhaps?";
	else:
		say "Have you examined and opened everything?";
Carry out asking for help during the third act:
	if the curtain is closed:
		say "Surely there must be a window we can climb through.";
	else if the sheet is untied:
		say "I wonder if we can tie the sheet to something?";
	else:
		say "Have you tried going out?";
Carry out asking for help during the fourth act:
	if the business card is not carried by the player:
		say "People often write down important numbers. What you seek may be written on a small card, hidden inside something else in plain sight.";
	else if the gun safe is closed:
		say "Have you examined the business card?"; 
	else if the Security Gate is locked:
		say "A key for the security gate is in a safe place.";
	else:
		say "There is one floor above you to explore.";
Carry out asking for help during the fifth act:
	if the location is Upper Outside:
		say "Have you tried going down?";
	else if the location is the Lower Outside and the Bathroom Window is closed:
		say "Have you tried kicking/smashing the window to open it?";
	else if the location is the Lower Outside:
		say "You can't go up or down, so you can only go...";
	else if the location is the Bathroom:
		say "You are trying to escape, remember?";
Carry out asking for help during the sixth act:
	if the location is The Loft:
		say "Somebody was tied up here, but where did they go? Listen for any noises?";
	else if the location is in the interior:
		say "Two ways out, one is obvious, the other only occurs to somebody carrying a gun.";
Carry out asking for help during the seventh act:
	say "There is no puzzle to solve, just follow the cues.";
Carry out asking for help during the eighth act:
	if Tad is in the location:
		say "All you can do is wait and hope for a miracle.";
	else:
		say "You are trying to escape, remember?";
Carry out asking for help during the ninth act:
	say "The perp seems hostile, you obviously recognize the girl. You are authorized to use force.";
Carry out asking for help during the tenth act:
	say "You feel compelled to cut/attack/kill the demon.";
Carry out asking for help during the eleventh act:
	say "It makes sense to take her with you.";

Part 2 - Rooms

[* A place the player can wait while we set up ]
The Waiting Room is a room.	

The interior is a region. The Parlour, Living room, Second Floor Hall, Bathroom, Second Floor Bedroom, Third Floor Hall, Third Floor Bedroom, Kitchen and Loft are in the interior.


Chapter - Dream Sequence

The Park is a room. The description is "[dreamy-park-description]."

The path is in the park. It is scenery. 
The description is "[dreamy-path]."

The sky is in the park. It is scenery. 
The description is "[dreamy-sky]." Understand "clouds" as sky.

A playground is in the park. It is scenery. 
The description is "[dreamy-playground]."

The swings are in the park. It is scenery. 
The description is "[dreamy-swings]."

The seesaws are in the park. It is scenery. 
The description is "[dreamy-swings]." Understand "seesaw" as seesaws.

Some trees are in the park. It is scenery.
The description is "[dreamy-trees]."
Understand "oak" and "leaves" as trees.

The grass is in the park. It is scenery.
The description is "[dreamy-grass]."

Some kids are people in the park. It is scenery. 
The description is "[dreamy-kids]." Understand "children" as kids.

To say dreamy-park-description:
	if reality is lucid:
		say "You are walking on a scenic path with your husband. The park is beautiful this time of year, a clear sky stretches above you. There is a playground is in the distance, a dozen kids playing on the swings and seesaws. Majestic trees line the path leading north";
	if reality is confused:
		say "You are on a path, your husband beside you. The park surrounding you looks pale and unkempt, a grey sky looms up above. The playground in the distance has few kids, ambling around the swings and seesaws. Tired trees line the path leading north";
	if reality is dreamlike:
		say "The once beautiful park is lifeless, a black sky hovers above you. There is a playground in the distance, it's swings and seesaws now abandoned. Dead trees line the path leading north";

To say dreamy-path:
	if reality is lucid:
		say "A smooth cobblestone path comprised of dark and light shaded tones, the stones consisting of a multitude of shapes. The path winds through the park. The bright sky illuminates the path ahead of you";
	if reality is confused:
		say "A dreary cobblestone path comprised of dark shaded tones. The path winds through the park. The sky casting a dull undertone on the path ahead of you";
	if reality is dreamlike:
		say "A broken cobblestone path comprised of brown and black shaded stones. The path winds and twists in ways intended to confused and mislead";

To say dreamy-sky:
	if reality is lucid:
		say "A beautiful clear, temperate sky. Faint wisps of cirrus clouds are visible, high above you. It reminds you of your wedding day";
	if reality is confused:
		say "The sky is covered by pale stratus clouds. You thought that it was clear and temperate just a moment ago";
	if reality is dreamlike:
		say "The sky is dark, you can't see any stars, moon or clouds";

To say dreamy-playground:
	if reality is lucid:
		say "A merry affair in the distance, situated on top of luscious grass. You see a set of four swings and a couple of seesaws. It is the main attraction for children";
	if reality is confused:
		say "The playground is dull, the few children moping around the swings and seesaws don't seem eager to play";
	if reality is dreamlike:
		say "The playground is deserted. You see a set of four swings and a couple of seesaws";

To say dreamy-kids:
	if reality is lucid:
		say "The dozen or so kids are playing joyfully on the playground swings and seesaw. Seeing them fills you with joy at the thought of having your own one day";
	if reality is confused:
		say "They stand around the playground, listlessly pushing empty swings without a word";
	if reality is dreamlike:
		say "";

Instead of asking kids about something:
	say "They are far away in the distance, way beyond earshot."

Instead of telling kids about something:
	say "They are far away in the distance, way beyond earshot."

To say dreamy-swings:
	if reality is lucid:
		say "The rhythmic motion of the kids playing on the swings and seesaws is mesmerizing. It makes you feel happy";
	if reality is confused:
		say "The staccato rhythm of empty swings, and awkwardly poised seesaws, all feel out of place";
	if reality is dreamlike:
		say "The swings sway gently in the wind, the seesaws frozen in mid-sway";

To say dreamy-trees:
	if reality is lucid:
		say "Beautiful oak trees line the path, they must be at least a century old";
	if reality is confused:
		say "The oaks look tired, their branches sagging from the weight of their leaves";
	if reality is dreamlike:
		say "The oak trees are bare of leaves. They don't inspire happy thoughts";

To say dreamy-grass:
	if reality is lucid:
		say "Luscious and green, the perfect grass for a park";
	if reality is confused:
		say "It looks pale and dry";
	if reality is dreamlike:
		say "The grass is dead";

Instead of examining Quinn when reality is lucid:
	say "[description of Quinn][paragraph break]He looks expectantly at the children playing in the playground.";
Instead of examining Quinn when reality is confused:
	say "Your husband has a sombre look about him. His dark deep-set eyes indicating as much. The breeze moving his hair about his shoulders. Shadows underlie his prominent cheekbones.[paragraph break]He seems troubled by something.";
Instead of examining Quinn when reality is dreamlike:
	say "Your husband has stopped walking, he stares at you with a disturbed expression on his face.";

Instead of asking Quinn about "the/-- us/marriage/honeymoon/ring/wedding/anniversary" when reality is lucid:
	say "'I love you Victoria', Quinn says with a big smile. It is nearly our first anniversary!";
Instead of asking Quinn about "the/-- us/marriage/honeymoon/ring/wedding/anniversary" when reality is confused:
	say "'I love you too' he says distractedly.";
Instead of asking Quinn about "the/-- park/grass/trees" when reality is lucid:
	say "'The park is very beautiful today', Quinn smiles.";
Instead of asking Quinn about "the/-- park/grass/trees" when reality is confused:
	say "'It all seems a bit dreary' Quinn laments.";
Instead of asking Quinn about "the/-- picnic" when reality is lucid:
	say "'A picnic would be great, we will come next week for one', he agrees.";
Instead of asking Quinn about "the/-- picnic" when reality is confused:
	say "'It does not feel like the right time for a picnic. Maybe when all this trouble has cleared up...'";
Instead of asking Quinn about "the/-- playground/swings/seesaws" when reality is lucid:
	say "'Those kids really love those swings and seesaws', Quinn chuckles.";
Instead of asking Quinn about "the/-- playground/swings/seesaws" when reality is confused:
	say "'They look a bit empty, don't they' he laments.";
Instead of asking Quinn about "the/-- sky/clouds" when reality is lucid:
	say "'This day is splendid!' your husband grins, 'a picnic would be nice'.";
Instead of asking Quinn about "the/-- sky/clouds" when reality is confused:
	say "'I wonder when all this will clear up. It seems hopeless'.";
Instead of asking Quinn about "the/-- kids/children" when reality is lucid:
	say "'Maybe our own kids will play here, one day', Quinn smiles.";
Instead of asking Quinn about "the/-- kids/children" when reality is confused:
	say "Quinn does not seem interested in the kids right now. He seems troubled.";
Instead of asking Quinn about "himself/husband" when reality is lucid:
	say "'I always feel great on a day like this' he grins.";
Instead of asking Quinn about "himself/husband" when reality is confused:
	say "'Today feels a bit drab, something is missing' he laments.";
Instead of asking Quinn about "me" when reality is lucid:
	say "Quinn gives you a kiss.";
Instead of asking Quinn about "the/-- trouble" when reality is lucid:
	say "'Nothing is wrong today, my love', he kisses you on the cheek.";
Instead of asking Quinn about "the/-- trouble" when reality is confused:
	say "'You are missing, Victoria. I wish I knew what happened to you', he laments.";
Instead of asking Quinn about "missing" when reality is confused:
	say "'Oh Victoria, I wish I knew where you are, and hope you are alright', he laments.";
Instead of asking Quinn about "going missing" when reality is confused:
	say "'Oh Victoria, I wish I knew where you are, and hope you are alright', he laments.";
Instead of asking Quinn about "disturbed" when reality is confused:
	say "'You went missing, Victoria', he laments.";
Instead of asking Quinn about "being disturbed" when reality is confused:
	say "'You went missing, Victoria', he laments.";

Instead of asking Quinn about something when reality is lucid:
	say "Quinn ignores the question and smiles at the children playing."
Instead of asking Quinn about something when reality is confused:
	say "Quinn ignores you, he seems troubled by something."
Instead of asking Quinn about something when reality is dreamlike:
	say "[one of]Quinn tries to speak, his lips move but you can't hear the words, like he is very far away.[or]Quinn mouths the words, you can't hear them. He is staring far into the distance beyond you.[or]Quinn's lips move but you can't hear the words.[stopping]";
Instead of smelling during the dream sequence:
	if reality is lucid, say "The air smells fresh and clean.";
	if reality is confused, say "The air in the park smells stale.";
	if reality is dreamlike, say "The air is pungent with decay.";
Instead of kissing Quinn during the dream sequence:
	if reality is lucid, say "Quinn returns the gesture with a bright smile.";
	if reality is confused, say "Quinn smiles at the gesture, but he seems troubled.";
	if reality is dreamlike, say "Some unseen force is holding you back from getting close to Quinn.";

Instead of listening during the dream sequence:
	if reality is lucid, say "The sound of children play echoes across the stretch of grass.";
	if reality is confused, say "You only hear the cold breeze twisting through the trees.";
	if reality is dreamlike, say "You don't hear any sound, this place is lifeless.";

Instead of going north during the dream sequence:
	if reality is dreamlike:
		[ our dream ends here ]
		say "You walk north along the path. Your legs feel heavy, as if moving through mud. Everything around you fades away, you are left in darkness.[paragraph break][italic type]Time passes.[roman type][line break]";
		now the dream sequence is done;
	otherwise:
		distort reality;
		if reality is confused,
			say "You walk north along the path. Everything around you seems different, you are not sure how much time has passed.";
		if reality is dreamlike:
			say "You walk north along the path. Everything around you seems different, you are not sure how much time has passed.";
			now the kids are nowhere;
		try looking;	

Instead of going south during the dream sequence:
	if reality is lucid:
		say "You came to the park with your husband, Quinn, for a walk. You are not going back home now.";
	if reality is confused:
		say "You turn to face the direction where you came from, but the path going south is not there. You remember walking on it, but you only see endless grass stretching our before you.";
	if reality is dreamlike:
		say "No matter how hard you try and will yourself, you can't seem to turn back, like some invisible force preventing you from retreating.";  

Every turn during the dream sequence:
	if a random chance of 1 in 5 succeeds:
		if reality is lucid:
			say "[italic type]A soft, warm wind caresses your face.[roman type][line break]";
		if reality is confused:
			say "[italic type]A cold breeze touches your face.[roman type][line break]";
		if reality is dreamlike:
			say "[italic type]An icy chill cuts your face. You shiver.[roman type][line break]";

test park with "x quinn/x path/x sky/x playground/x kids/ask children about swings/tell kids about seesaws/x swings/x trees/x grass/n"

test quinn with "ask quinn about us/ask quinn about park/ask quinn about picnic/ask quinn about kids/ask quinn about playground/ask quinn about sky/ask quinn about trees/ask quinn about swings/ask quinn about seesaws/ask quinn about marriage/ask quinn about wedding/ask quinn about himself/ask quinn about husband/ask quinn about me/ask quinn about honeymoon/ask quinn about ring/ask quinn about children/ask husband about trouble/ask husband about missing/ask husband about going missing/ask husband about being disturbed/ask husband about disturbed/kiss quinn/n"




Chapter 1 - Front of the house

Front of the house is a room. The description is "You are in front of an old, remote house. The flaking paint and shoddy walkway indicate it's age and abandonment. The porch leads to the south. The front door is to the west."

The house proper is a thing in the front of the house. It is scenery. Understand "house" as the house proper. The description is "Shabby and derelict." Instead of entering the house proper, try entering the front door.

The front floor is in front of the house. It is scenery. Understand "porch" and "walkway" as front floor. The description is "It is aged and weathered."

[ helper that allows the player to just go south to the porch. ]
Instead of going south when the location is the front of the house: try going southwest.

The front door is a locked door. It is west of the Front of the house. It is scenery. The description is "A solid wood door with a knocker fixed on the front."

The knocker is a part of the front door. The description is "A tarnished bronze knocker, the part fixed to the door is shaped like a cat's head. The hinged part that of a rat, hanging by it's tail from the cat's mouth." Understand "rat" and "cat" as knocker. Understand "use knocker" as a mistake ("Perhaps you meant to [italic type]knock on the door[roman type]?").

The knob is a part of the front door. The description is "An oval shaped bronze door knob."

Instead of knocking the front door, say "This building is marked under abandonment, you don't need to knock or have a warrant to enter. Plus you want to avoid making your presence known to anybody inside. Stopping the perpetrator is your priority. Finding Victoria safe, even more so."

Instead of opening the front door, say "You grasp the oval shaped metal door knob, with a firm grip you twist it back and forth. Locked."

Instead of attacking the front door, say "This door may be old, but it is too solid to break down."

Carry out going southwest when the location is front of the house: say "You walk down the porch, and around to the south side of the house."


Chapter 2 - Porch

Porch is a room. It is southwest of the Front of the house. The description is "The rough wood of the porch is weathered and stripped of varnish. There are two windows here. The porch continues west. The front door is back to the north."

[ helper that allows the player to just go north. ]
Instead of going north when the location is the Porch: try going northeast.

Some porch-windows is a thing in the porch. The printed name is "windows". It is scenery. Understand "window" and "windows" as porch-windows. The description is "Through the window you see the shapes of a table and some chairs." Instead of searching porch-windows, try examining porch-windows. Instead of attacking porch-windows, say "You prefer finding a less noisy way inside." Instead of opening porch-windows, say "These windows do not open."

Some porch-planks are in the porch. Understand "wood" and "porch" and "floor" and "planks" as porch-planks. It is scenery. The description is "The rough wood planks of the porch are weathered and stripped of their varnish years ago."

Carry out going northwest when the location is the porch: say "You walk along the porch to the west side of the house."

Instead of entering some porch-windows, say "These windows do not open."





Chapter 3 - Rear of the house

Rear of the house is a room. It is northwest of the Porch. The description is "The back of the house is no less weathered. There is a bay window to the east."

[ helper that allows the player to just go east/west to/from the porch ]
Instead of going west when the location is the porch: try going northwest.

The bay window is a door. It is east of Rear of the house and west of the Parlour. The description is "It is divided into four panes of glass, and sits about chest-height. The window is [if bay window is open]open[else]closed[end if]." It is scenery.

Instead of searching the bay window, say "You see the parlour inside."

Instead of opening the bay window:
	if the bay window is open:
		say "It is already open.";
	else:
		now the bay window is open;	
		say "You pull on the window frame, rust crumbles between the hinges. It swings open.";
		stop the action;

[Carry out going east when the location is the rear of the house:]
Carry out going the bay window: 
	say "Looking to make sure the room is empty, you slip inside."

[ some helpers for entering the bay window / house ]
A rear-house-proxy is in Rear of the house. It is scenery. The printed name is "house". Understand "house" as rear-house-proxy. The description is "The rear of a shabby derelict house". Instead of entering rear-house-proxy, try entering bay window.





Chapter 4 - Parlour

Parlour is a room. The description is "A low and wide table dominates the room, tattered armchairs guarding it, a carpet covers the floor. A serving dish rests on the table. You see a bay window to the west, and an exit to the north."

parlour-chairs are a thing in the parlour. It is fixed in place. It is scenery. The printed name is "chair". The description is "Torn and tattered, the floor looks more inviting." Instead of entering parlour-chairs, say "You did not come here for the holiday." Understand "chair" and "chairs" and "armchair" and "armchairs" as parlour-chairs.

parlour-carpet is a thing in the parlour. It is fixed in place. It is scenery. The printed name is "carpet". The description is "It's once-floral pattern, now faded by time and memory, reminds you of a muddy lily pond." Understand "floor" and "carpet" as parlour-carpet.

Instead of looking under the parlour-carpet, say "You lift the carpet and only find the floor, there is nothing suspicious about it. You drop the carpet back where it was."

parlour-table is a supporter in the parlour. It is fixed in place. It is scenery. The printed name is "table". The description is "A dark wood table with Flemish scroll style legs." Understand "table" as parlour-table.

Instead of looking under the parlour-table, say "The carpet is under the table."

parlour-legs is a part of parlour-table. The description is "The legs have scrolls at the top and bottom, spiralling in opposite directions. It must be hand carved." Understand "legs" as parlour-legs.

A closed container called serving dish is on the parlour-table. It is fixed in place. It is scenery. The description is "An undecorated silver dish, tarnished with age. [if serving dish is closed]A lid covers it.[end if]". Understand "lid" as serving dish. Instead of closing the serving dish, say "You decide to leave the dish alone. It is evidence."

Instead of opening the serving dish:
	if the serving dish is open:
		say "There is no need to relive that moment all over again.";
		stop the action;
	now the serving dish is open;
	say "You lift the lid, revealing [list of things in serving dish].";

Some bone fragments are in the serving dish. It is plural-named. The description is "These are Tad's trophies, your main suspect. He keeps human bones, and displays them exactly like this." Understand "bones" as bone fragments. Instead of taking bone fragments, say "No, they can be taken into evidence later. Time matters."

Instead of taking serving dish:
	if serving dish is open:
		say "No, they can be taken into evidence later. Time matters.";
	otherwise:
		try opening serving dish;






Chapter 5 - Living room

Living room is a room. It is north of the Parlour. The description is "An old couch rests against a wall, a painting hangs above it. A writing desk squats in one corner, and a serving trolley in the other. The exit to the south leads back to the Parlour, and there is a door to the east. You see some stairs going up."

Some living-room-stairs are in the living room. It is scenery. Understand "stairs" as living-room-stairs. The description is "A flight of wooden stairs that lead up."

A trolley is a supporter in the living room. It is scenery. The description is "An rickety looking thing slanted to one side: two of the wheels are missing. It has [a list of things on a trolley] on it."
Instead of pushing a trolley, say "It is broken and refuses to move."
Instead of pulling a trolley, say "It is broken and refuses to move."
Some wheels are a part of the trolley. The description is "The two remaining wheels are discs of black plastic." Understand "wheel" as wheels.

A teapot is a closed openable container on the trolley. It is scenery. The description is "[if a teapot is pristine]A white ceramic teapot with a decorative design painted on: green leaves with violet and magenta orchid blooms. The handle in the shape of butterfly wings[else]The teapot is smashed to pieces[end if]."
Instead of taking a pristine teapot, say "You refuse to break for tea."
Instead of taking a broken teapot, say "You refuse to break for tea. It is smashed beyond use anyway."

Instead of opening a pristine teapot:
	now the teapot is open;
	say "Lifting the butterfly lid, a [list of things in teapot] is revealed inside the teapot."
Instead of opening a broken teapot:
	say "There is nothing left of the teapot to open."
Instead of closing a broken teapot:
	say "There is nothing left of the teapot to close."

[ the player can smash the teapot, revealing the card ]
A teapot can be pristine or broken. A teapot is pristine.

Instead of attacking a pristine teapot:
	now the teapot is broken;
	now the printed name of the teapot is "remains of a teapot";
	now the teapot is plural-named;
	say "You smash the teapot into many shards. You notice [a list of things in the teapot] was hidden inside it.";
	now everything in the teapot is on the trolley;
	
Some teacups are on the trolley. It is scenery. The description is "Pale white tea cups without any designs." Understand "cup" and "cups" and "teacup" as teacups. Instead of taking teacups, say "You refuse to break for tea."

A business card is in the teapot. The description is "A white card with black print." Instead of examining a business card, say "'Unholy Battle pest control, Tad Kemp'. You notice an impression like writing on the back of the card."
An impression is part of a business card. Instead of examining impression, try turning a business card.
Instead of turning a business card:
	say "The back of the card has 6375 written on it. You commit this to memory.";
	now the code is part of the player.
Instead of touching a business card, try turning a business card.
Instead of touching impression, try turning a business card.

A painting is in the living room. It is fixed in place. It is scenery. The description is "It depicts four horsemen riding through the sky, rolling clouds behind them. On the earth below, soldiers and slaves alike engage in a battle frenzy. A small plaque is fixed to the frame."
A plaque is part of a painting. The description is "The plaque reads: 'Conquest, War, Famine and Death.'" 
Some horsemen are part of the painting. Understand "horses" and "war" and "conquest" and "famine" and "death" as horsemen. The description is "Conquest wears fine clothes, wields a longbow and a crown adorns his head. War is swinging a two-handed broad sword. Famine holds a sling, dressed in rags and looking fierce. The skeleton that is Death grips a long staff, his gaze causing recoil in those who it falls upon."
Some clouds are part of the painting. Understand "rolling clouds" as clouds. The description is "The clouds in the painting seem in turmoil, blocking out the entirety of the sky, except for one small patch in the heavens above, occupied by a lonesome white lamb."
A lamb is part of the painting. The description is "It watches the scene below with quiet indifference."
Some fighters are part of the painting. Understand "soldiers" and "slaves" as fighters. The description is "The soldiers and slaves are in the middle of a massive battle. It does not seem they can tell friend apart from foe."
Instead of taking a painting, say "It is fixed to the wall. And you don't need to lug that around."

A writing desk is a supporter in the living room. It is scenery. The description is "A squat dark wood desk with no drawers. You notice engravings on it's surface." Instead of opening the writing desk, say "It has no drawers to open."
Some engravings are part of the writing desk. The description is "Names carved into the varnished wood. You read: Annette Faith Parker. Meghan Mcclure. Jami Berg. All previous victims."

A couch is in the living room. It is scenery.  The description is "A musty antiquated thing, likely a housing for many unseen critters."
Instead of searching a couch, say "You only find dust." Instead of entering couch, say "And risk all the lice and bedbugs living in it?"
Instead of looking under a couch, say "You only find dust." Instead of pushing a couch, say "There is no need to move this couch."

Check going up when the location is the living room:
	if the second act is undone:
		now the second act is done;
		stop the action;



Chapter 6 - Kitchen

The Kitchen is a room. The description is "In the pale light you see a bare kitchen: scuffed wooden floors, a table and some cupboards fixed to the wall. There is a door to the west."
 
The kitchen door is a locked door. It is scenery. It is east of the Living room and west of the Kitchen. The description is "The kitchen door is [if the kitchen door is open]open[else]closed[end if].".
Does the player mean unlocking kitchen door with bronze key: it is very likely.
The kitchen door can be silent or noisy. The kitchen door is silent.

The kitchen-floor is in the Kitchen. Understand "floor" and "floors" as kitchen-floor. It is scenery. The printed name is "floor". The description is "Scuffed wooden floors groan under your steps."

Some cupboards are in the kitchen. It is scenery. Understand "cupboard" as cupboards. The description is "Empty cupboards, like so many graves, are fixed to the wall. Some are missing doors, you used those for firewood." Instead of searching cupboards, say "They are empty." Instead of opening cupboards, say "You know they have nothing in them, so you don't bother looking inside them."

A kitchen table is a supporter in the kitchen. The description is "A worn and dirty table."

Some sharp knives are on the kitchen table. Understand "knife" as sharp knives. The description is "A small collection of sharp knives. This is how you protect yourself."

Instead of taking sharp knives:
	if a cleaver is carried by Tad:
		say "You have one already.";
	else:
		now Tad carries a cleaver;
		say "You pick up a sharp cleaver from the pile of knives.";

A cleaver is a thing. The description is "It is a sharp meat cleaver."

Instead of going west during the seventh act:
	if the kitchen door is locked:
		try opening the kitchen door;
		stop the action;
	if the player is not carrying a cleaver:
		say "I can't go out there without protection. I need a knife!";
	otherwise:
		now the seventh act is done;


Chapter 7 - Second Floor Hall

Second Floor Hall is a room. It is above the Living room. The printed name is "Second Floor". The description is "You are in the second floor hallway. Here are stairs that lead up to the third floor, protected by a security gate. You can go back down to the first floor. You see exits to the north and south."

Some second-floor-stairs are in the Second Floor Hall. It is scenery. Understand "stairs" as second-floor-stairs. Instead of entering second-floor-stairs: try going up. The description is "A flight of wooden stairs, they lead up and down."

Instead of going the Security Gate, try going up.

Check going up when the location is the Second Floor Hall:
	if the Security Gate is locked:
		continue the action;
	otherwise:
		try opening the Security Gate;
		if the fourth act is undone:
			now the fourth act is done;
			stop the action;


Chapter 8 - Bathroom

Bathroom is a room. It is north of the Second Floor Hall. The description is "You are in a bathroom, you see a claw-foot bath and a basin here, a mirror is fixed to the wall above the basin. There is window on the north wall. There is an exit to the south."

The Bathroom Window is a closed locked door. It is scenery. It is inside of Lower Outside and outside of the bathroom. The printed name is "window". Understand "window" as Bathroom Window. The description is "It has a white wooden frame, a sliver of the moon is visible."
Instead of opening the locked Bathroom Window, say "It won't open. It must be secured permanently."

Instead of searching the Bathroom Window when the location is in the interior:
	say "The window is closed, but you can tell it is dusk outside."
Instead of searching the Bathroom Window when the location is not in the interior:
	say "You see a bathroom through the window."

Instead of closing an open Bathroom Window, say "No point in closing it now."

A bath is in the bathroom. It is scenery. The description is "A stained white claw-foot bath. The feet are metal and have decorative faces moulded into them."
Some faces are a part of the bath. The description is "Moulded faces make up the feet of the bathtub." Understand "claw-foot" and "feet" as faces.

Washing-up is an action applying to nothing.
Understand "wash self" and "wash face" and "bathe" and "wash arms" as "[cleaning-up]".
Understand "[cleaning-up]" as washing-up.
Carry out washing-up:
	if a bath is visible:
		try entering a bath instead;
	else:
		say "You would love to wash yourself, even if you see a bath, you won't dare to bathe in this house.";

Instead of taking a bath, try entering a bath.

Instead of entering the bath:
	if the player is victoria:
		say "You would love a bath, anywhere but here.";
	otherwise:	
		say "Taking a bath at this point is utterly ridiculous.";

A basin is in the bathroom. It is scenery. The description is "A simple pedestal basin of white ceramic."

A mirror is in the bathroom. It is scenery. Understand "stain" and "edges" as a mirror. The description is "A rectangular mirror without any frame. The edges of the glass are stained." Instead of searching mirror, say "You look at yourself in the mirror: [mirror description of the player][paragraph break]".

The moon is a thing in the bathroom. It is scenery. It is lit. The description is "The pale moon pushes through the clouds, proving some light in the dim bathroom." Understand "clouds" as moon.


Chapter 9 - Second floor bedrooms

The Second Floor Bedroom is a room. It is south of the Second Floor Hall. The printed name is "Bedroom". The description is "The bedroom is furnished with a mattress in the corner, and a bedside table against the wall. There is a safe under the table. The exit is to the north."

The Dusty Mattress is a supporter in the Second Floor Bedroom. It is scenery. The printed name is "mattress". Understand "bed" and "mattress" as Dusty Mattress. The description is "A single mattress on the floor." Instead of entering the Dusty Mattress, say "This is no time to fool around!"

The bedside table is a supporter in the Second Floor Bedroom. It is scenery. The description is "A low bedside table with some newspapers on it." Instead of looking under the bedside table, say "You see a safe under the table."

Some newspapers are on the bedside table. It is scenery. The description is "These are fairly recent, somebody is living here.". Instead of taking newspapers, say "You don't want the newspapers."

A gun safe is a locked closed container in the Second Floor Bedroom. It is fixed in place. It is scenery. The description is "A small gun safe with an electronic keypad." The keypad is part of the gun safe. The description is "An electronic pad for entering a code."

The code is a thing. The description is "A number written on the back of the business card, you have committed it to memory." Instead of dropping the code, say "The number is committed to memory."

Instead of attacking a gun safe:
	say "The bullet will ricochet off the safe, it is too dangerous."

Instead of taking a gun safe:
	say "It is fixed securely to the wall."

Instead of unlocking a gun safe with:
	say "You only need to OPEN THE SAFE, and if you know the code you will enter it."

Instead of opening a gun safe:
	if the code is part of the player:
		now the safe is open;
		say "You enter the code you memorized from the back of the business card, you hear the electronic lock unlatch and the safe door swings open. Inside is [a list of things in the safe].";
	else:
		say "The safe beeps in error. You do not know the code to open the safe.";

[Entering a code is an action applying to one number and one thing. Understand "enter [number] in [keypad]" as entering a code.
Check entering a code:
	if the safe is open, say "The safe is already open." instead;
	if the number understood is not 6375:
		say "The safe beeps in error." instead;
Carry out entering a code:
	now the safe is open;
Report entering a code:
	say "Click. The safe door creaks open. Inside is [a list of things in the safe].";]

The bronze key is in the safe. The description is "A short but fat bronze key, it has decorative grape vines embossed around the shaft and the head."

Chapter 10 - Third Floor Hall

Third Floor Hall is a room. The printed name is "Third Floor".

There is a closed locked door called Security Gate. It is scenery. The printed name is "the security gate". It is above the Second Floor Hall and below the Third Floor Hall. Understand "gate" and "security gate" as Security Gate. The description is "It is a swing gate made of metal bars.". The bronze key unlocks the Security Gate.

Chapter 11 - Third Floor Bedroom

Third Floor Bedroom is a room. The printed name is "Bedroom". The description is "A small bedroom furnished with a mattress on the floor and a curtain against one wall[if curtain is open], a window behind it. Some pipes run along the wall behind the curtain[end if]. The loft is back to the east. The bedroom door is to the south.[if curtain is open and a sheet is tied][paragraph break]A bed sheet is tied to the pipes, the other end hanging out the window.[end if]"

Carry out going to Third Floor Bedroom during the first act:
	Victoria passes-out in one turn from now.

At the time when Victoria passes-out:
	now the first act is done;

The Third Floor Bedroom door is a closed locked door. It is north of the Third Floor Hall and south of the Third Floor Bedroom. It is scenery. The printed name is "bedroom door".
Instead of attacking Third Floor Bedroom door, say "You bash at the door."

Does the player mean opening the Third Floor Bedroom door: it is very likely.
Does the player mean attacking the Third Floor Bedroom door: it is very likely.
Does the player mean shooting at the Third Floor Bedroom door: it is very likely.

Instead of opening the Third Floor Bedroom door during the sixth act:
	if the Third Floor Bedroom door is closed:
		say "Someone has locked the bedroom door!";
		stop the action;

Instead of searching the Third Floor Bedroom door:
	say "You can't see through the door."

The Grimy Mattress is a supporter in the Third Floor Bedroom. It is scenery. The description is "A single sized mattress lies on the floor." Understand "bed" and "mattress" as Grimy Mattress. The printed name is "mattress"

Instead of entering The Grimy Mattress, say "You don't have time to lie around."

A sheet is on the Grimy Mattress. The description is "Pale from dirt." A sheet can be tied or untied. The sheet is untied.

Instead of taking the tied sheet, say "The sheet is tied to the pipes. You can't take it."

A closed openable container called a curtain is in the Third Floor Bedroom. It is scenery. The description is "Filthy and eaten by fish moths.[if a curtain is closed] It is drawn closed.[end if]".
Instead of opening curtain:
	if the curtain is open:
		say "It is already pulled open.";
	otherwise:
		now the curtain is open;
		now Some pipes are in the Third Floor Bedroom;
		say "You pull the curtain open, there is a window behind it. Near the floor are some pipes.[if a sheet is tied][line break]Someone has tied a bed sheet to the pipes, and hung the other end out the window.[end if]";
Instead of pulling a curtain: try opening a curtain.

Some pipes are a thing. It is scenery. The description is "They are painted the same as the faded white walls. You guess they carry water."

Instead of tying sheet to pipes during the third act:
	if the sheet is untied:
		if the sheet is not carried by the player:
			try taking the sheet;
		if escape-window is closed, try opening escape-window;
		say "You wrap one end of the sheet around the pipes and make a knot. You drop the other end of the sheet out the window.";
		now the sheet is tied;
		silently try dropping the sheet;
	otherwise:
		say "It is already tied."

[It is south of the Upper Outside and north of the Third Floor Bedroom.]
[ a one-way escape door because we don't want to reference it when the player is hanging on the other side. ]
The escape-window is a closed door. It is outside of the Third Floor Bedroom and inside of the Upper Outside. It is scenery. The printed name is "window". Understand "window" and "grass" as escape-window. The description is "[if a curtain is closed]The window is covered by the curtain.[else]You look through the window. You see grass down below, no other houses are visible. You appear to be on the third storey."
Instead of searching escape-window, try examining escape-window.

Instead of exiting when the location is the Third Floor Bedroom, try entering the escape-window.

Instead of going down when the location is the Third Floor Bedroom, try entering the escape-window.

Instead of inserting the sheet into escape-window:
	say "You can't throw the sheet out the window, it will help to TIE the sheet to something first."

Instead of going to the Upper Outside during the third act:
	if the sheet is untied:
		say "It is too high up, you will surely fall. Perhaps if you had something to climb down with.";
		stop the action;
	if the third act is undone:
		now the third act is done;
		stop the action;

Instead of going to the Upper Outside during the sixth act:
	say "You grab the sheet and climb through the window.";
	continue the action;


[ sixth act - the detective can shoot the door open ]
Instead of attacking Third Floor Bedroom door during the sixth act:
	say "You fire two rounds into the lock of the door, it breaks open.";
	now the Third Floor Bedroom door is open;
	now the Third Floor Bedroom door is unlocked;

Check going south when the location is the Third Floor Bedroom during the sixth act:
	if the Third Floor Bedroom door is closed:
		try opening Third Floor Bedroom door;
		stop the action;
	say "A chilling scream echos from down below. You run down the stairs as fast as you can...";
	now the sixth act is done;
	stop the action;





Chapter 12 - Third floor loft

The Loft is a room. The description is "[if the player is tied]You don't know where you are. You feel too panicked to notice your surroundings. You are tied to a chair with rope.[else]You are surrounded by boxes and white walls, a single window is visible. A broken chair and cut rope lies on the floor. There is an exit to the west.[end if]";

The Loft is east of the Third Floor Bedroom.

walls, floors and ceiling are things in the loft. walls, floors and ceiling are scenery. The description of walls is "White walls, lined with crates and boxes." The description of floors is "Dusty wooden floors." The description of ceiling is "The visible rafters make you think of an attic." Understand "rafters" as ceiling. Understand "wall" as walls. Understand "floor" as floors.

A thing called the window is in the loft. The description is "A small window allows a trickle of light into the room." It is scenery.

Instead of searching the window, say "It is too far up, you can't see through it."

A thing called some boxes are in the loft. The description is "Quite a few boxes are piled in the room." It is scenery. Understand "crate" and "crates" as boxes.
Instead of opening some boxes, say "You don't want to rummage through those old boxes."
Instead of entering some boxes, say "Even if you stand on them, you won't reach the window."
Instead of attacking some boxes, say "You give the nearest box a violent kick. That felt good but it won't help you get out of here."

A supporter called the rickety chair is in the loft. It is fixed in place. The printed name is "chair". It is scenery. The description is "[if the player is tied]It feels rickety and creaks when you move. [end if][if the chair is upright]You should try to stand up.[end if][if the player is not tied]A broken chair.[end if]";

The rickety chair can be upright or sideways. The rickety chair is upright.
Instead of taking rickety chair, say "You have no need for a broken chair."

Some rope is a part of the chair. Understand "bonds" and "ropes" and "restraints" as rope. The description is "[if the rickety chair is upright]The rope is tied around your hands and feet, fixing you to the chair.[end if][if the rickety chair is sideways and the player is tied]The rope is tied to your one hand and both your feet.[end if][if the player is untied]The rope is cut to pieces.[end if]".

Instead of untying the rope: say "[if Victoria is tied]You struggle to untie the knots. There must be another way.[else]You cut them pretty good, so why bother undoing the knots now."

Instead of taking the rope, say "[if Victoria is tied]Ironically you are tied up with the very rope you want to take.[else]You don't need cut ropes."

A small cardboard box is closed openable container. The description is "[if small cardboard box is closed]A small closed box.[otherwise]The small box is open, it's contents on the floor."

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

A tube of hardened glue, pots of paints and a craft knife are things inside a small cardboard box.

The description of a tube of hardened glue is "The label reads 'The Steel Queen Super Glue', the tube is rock hard."
The description of pots of paints is "Small pots of red, green and blue paints." Understand "paint" as paints.

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
	say "This won't cut the ropes." instead.

Instead of touching the rickety chair when Victoria is tied:
	say "You feel the chair pressing up against your back."

Instead of touching the rickety chair when Victoria is not tied:
	say "The wood of the chair feels old and rough."

Instead of getting off the rickety chair for the first time:
	say "You rock the chair. Some part of it snaps underneath you, it sags to the right. The chair sounds pretty weak, you think it might break if you try that again."
	
Instead of pushing the rickety chair when Victoria is tied:
	say "Perhaps you meant to GET UP.";
	
Instead of getting off the rickety chair for the second time:
	Move small cardboard box to the loft;
	Now the rickety chair is sideways;
	say "You rock the chair. One side of the chair breaks under the strain and you topple onto your side, your head almost hits a small cardboard box. Your one arm is free!"
	
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

Upper Outside is a room. The printed name is "Hanging outside the third floor". The description is "You are hanging outside the third storey window, gripping the bed sheet tied inside the room. You can go down."

[ Prevent Victoria climbing back in the window ]
Instead of going to the Third Floor Bedroom when the location is the Upper Outside during the fifth act:
	say "You won't dare go back into that room, not with somebody just outside the door."

[ Prevent Otto climbing back in the window ]
Instead of going to the Third Floor Bedroom when the location is the Upper Outside during the sixth act:
	say "You are wasting time. You can't back out with your choice now."

Instead of opening the escape-window when the location is the Upper Outside:
	say "It is already open.";
Instead of closing the escape-window when the location is the Upper Outside:
	say "The sheet hanging outside the window prevents it from closing.";

A Makeshift Rope is here. It is scenery. The printed name is "sheet". Understand "sheet" as Makeshift Rope. The description is "You are hanging on to the sheet for dear life."

Carry out going down when the location is Upper Outside:
	say "Lowering yourself down, you reach the end of the sheet.";

The Outer Curtain is in the Upper Outside. It is scenery. The printed name is "curtain".
Instead of examining the outer curtain during the fifth act, say "You drew the curtain closed to hide your escape." 
Instead of examining the outer curtain during the sixth act, say "The curtain hangs next to the window." 
Instead of opening the outer curtain during the fifth act, say "You want to keep that closed to hide your escape."
Instead of closing the outer curtain during the fifth act, say "It is already drawn closed."


Lower Outside is a room. It is below Upper Outside. 
The printed name is "Hanging outside the second floor". The description is "You are hanging outside a window. You are at the end of the sheet, and cannot go down any more.[if the Bathroom Window is open][paragraph break]The window is broken open, you can go in.[end if]";

A Lower Makeshift Rope is in Lower Outside. It is scenery. The printed name is "sheet". Understand "sheet" as Lower Makeshift Rope. The description is "You are hanging on to the sheet for dear life. You are at the end of the sheet."

Check going up when the location is Lower Outside:
	say "You refuse to climb back up." instead.
	
[ Alter the Bathroom Window description this time ]
Instead of examining Bathroom Window during the fifth act:
	say "[if Bathroom Window is closed]A chipped white frame with murky glass panes.[else]A chipped white frame with broken glass panes."

Instead of opening Bathroom Window during the fifth act:
	say "You struggle to open the window, maybe a little force is called for."

Instead of attacking Bathroom Window during the fifth act:
	say "You kick the window and shatter the glass pane. You should be able to fit through it without cutting yourself.";
	now the Bathroom Window is open;

Instead of examining Bathroom Window during the sixth act:
	say "A chipped white frame with murky glass panes."

Part 3 - Scenes

Chapter - Dream Sequence

The dream sequence is a scene. The dream sequence ends when the dream sequence is done.

When the dream sequence begins:
	Move Quinn Cooper to the park;
	Move Victoria to the park;
	Now the player is Victoria Cote;

[ Alter descriptions and actions based on the current dream state ]
Dream state is a kind of value. The dream states are lucid, confused and dreamlike. The reality is a dream state that varies. The reality is lucid.

To distort reality:
	if the reality is not dreamlike:
		Now the reality is the dream state after the reality;



Chapter 1 - First act

The first act is a scene. The first act ends when the first act is done. The first act begins when the dream sequence ends.

When the first act begins:
	Now Victoria Cote is tied;
	say "Light pierces your vision as your eyes flutter open. Blurred shapes spin around as you shake the sound of a pounding heart free. You just woke from a very strange dream.";
	Move Victoria Cote to the rickety chair;
	Now the player is Victoria Cote;
	
When the first act ends:
	say "The room turns into a tunnel, the floor rising up to meet you. Shadows creep in from all sides as your vision fades.";
	pause for dramatic effect;

Instead of listening during the first act:
	if Victoria is tied:
		say "You don't hear anything, except the creaking chair when you move.";
	otherwise:
		say "You stop to listen carefully for any noises. You hear nothing.";
Instead of smelling during the first act:
	say "The room smells a little moldy, which is not unexpected looking at the state of it.".

Chapter 2 - Second act

The second act is a scene. The second act begins when first act ends.
The second act ends when the second act is done. 

When the second act begins:
	say "(as [Otto]) Dusk creeps in, the moon struggles to find gaps through looming clouds. A chill moves over your skin.";
	Move Otto York to the front of the house;
	Now the player is Otto;
	try looking;
	say "You are carrying [list of things carried by the player].";
	say "[line break][italic type]An anonymous caller directed me to this house, in connection with the missing woman. My partner is on his way with the cavalry.[paragraph break]Victoria... I pray she is still alive.[roman type][line break]";

When the second act ends:
	say "You peer up the staircase, making sure nobody else is watching from above, and cautiously ascend the stairs.";
	pause for dramatic effect;

Instead of listening when the location is not in the interior during the second act:
	say "The cool night is quiet, save for the faint chirps of crickets in the distance.".
Instead of smelling when the location is not in the interior during the second act:
	say "The evening air smells of bitter ozone.".

Instead of listening when the location is in the interior during the second act:
	say "The house is quiet, apart from the creaking floor boards when you move.".
Instead of smelling when the location is in the interior during the second act:
	say "The house smells old and moldy.".
Instead of listening to kitchen door during the second act:
	say "You put your ear up against the door, it is quiet on the other side.".
Instead of knocking the bedroom door during the first act:
	say "You hesitate to knock on the door, scared of whomever kidnapped you. You would rather try and escape unnoticed.".

Instead of waiting during the second act, say "You better get moving, you can't wait around for your partner to arrive."

Instead of attacking The kitchen door during the second act:
	now The kitchen door is noisy;
	say "You bash the door but it holds firm."

Chapter 3 - Third act

The third act is a scene. The third act begins when second act ends. The third act ends when the third act is done.

When the third act begins:
	Move Victoria to Third Floor Bedroom;
	now the player is Victoria;
	say "(as [Victoria]) Your eyes flutter open.";
	try looking;

When the third act ends:
	say "You hold on to the makeshift rope, climb through the window and prepare yourself.";
	pause for dramatic effect;

Instead of listening during the third act:
	say "You hear faint sounds coming through the bedroom door.";
Instead of smelling during the third act:
	say "The room smells a little moldy, which is not unexpected looking at the state of it.".
Instead of listening to the bedroom door during the third act:
	say "You hear somebody moving around downstairs.";
Instead of knocking the bedroom door during the third act:
	say "You hesitate to knock on the door, scared of whomever kidnapped you. You would rather try and escape unnoticed.".


Chapter 4 - Fourth act

The fourth act is a scene. The fourth act begins when third act ends. The fourth act ends when the fourth act is done.

When the fourth act begins:
	say "(as [Otto]) As you reach the second floor.";
	move Otto to the Second Floor Hall;
	now the player is Otto;
	try looking;

When the fourth act ends:
	say "You ascend the stairs, continuing your search...";
	pause for dramatic effect;

Instead of listening during the fourth act:
	say "You can hear faint noises coming from upstairs. Somebody is up there, moving around.".


Chapter 5 - Fifth act

The fifth act is a scene. The fifth act begins when the fourth act ends. The fifth act ends when the fifth act is done.

When the fifth act begins:
	move Victoria to the Upper Outside;
	now the player is Victoria;
	now the curtain is closed;
	move Otto to waiting room;
	now the Security Gate is open;
	now the Security Gate is unlocked;
	say "(as [Victoria]) You hold tight to the bed sheet as you climb through the window. You hear a noise coming from the other side of the bedroom door, fear rises up inside. You pull the curtain closed, hoping to hide your escape attempt.";
	try looking;

When the fifth act ends:
	say "Frightened and shaking, you run out the bathroom and down the stairs...";
	pause for dramatic effect;

Instead of closing Security Gate during the fifth act:
	say "You don't want to close it, you only want to get down stairs and out of this place."

Instead of listening when the location is Lower Outside during the fifth act:
	say "You hear faint chirps of crickets.";
Instead of smelling when the location is not in the interior during the fifth act:
	say "Apart from smelling the damp evening air, you don't notice any other smells.".
Instead of listening when the location is the Upper Outside during the fifth act:
	say "You hear faint movements through the window, coming from behind the bedroom door."
Instead of listening to Bathroom Window during the fifth act:
	say "You don't hear any noises through this window."
Instead of listening when the location is the bathroom during the fifth act:
	say "You only hear your own heart pounding, your climb down was taxing."
Instead of listening during the fifth act:
	say "You hear movement upstairs!";
Instead of examining Security Gate during the fifth act:
	say "This gate leads up the stairs, where you were kept. Somebody has opened the gate. They could be up there now.";


Direction-looking is an action applying to one visible thing and
requiring light. Understand "look [direction]" as direction-looking.
Carry out direction-looking:
say "You see nothing unusual in that direction."

Instead of direction-looking down when the location is not in the interior:
	say "You see the ground a couple storeys below you."

Instead of going to the Lower Outside when the location is the Bathroom during the fifth act:
	say "You really don't want to go back out there."

[ exiting the bathroom as victoria ends the scene ]
Check going south when the location is the Bathroom during the fifth act:
	now the fifth act is done;
	stop the action;

Chapter 6 - Sixth act

The sixth act is a scene. The sixth act begins when the fifth act ends. The sixth act ends when the sixth act is done.

When the sixth act begins:
	say "(as [Otto]) You reach the top of the stairs, a door in front of you is latched from the outside. You undo the latch and dash through into the loft...";
	move Otto to the Loft;
	now the player is Otto;
	now the sheet is tied;
	now the Bathroom Window is open;
	now the escape-window is open;
	now the sheet is scenery;
	try looking;

When the sixth act ends:
	pause for dramatic effect;

Instead of listening for the first time during the sixth act:
	say "You hear breaking glass, sounds like it came from one level below you.".

Instead of listening when the location is in the interior during the sixth act:
	say "You hear movement below inside the house.".

After going to the Bathroom during the sixth act:
	say "You manage to squeeze your way through the broken frame, which is not that large for a man of your build. You cut your forearm badly. A chilling scream echos from down below right before you dash out the bathroom and down the stairs...";
	now Otto is bleeding;
	now the sixth act is done;
	stop the action;

Instead of going to the Upper Outside when the curtain is closed during the sixth act:
	say "You can't see a window to climb out of.";


Chapter 7 - Seventh act

The seventh act is a scene. The seventh act begins when the sixth act ends. The seventh act ends when the seventh act is done.

When the seventh act begins:
	say "(as [Tad]) You have been hiding from the Demons that hunt you. Everywhere you go, they follow. Angry, wicked demons that want your flesh. You managed to trap one of them, and locked it in the attic.[if The kitchen door is noisy] Not too long ago you heard one of them bashing at the door.[end if]";
	move Tad to the Kitchen;
	now the player is Tad;
	Tad hears noise in two turns from now;
	try looking;

When the seventh act ends:
	say "You prepare to meet the horror, and pass through the door...";
	pause for dramatic effect;

At the time when Tad hears noise:
	say "You hear breaking glass. The Demon! You must stop it, before it comes for you.[paragraph break]You unlock the kitchen door.";
	now the kitchen door is unlocked;

Instead of listening during the seventh act:
	if the kitchen door is locked:
		say "The kitchen is quiet.";
	else:
		say "You hear something moving beyond the kitchen door.";
Instead of smelling during the seventh act:
	say "The kitchen smells moldy.".


Chapter 8 - Eighth act

The eighth act is a scene. The eighth act begins when the seventh act ends. The eighth act ends when the eighth act is done.

When the eighth act begins:
	now the description of the Living Room is "The room is dim and nothing you see makes sense. You see an exit to the south.";
	say "(as [Victoria]) You reach the bottom of the stairs, breathless and shaking.";
	move Victoria to the Living room;
	now the player is Victoria;
	try looking;

When the eighth act ends:
	if Otto is not bleeding:
		say "You close your eyes.";
		pause for dramatic effect;
	otherwise:
		say "There is movement to your right, a detective on the stairs! They aim their gun at Tad with a bloodied, shaking arm. The gun fires...";
		[ we do not pause here, Victoria stay in the role in the next scene ]

Instead of examining during the eighth act:
	say "You can't focus on anything.";

Check going during the eighth act:
	if Tad is not in the Living Room:
		say "The kitchen door opens and Tad appears from the shadows, moving towards you with a cleaver in his hand. That same crazed look on his face when he abducted you. You scream.";
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
	say "Your limbs are frozen while he glares at you.";

At the time when Otto appears:
	now the eighth act is done;

Instead of listening during the eighth act:
	if Tad is in the location:
		say "You only hear your heart pounding in your chest.";
	else:
		say "You hear somebody rustling around beyond the door to the east. You make a note to avoid that door.";

Every turn when Tad is in the location during the eighth act:
	say "All you can do is sob and plead for mercy.";

Chapter 9 - Ninth act

The ninth act is a scene. The ninth act begins when the eighth act ends. The ninth act ends when the ninth act is done.

When the ninth act begins:
	if Otto is not in the location:
		move Otto to the Living room;
	if Victoria is not in the location:
		move Victoria to the Living room;
	if Tad is not in the location:
		move Tad to the Living room;
	if Otto is not bleeding:
		now the player is Otto;
		say "(as [Otto]) You reach the Living Room just in time.";
		try looking;
	otherwise:
		say "The shot missed! Tad turns to the detective. Now is your chance!";
		now the player is Victoria;
		[try looking;]
		
When the ninth act ends:
	pause for dramatic effect;

Every turn during the ninth act:
	if Tad is in the location:
		say "[if the player is Otto]Tad moves closer to Victoria, a cleaver in his hand...[else]Tad moves closer to the detective, a cleaver in his hand...";

Instead of examining during the ninth act:
	say "You are wasting time!";

Instead of waiting during the ninth act:
	say "You are wasting time!";

Instead of going during the ninth act:
	say "No time to run away, you must stop him!"

Instead of attacking Tad during the ninth act:
	if the player is Victoria:
		say "You slip the craft knife into your palm, scared to death, your limbs seem to move on their on volition. You slash at Tad's neck, blood gushes out. More blood than you ever saw.";
		now Tad is dead;
		now the ninth act is done;
	otherwise:
		say "You aim your pistol at Tad, [if Otto is bleeding]your arm shakes, you feel faint. You [end if]exhale and squeeze the trigger...";
		now the ninth act is done;

Instead of listening during the ninth act:
	say "You hear the frightened breathing of Victoria.".
Instead of smelling during the ninth act:
	say "The smell of fear permeates this room.".


Chapter 10 - Tenth act

The tenth act is a scene. The tenth act begins when the ninth act ends. The tenth act ends when the tenth act is done.

When the tenth act begins:
	say "(as [Tad]) You enter the Living room, the Demon is here. It is mocking you, calling out for your flesh. The parlour is due south, the kitchen to the east. Stairs go up to the second floor.";
	if Tad is not in the location:
		move Tad to the Living room;
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

Instead of listening during the tenth act:
	say "You hear the hard breathing of the hungry Demon in front of you.";
Instead of smelling during the tenth act:
	say "You smell the vile stench of the Demon facing you.";


Chapter 11 - Eleventh act

The eleventh act is a scene. The eleventh act begins when the tenth act ends. The eleventh act ends when the eleventh act is done.

When the eleventh act begins:
	move Demon to the waiting room;
	if Victoria is not in the location:
		move Victoria to the Living room;
	if Otto is not in the location:
		move Otto to the Living room;
	if Tad is not in the location:
		move Tad to the Living room;
	now the player is Otto;
	now the description of the Living Room is "The exit is to the south.";
	say "(as [Otto]) For a moment you stand lifeless, making sense of the scene. [Victoria] collapses to the floor. You have to get her out of here.";
	try looking;

When the eleventh act ends:
	say "You carry Victoria outside, the cool night air promising peace. You hear sirens wailing over the hill.";
	[pause for dramatic effect;]

Instead of attacking Tad during the eleventh act:
	say "He will be dead soon enough. You need to get out of here, now.";

Instead of going during the eleventh act:
	say "That is not the way out.";
	stop the action;

Instead of going south during the eleventh act:
	if Victoria is not carried by the player:
		say "You can't leave Victoria lying here.";
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

Instead of listening during the eleventh act:
	say "You hear the frightened breathing of Victoria.".
Instead of smelling during the eleventh act:
	say "The smell of fear permeates this room.".


Chapter 12 - Final act

The final act is a scene. The final act begins when the eleventh act ends.

When the final act begins:
	end the story saying "THE DAILY NEWS[line break]Last night Victoria Cote was found safe in an abandoned house in an undisclosed location. Her family is relieved to have her back. Detective Otto York was first on the location to ensure her safety. The family and police declined to release further details at this time.";

Chapter 13 - Entry point - For Release Only

The dream sequence begins when play begins.

Chapter 14 - Dev testing - not for release

The dream sequence begins when play begins.
