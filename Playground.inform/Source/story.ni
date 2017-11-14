"Playground" by Chris McLean-Wheeler

Use BRIEF room descriptions.

The carrying capacity of the player is 2.

Fruit is a kind of thing. Fruits are always edible.

The Red Room is a room. "There are exits to the north and west., and a door to the south."

The Blue Room is west of the Red Room. "There are exits to the north and east."

A man called Mr Fruit is in the Blue Room. The description of Mr Fruit is "Mr Fruit is [if Mr Fruit is carrying the jar]holding a jar of grapes[otherwise if Mr Fruit is unimpressed]standing here, wishing he could see something cool drive past[otherwise if Mr Fruit is impressed]smiling, having seen something real cool drive past." He is carrying a transparent container called a jar. The carrying capacity of the jar is 1. The jar contains some grapes. The grapes are fruit.

Rule for deciding the concealed possessions: no.
Rule for printing inventory details: stop.

Asking someone for something is speech.

Before taking the jar:
	if Mr Fruit is carrying the jar:
		say "Mr Fruit pulls it out of your reach, wags a finger at you, and says 'Rude!'" instead;

Before taking grapes:
	if Mr Fruit is carrying the jar:
		say "Mr Fruit pulls it out of your reach, wags a finger at you, and says 'Rude!'" instead;
	
Instead of speech when the noun is Mr Fruit:
	if Mr Fruit is not carrying the jar:
		say "Mr Fruit extends his empty palms to you and shrugs.";
	otherwise if the player is carrying two things:
		say "Mr Fruit says 'Oh my, you've got your hands full, I see.'";
	otherwise if the second noun is grapes:
		say "Mr Fruit smiles and hands you the jar of grapes.";
		now the jar is nowhere;
		now the player is carrying the jar;
	otherwise if the second noun is the jar:
		say "Mr Fruit smiles and hands you the jar of grapes.";
		now the jar is nowhere;
		now the player is carrying the jar.

After asking for the jar in the presence of Mr Fruit:
	unless the player is carrying two things:
		say "Mr Fruit smiles and hands you the jar of grapes.";
		now the player is carrying the jar;

The Green Room is north of the Red Room. "There are exits to the west and south."

The Yellow Room is west of the Green Room and north of the Blue Room. "There are exits to the east and south."

The box is an opaque container in the Green Room. "In this room is a medium-sized cardboard box." The description of the box is "A medium-sized box made of cardboard. The bottom is [if unsturdy]not very sturdy.[otherwise]sturdy."

A container can be sturdy or unsturdy. Containers are usually sturdy. The box is unsturdy. The void is sturdy.

The box contains the apple. The apple is a fruit.

A thing called a tiny room is in the Pink Room. The description is "This strange cube appears to be a miniature version of the rooms you've been walking through. It is magenta, and has two doors on opposite sides."

After taking the box:
	if a thing is in the box:
		if unsturdy:
			now all of the things in the box are in the location;
			say "The box's bottom gives, and its contents spill onto the ground."

Before inserting something into the void:
	if the noun is the tiny room:
		say "The miniature room is tugged into the void by an unseen force. As it enters the void, it expands until it is normal room size, with entrances that perfectly align with the rooms on either side.";
		now the tiny room is nowhere;
		now the void is nowhere;
		stop the action;
	otherwise:
		say "What would that accomplish?";
		stop the action.
	
Before inserting something into the box:
	if the player is holding the box:
		if the box is unsturdy:
			say "It drops through the bottom of the box and onto the floor.";		
			now the noun is in the location;
			stop the action.
				
South of the Red Room is a door called the wooden door. The door is closed. South of the wooden door is the Burnt Room.

The Violet Room contains a supporter called table. The printed name of table is "Mr Fruit". "There are exits to the south and east." There is a pear on top of table. The pear is a fruit.

The description of Fruit Table is "Mr Fruit [if table is supporting the pear]is balancing a pear on top of his head. He [otherwise]is facing the eastern wall, away from you."

South of the Burnt Room is the Black Room. The Black Room is dark. "You now see that the this room wasn't actually dark, but simply so black that you couldn't see the exits. These are to the north and east."

Carry out going to the Pink Room:
	If in darkness:
		say "You don't want to wander in the dark." instead.

The Burnt Room is east of the Violet Room. The printed name of the Burnt Room is "Orange Room." It has a description "There are exits to the east and south, and a door to the north."

The wall is a container in the Burnt Room. It is scenery. Inside the wall is a thing called an orange. The orange is a fruit.

The Grey Room is south of the Violet Room. "There are exits to the north, south, and [if the void is in the Grey Room]to the west a void.[otherwise]west."

The Pink Room is east of the Black Room. "There is an exit to the west."

The Beige Room contains a thing called a roll of scotch tape. The Beige Room is west of the Magenta Room. "There is an exit to the east."

The Magenta Room is west of the Grey Room. "There are exits to the west and east."

Understand "tape [something]" as taping.
Taping is an action applying to one thing.

Carry out taping:
	if the player is holding the tape:
		if the thing is the box:
			say "Now the box should withstand the weight of other objects inside it.";
			now the box is sturdy;
		otherwise:
			say "That's not really something you should tape.";
	otherwise:
		say "You don't have any scotch tape."

The void is in the Grey Room. It is a container. It is fixed in place. "There is a void to the west of this room, across which you can see a Green Room."

Before going to the Magenta Room:
	if the void is in the Grey Room:
		instead say "You cannot traverse the void."

The Brown Room is south of the Grey Room. "There are exits to the north and east."

The watermelon and the cherry are in the Brown Room. The watermelon and the cherry are fruits. The cherry is lit.

The description of the cherry is "You are awestruck by how light this fruit is!"

Understand "melon" as the watermelon.

After taking the watermelon:
	say "The melon is extremely heavy!"
	
After taking the cherry:
	say "The cherry is light!"

The White Room is east of the Brown Room. "There is an exit to the west."

The car is a vehicle. The car has a printed name "the banana car". "[if car is in the Yellow Room][otherwise]Here is a wacky banana car, powered by unknown technology. It has a steering column and a gas (?) pedal." The car is in the White Room.

The banana is a fruit.

Mr Fruit is either impressed or unimpressed.

Every turn:
	if the player is in the car:
		if the car is in the Blue Room and Mr Fruit is unimpressed:
			say "Mr Fruit says 'That is one fine banana car, my dude.'";
			now Mr Fruit is impressed;
		if the car is in the Yellow Room:
			say "As you enter this room, the banana car is overwhelmed by the yellowness of its walls and floor. You are thrown from the car, and before your very eyes the car begins to transform into something else...something [italic type]greater[roman type].";
			now the player is in the location;
			now the car is nowhere;
			now the banana is in the Yellow Room;
		otherwise:
			say "'Banana banana!'".